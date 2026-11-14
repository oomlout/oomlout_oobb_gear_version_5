import copy
import oobb
import yaml
import os
import math
import scad_help

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    typ = scad_help.get_typ(**kwargs)
    oomp_mode = "project"
    #oomp_mode = "oobb"
    filt = kwargs.get("filter", "")
    build_variables = scad_help.get_build_variables(typ, filter=filt)
    if True:
        kwargs.setdefault("filter", build_variables["filter"])
        kwargs.setdefault("save_type", build_variables["save_type"])
        kwargs.setdefault("navigation", build_variables["navigation"])
        kwargs.setdefault("overwrite", build_variables["overwrite"])
        kwargs.setdefault("modes", build_variables["modes"])
        kwargs["oomp_mode"] = oomp_mode
        kwargs.setdefault("oomp_run", build_variables["oomp_run"])
    parts = get_parts(kwargs, oomp_mode)
    
    kwargs["parts"] = parts

    scad_help.make_parts(**kwargs)

    if kwargs["navigation"]:
        oobb_style = False  
        sort = scad_help.get_navigation_sort(oobb_style=oobb_style)
        scad_help.generate_navigation(sort=sort)

def get_parts(kwargs, oomp_mode):
    parts = []    

    #load parts from parts/folder/working.yaml
    parts_directory = os.path.join(os.path.dirname(__file__), "parts")
    if not os.path.isdir(parts_directory):
        return parts

    for folder in os.listdir(parts_directory):
        folder_path = os.path.join(parts_directory, folder)
        if not os.path.isdir(folder_path):
            continue

        working_yaml_path = os.path.join(folder_path, "working.yaml")
        if not os.path.isfile(working_yaml_path):
            continue

        with open(working_yaml_path, "r", encoding="utf-8") as infile:
            loaded_part = yaml.safe_load(infile)

        if not isinstance(loaded_part, dict):
            continue

        oobb_details = loaded_part.get("oobb_details")
        if not isinstance(oobb_details, dict):
            continue

        part = loaded_part

        part_kwargs = copy.deepcopy(kwargs)
        part_kwargs.update(copy.deepcopy(loaded_part.get("kwargs", {})))
        part_kwargs.update(copy.deepcopy(oobb_details))
        part_kwargs.update(copy.deepcopy(kwargs))
        part["kwargs"] = part_kwargs
        part["oobb_name"] = part.get("oobb_name", oobb_details.get("oobb_name", "default"))

        if oomp_mode == "oobb":
            part["kwargs"]["oomp_size"] = part["oobb_name"]

        parts.append(part)


    return parts

def get_base(thing, **kwargs):

    prepare_print = kwargs.get("prepare_print", False)
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    depth = kwargs.get("depth", 3)                    
    rot = kwargs.get("rot", [0, 0, 0])
    pos = kwargs.get("pos", [0, 0, 0])
    extra = kwargs.get("extra", "")
    


    #add plate
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = f"oobb_plate"    
        p3["depth"] = depth
        #p3["holes"] = True         uncomment to include default holes
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos)         
        p3["pos"] = pos1
        oobb.append_full(thing,**p3)
    
    #add holes seperate
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "p"
        p3["shape"] = f"oobb_holes"
        p3["both_holes"] = True  
        p3["depth"] = depth
        p3["holes"] = "perimeter"
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos)         
        p3["pos"] = pos1
        oobb.append_full(thing,**p3)

    #add a test screw_countersunk
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "p"
        p3["shape"] = f"screw_countersunk"
        p3["depth"] = depth
        p3["radius_name"] = "m3"
        pos1 = copy.deepcopy(pos)         
        pos1[2] += depth
        p3["pos"] = pos1
        p3["m"] = "#"
        oobb.append_full(thing,**p3)

    if prepare_print:
        scad_help.prepare_base_for_print(thing, pos, **kwargs)

def get_hole_cover(thing, **kwargs):

    prepare_print = kwargs.get("prepare_print", False)
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    depth = kwargs.get("depth", 3)                    
    rot = kwargs.get("rot", [0, 0, 0])
    pos = kwargs.get("pos", [0, 0, 0])
    extra = kwargs.get("extra", "")
    
    diameter = kwargs.get("diameter", 10)
    clearance = kwargs.get("clearance", 0.5)
    thickness_wall = 2
    depth_taper = 3
    depth_top = 2
    diameter_top_extra = 10
    radius_gap=6
    diameter_top_taper = 5

    #add cylinder
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = f"oobb_cylinder"    
    dep = depth - depth_taper 
    p3["depth"] = dep
    p3["radius"] = (diameter-clearance)/2
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    pos1[2] += depth_taper + dep/2
    p3["pos"] = pos1
    oobb.append_full(thing,**p3)
    
    #add cylinder taper using radius_1 and radius_2
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = f"oobb_cylinder"
    p3["depth"] = depth_taper
    p3["radius_2"] = (diameter-clearance)/2
    p3["radius_1"] = (diameter+clearance-thickness_wall)/2    
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)
    pos1[2] += depth_taper/2
    p3["pos"] = pos1
    oobb.append_full(thing,**p3)

    #add top cylinder
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = f"oobb_cylinder"
    p3["depth"] = depth_top
    dia = diameter+diameter_top_extra
    p3["radius_2"] = (dia-diameter_top_taper)/2
    p3["radius_1"] = (dia)/2
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)
    pos1[2] += depth-depth_top/2
    p3["pos"] = pos1
    oobb.append_full(thing,**p3)

    

    #add hole
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = f"oobb_cylinder"
    p3["depth"] = depth - depth_top/2
    p3["radius"] = (diameter+clearance-thickness_wall)/2    

    pos1 = copy.deepcopy(pos)
    pos1[2] += depth/2 - depth_top/2
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb.append_full(thing,**p3)

    
    #diameter_top 30
    #add hole_top
    diameter_top_hole = 30
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = f"oobb_cylinder"
    p3["depth"] = depth_top
    p3["radius"] = (diameter_top_hole)/2
    pos1 = copy.deepcopy(pos)
    pos1[2] += depth - depth_top/2

    p3["pos"] = pos1
    p3["m"] = "#"
    oobb.append_full(thing,**p3)

    pos1 = copy.deepcopy(pos)
    pos1[1] += 100



    if prepare_print:
        scad_help.prepare_base_for_print(thing, pos, **kwargs)

    
def get_gear_big_bevel_style(thing, **kwargs):
    kwargs = copy.deepcopy(kwargs)
    kwargs["scale"] = "big"
    kwargs.setdefault("module", 1.5)
    kwargs.setdefault("backlash", 0.2)
    get_gear_bevel_style(thing, **kwargs)


def get_gear_little_bevel_style(thing, **kwargs):
    kwargs = copy.deepcopy(kwargs)
    kwargs["scale"] = "little"
    kwargs.setdefault("module", 0.75)
    kwargs.setdefault("backlash", 0.15)
    get_gear_bevel_style(thing, **kwargs)


def get_gear_bevel_style(thing, **kwargs):
    # The primitive owns the tooth geometry. Use OOBB named holes for fit allowances.
    from components.oobb_gear_bevel.working import dimensions

    teeth = kwargs.get("teeth", 40)
    module = kwargs.get("module", 1.5)
    depth = kwargs.get("depth", 9)
    scale = kwargs.get("scale", "big")
    pos = copy.deepcopy(kwargs.get("pos", [0, 0, 0]))
    rot = copy.deepcopy(kwargs.get("rot", [0, 0, 0]))
    dimension_kwargs = copy.deepcopy(kwargs)
    dimension_kwargs["mod"] = module
    dims = dimensions(**dimension_kwargs)
    radius_name = "m6" if scale == "big" else "m3"
    wall = 1.2 if scale == "big" else 0.8
    bore_radius = max(oobb.gv(f"hole_radius_{radius_name}", mode) for mode in ("laser", "3dpr", "true"))
    if bore_radius + wall > dims["inner_root_radius"]:
        raise ValueError("Bevel gear is too small for its OOBB shaft bore and root wall")

    # Build in local coordinates, then transform teeth and holes together.
    local = {"components": [], "components_objects": [], "components_string": []}

    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_gear_bevel"
    p3["teeth"] = teeth
    p3["mate_teeth"] = kwargs.get("mate_teeth", teeth)
    p3["mod"] = module
    p3["depth"] = depth
    p3["face_width"] = dims["face_width"]
    p3["pressure_angle"] = kwargs.get("pressure_angle", 20)
    p3["backlash"] = kwargs.get("backlash", 0.2)
    p3["shaft_diam"] = 0
    p3["base_chamfer"] = dims["base_chamfer"]
    p3["underside_angle"] = kwargs.get("underside_angle", 45)
    p3["anchor"] = "center"
    p3["pos"] = [0, 0, 0]
    p3["rot"] = [0, 0, 0]
    oobb.append_full(local, **p3)

    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius_name"] = radius_name
    p3["depth"] = depth + 2
    p3["pos"] = [0, 0, -depth / 2 - 1]
    p3["rot"] = [0, 0, 0]
    oobb.append_full(local, **p3)

    # Retain the normal OOBB / OOBE grid, cropped inside the small-end roots.
    # Explicit positions avoid the legacy circular array's world-origin filtering.
    holes = []
    spacing = 7.5
    limit = math.floor(dims["inner_root_radius"] / spacing)
    for x in range(-limit, limit + 1):
        for y in range(-limit, limit + 1):
            if x == 0 and y == 0:
                continue
            hole_name = "m6" if scale == "big" and x % 2 == 0 and y % 2 == 0 else "m3"
            radius = max(oobb.gv(f"hole_radius_{hole_name}", mode) for mode in ("laser", "3dpr", "true"))
            distance = math.hypot(x * spacing, y * spacing)
            if distance + radius + wall <= dims["inner_root_radius"] and distance - radius - bore_radius >= wall:
                holes.append((x * spacing, y * spacing, hole_name))
    for x, y, hole_name in holes:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = hole_name
        p3["depth"] = depth + 2
        p3["pos"] = [x, y, -depth / 2 - 1]
        p3["rot"] = [0, 0, 0]
        oobb.append_full(local, **p3)

    thing["components"].append({
        "type": "rotation", "typetype": "p", "objects": local["components"],
        "pos": pos, "rot": rot, "inclusion": "all",
    })
    thing["components_objects"].extend(local["components_objects"])
    thing["components_string"].extend(local["components_string"])


def get_gear_big_standard_style(thing, **kwargs):
    # big scale: m=1.5, 15 mm grid, M6 shaft bore
    teeth          = kwargs.get("teeth", 20)
    module         = kwargs.get("module", 1.5)
    pressure_angle = kwargs.get("pressure_angle", 20)
    depth          = kwargs.get("depth", 6)
    pos            = kwargs.get("pos", [0, 0, 0])
    diameter       = kwargs.get("diameter", 30)
    diameter_center = kwargs.get("diameter_center", 0)
    shaft_diam     = 0   # M6 clearance bore
    backlash       = 0.2   # mm, suitable for PETG


    #add hole at 0,0
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"]           = "negative"
        p3["shape"]          = "oobb_hole"
        p3["radius_name"]      = "m6"
        pos1 = copy.deepcopy(pos)        
        pos1[2] += -depth/2
        p3["pos"]            = pos1
        oobb.append_full(thing, **p3)

    #add holes
    diameter_oobb = diameter / 15
    diam_clearance = 2
    #if not odd subtract 1
    if diameter_oobb % 2 == 0:
        diameter_oobb += 1
        diam_clearance = 7.5
    

    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"]           = "negative"
        p3["shape"]          = "oobb_holes"
        p3["both_holes"]     = True
        p3["depth"]          = depth
        p3["diameter"]        = diameter_oobb
        p3["diameter_clearance"] = diam_clearance
        p3["width"]          = diameter_oobb
        p3["height"]         = diameter_oobb
        if diameter_center > 0:
            p3["diameter_center"] = diameter_center
            p3["donut"]           = True
        else:
            p3["circle"]          = True
        p3["holes"]             = "all"
        #p3["m"]              = "#"
        pos1 = copy.deepcopy(pos)
        p3["pos"]            = pos1
        oobb.append_full(thing, **p3)
        

    p3 = copy.deepcopy(kwargs)
    p3["type"]           = "positive"
    p3["shape"]          = "oobb_gear_spur"
    p3["teeth"]          = teeth
    p3["mod"]            = module
    p3["pressure_angle"] = pressure_angle
    p3["depth"]          = depth
    p3["shaft_diam"]     = shaft_diam
    p3["backlash"]       = backlash
    p3["pos"]            = copy.deepcopy(pos)
    oobb.append_full(thing, **p3)


def get_gear_big_coupler_flange_style(thing, **kwargs):
    depth = kwargs.get("depth", 6)
    teeth = kwargs.get("teeth", 30)
    diameter_flange = 16
    diameter_flange_stem = 10
    diameter_flange_base = 22
    clearance_flange = 0.5
    depth_flange = 2
    kwargs["diameter_center"] = 30
    get_gear_big_standard_style(thing, **kwargs)
    # large stem bore
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"]           = "negative"
        p3["shape"]          = "oobb_hole"
        p3["depth"]          = depth
        p3["radius"]         = diameter_flange_stem / 2
        pos1 = copy.deepcopy(kwargs.get("pos", [0, 0, 0]))
        pos1[2] += -depth/2
        p3["pos"]            = pos1
        p3["m"]              = "#"
        oobb.append_full(thing, **p3)
    # 4 × M3 holes on 32 mm bolt circle at 45°
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"]           = "negative"
        p3["shape"]          = "oobb_hole"
        p3["radius_name"]    = "m3"
        p3["depth"]          = depth
        poss = []
        pos1 = copy.deepcopy(kwargs.get("pos", [0, 0, 0]))
        pos1[2] += -depth/2
        import math
        radius = diameter_flange / 2
        for i in range(4):
            angle = math.radians(45 + i * 90)
            x = radius * math.cos(angle)
            y = radius * math.sin(angle)
            pos1[0] = x
            pos1[1] = y
            poss.append(copy.deepcopy(pos1))
        p3["pos"]            = poss
        oobb.append_full(thing, **p3)
    # flange recess if gear is large enough (teeth >= 30 → pitch dia >= 45 mm > 32 mm flange)
    if teeth >= 30:
        p3 = copy.deepcopy(kwargs)
        p3["type"]           = "negative"
        p3["shape"]          = "oobb_cylinder"
        p3["depth"]          = depth_flange
        p3["radius"]         = (diameter_flange_base + clearance_flange) / 2
        pos1 = copy.deepcopy(kwargs.get("pos", [0, 0, 0]))
        pos1[2] += -depth/2 + depth_flange/2
        p3["pos"]            = pos1
        oobb.append_full(thing, **p3)


def get_gear_little_coupler_flange_style(thing, **kwargs):
    depth = kwargs.get("depth", 6)
    teeth = kwargs.get("teeth", 30)
    diameter_flange = 16
    diameter_flange_stem = 10.5
    diameter_flange_base = 22
    clearance_flange = 0.5
    depth_flange = 2
    kwargs["diameter_center"] = 25
    get_gear_little_standard_style(thing, **kwargs)
    #add a flange stem diameter hole
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"]           = "negative"
        p3["shape"]          = "oobb_hole"
        p3["depth"]          = depth
        p3["radius"]         = diameter_flange_stem / 2
        pos1 = copy.deepcopy(kwargs.get("pos", [0, 0, 0]))
        pos1[2] += -depth/2
        p3["pos"]            = pos1
        p3["m"]              = "#"
        oobb.append_full(thing, **p3)
    #add 4 holes for coupler flange 16 mm centres rotated 45 degrees
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"]           = "negative"
        p3["shape"]          = "oobb_hole"
        p3["radius_name"]    = "m3"
        p3["depth"]          = depth
        poss = []        
        pos1 = copy.deepcopy(kwargs.get("pos", [0, 0, 0]))
        pos1[2] += -depth/2
        import math
        radius = diameter_flange / 2
        for i in range(4):
            angle = math.radians(45 + i * 90)
            x = radius * math.cos(angle)
            y = radius * math.sin(angle)
            pos1[0] = x
            pos1[1] = y
            poss.append(copy.deepcopy(pos1))        
        p3["pos"]            = poss
       # p3["m"]              = "#"
        oobb.append_full(thing, **p3)
    #if big enough to bury flange do it
    if teeth >= 40:
            p3 = copy.deepcopy(kwargs)
            p3["type"]           = "negative"
            p3["shape"]          = "oobb_cylinder"
            p3["depth"]          = depth_flange
            p3["radius"]         = (diameter_flange_base + clearance_flange) / 2
            pos1 = copy.deepcopy(kwargs.get("pos", [0, 0, 0]))
            pos1[2] += -depth/2 + depth_flange/2
            p3["pos"]            = pos1
            #p3["m"]              = "#"
            oobb.append_full(thing, **p3)

def get_gear_little_standard_style(thing, **kwargs):
    # little scale: m=0.75, 7.5 mm grid, M3 shaft bore
    teeth          = kwargs.get("teeth", 20)
    module         = kwargs.get("module", 0.75)
    pressure_angle = kwargs.get("pressure_angle", 20)
    depth          = kwargs.get("depth", 6)
    pos            = kwargs.get("pos", [0, 0, 0])
    diameter       = kwargs.get("diameter", 15)
    backlash       = 0.15  # mm, suitable for PETG at smaller scale
    diameter_center = kwargs.get("diameter_center", 0)  # mm, suitable for PETG at smaller scale

    # M3 centre hole
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"]        = "negative"
        p3["shape"]       = "oobb_hole"
        p3["radius_name"] = "m3"
        pos1 = copy.deepcopy(pos)
        pos1[2] += -depth/2
        p3["pos"]         = pos1
        oobb.append_full(thing, **p3)

    # OOBB holes (7.5 mm grid)
    diameter_oobb = diameter / 7.5
    diam_clearance = 2
    if diameter_oobb % 2 == 0:
        diameter_oobb += 1
        diam_clearance = 7.5

    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"]               = "negative"
        p3["shape"]              = "oobe_holes"
        p3["both_holes"]         = True
        p3["depth"]              = depth
        p3["diameter"]           = diameter_oobb
        p3["diameter_clearance"] = diam_clearance
        p3["width"]              = diameter_oobb
        p3["height"]             = diameter_oobb
        if diameter_center > 0:
            p3["diameter_center"] = diameter_center
            p3["donut"] = True
        else:
            p3["circle"]             = True
        p3["holes"]              = "all"
        pos1 = copy.deepcopy(pos)
        p3["pos"]                = pos1
        p3["m"]                 = "#"
        oobb.append_full(thing, **p3)

    p3 = copy.deepcopy(kwargs)
    p3["type"]           = "positive"
    p3["shape"]          = "oobb_gear_spur"
    p3["teeth"]          = teeth
    p3["mod"]            = module
    p3["pressure_angle"] = pressure_angle
    p3["depth"]          = depth
    p3["shaft_diam"]     = 0
    p3["backlash"]       = backlash
    p3["pos"]            = copy.deepcopy(pos)
    oobb.append_full(thing, **p3)


def _add_clamshell_screws(thing, **kwargs):
    """Countersink cones + hex nut traps at explicit 7.5 mm-grid XY positions.

    The M3 clearance bore is already provided by oobb_holes at each position,
    so only the countersink cone (outer face) and hex nut trap (flat mating
    face) are added here.  Features are cut for BOTH halves (sign ±1) so the
    180° X-axis flip in _prepare_clamshell_for_print produces an identical
    mirror and the two printed halves are interchangeable.

    positions: list of [local_x, local_y] pairs — each coordinate a multiple
    of 7.5 mm so they coincide with existing oobb_holes M3 bores.
    """
    pos      = kwargs.get("pos", [0, 0, 0])
    depth    = kwargs.get("depth", 9)
    diameter = kwargs.get("diameter", 30)
    head_r   = 3.0    # M3 DIN7991 countersink head radius (6 mm dia head)
    bore_r   = 1.7    # M3 clearance bore radius — matches oobb_holes
    cs_depth = 1.5    # countersink cone depth
    nut_hex_r = 3.35  # M3 hex nut circumradius (5.5 mm A/F + 0.2 mm tolerance)
    nut_depth = 3.0   # nut-trap depth (2.4 mm nut + 0.6 mm clearance)
    half     = depth / 2


    shift_1 = 6
    shift_2 = 11.5
    shift_3_a = 7.5
    shift_3_b = 15
    shift_4_a = 22.5
    shift_4_b = 15
    shift_5_a = 22.5
    shift_5_b = 22.5
    
    #default
    #oobb 2
    positions = [[shift_1, shift_1], [-shift_1, shift_1], [-shift_1, -shift_1], [shift_1, -shift_1]]
    
    #oobb 3
    if diameter > 30 and diameter <= 45:
        positions = [[shift_2, shift_2], [-shift_2, shift_2], [shift_2, -shift_2], [-shift_2, -shift_2]]
    #oobb 4
    if diameter > 45 and diameter <= 60:
        positions = [[shift_3_a, shift_3_b], [-shift_3_a, -shift_3_b], [-shift_3_b, shift_3_a], [shift_3_b, -shift_3_a]]
    #oobb 5
    if diameter > 60 and diameter <= 75:
        positions = [[shift_4_a, shift_4_b], [-shift_4_a, -shift_4_b], [-shift_4_b, shift_4_a], [shift_4_b, -shift_4_a]]
    #oobb 6
    if diameter > 75:
        positions = [[shift_5_a, shift_5_b], [-shift_5_a, -shift_5_b], [-shift_5_b, shift_5_a], [shift_5_b, -shift_5_a]]
        positions.extend([[0, 0]])

    bearing = kwargs.get("bearing", "")
    if bearing == "6704":
        shif = 4.75
        positions.extend([[shif,shif,360/12],[-shif,-shif,-360/12]])

    for position in positions:
        lx = position[0]
        ly = position[1]
        lrot = 0
        if len(position) > 2:
            lrot = position[2]
        sx = pos[0] + lx
        sy = pos[1] + ly
        # Countersink cone at the outer (print-bed-down) face
        p = copy.deepcopy(kwargs)
        p["type"]     = "negative"
        p["shape"]    = "oobb_screw_countersunk"
        p["radius_name"] = "m3"
        p["depth"]    = depth
        pos1 = copy.deepcopy(pos)
        pos1[0] = sx
        pos1[1] = sy
        pos1[2] += depth/2
        p["pos"]      = pos1
        p["m"] = "#"
        rot1 = copy.deepcopy(kwargs.get("rot", [0, 0, 0]))        
        rot1[2] += 0
        p["rot"]      = rot1
        p["nut"] = True
        oobb.append_full(thing, **p)

            


def _prepare_clamshell_for_print(thing, **kwargs):
    """Duplicate gear, flip 180° around X, then slice at z = pos[2].

    Uses diameter_outer to compute the X separation so the two halves never
    overlap in the SCAD file, regardless of gear size.
    """
    pos = kwargs.get("pos", [0, 0, 0])
    diameter_outer = kwargs.get("diameter_outer", 0)
    offset_x = diameter_outer + 20   # 20 mm gap between the two print bodies

    components_second = copy.deepcopy(thing["components"])
    thing["components"].append({
        "type":     "rotation",
        "typetype": "p",
        "pos":      [pos[0] + offset_x, pos[1], pos[2]],
        "rot":      [0, 180, 0],
        "objects":  components_second,
    })

    p3 = copy.deepcopy(kwargs)
    p3["type"]  = "n"
    p3["shape"] = "oobb_slice"
    p3["pos"]   = copy.deepcopy(pos)
    #p3["m"] = "#"
    oobb.append_full(thing, **p3)


def get_gear_big_clam_shell_style(thing, **kwargs):
    """Big-scale (m=1.5) gear split into two printable halves.

    Each half carries 4× M3 countersunk holes with hex nut traps at the flat
    mating face so the two halves bolt together from both outer surfaces.
    Produces a single SCAD file with both halves laid out side-by-side.
    """
    depth          = kwargs.get("depth", 9)
    diameter       = kwargs.get("diameter", 30)
    diameter_outer = kwargs.get("diameter_outer", diameter + 3)
    pos            = kwargs.get("pos", [0, 0, 0])
    slice          = kwargs.get("slice", True)

    get_gear_big_standard_style(thing, **kwargs)

    # Diagonal 7.5 mm grid — coincides with both_holes M3 positions in oobb_holes.
    # r ≈ 10.6 mm keeps adequate wall from the M6 shaft bore (r ≈ 3.3 mm) and
    # from the outer edge of the smallest big-scale clam_shell gear (Z20, r = 16.5 mm).
    
    _add_clamshell_screws(thing, **kwargs)
    if slice:
        _prepare_clamshell_for_print(thing, **kwargs)


def get_gear_big_clam_shell_bearing_style(thing, **kwargs):
    bearing = kwargs.get("bearing", "")
    pos = kwargs.get("pos",[0,0,0])
    diameter = kwargs.get("diameter", 30)/15
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    depth = kwargs.get("depth", 9)
    
    #clearance in the middle
    if True:
        diameter_center = 0
        if bearing == "606":
            diameter_center = 20
        elif bearing == "6704":
            diameter_center = 32
        kwargs["diameter_center"] = diameter_center
    


    kwargs["slice"] = False

    get_gear_big_clam_shell_style(thing, **kwargs)
    #add a bearing
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_bearing"
    p3["bearing_size"] = bearing
    pos1 = copy.deepcopy(pos)
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb.append_full(thing, **p3)

    
    #if 6704 bearing add holes for width 3
    if bearing == "6704":
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_holes"
        p3["both_holes"] = True
        p3["depth"] = depth
        p3["diameter"] = 3        
        p3["width"] = 3
        p3["height"] = 3
        p3["holes"] = "all"
        p3["circle"] = True
        pos1 = copy.deepcopy(pos)
        p3["pos"] = pos1
        #p3["m"] = "#"
        oobb.append_full(thing, **p3)


    _prepare_clamshell_for_print(thing, **kwargs)

def get_gear_little_clam_shell_style(thing, **kwargs):
    """Little-scale (m=0.75) gear split into two printable halves.

    Each half carries 4× M3 countersunk holes with hex nut traps at the flat
    mating face so the two halves bolt together from both outer surfaces.
    Produces a single SCAD file with both halves laid out side-by-side.
    """
    depth          = kwargs.get("depth", 9)
    diameter       = kwargs.get("diameter", 22.5)
    diameter_outer = kwargs.get("diameter_outer", diameter + 1.5)
    pos            = kwargs.get("pos", [0, 0, 0])

    get_gear_little_standard_style(thing, **kwargs)

    # Cardinal 7.5 mm grid — coincides with oobb_holes M3 positions.
    # Diagonal (±7.5, ±7.5) at r ≈ 10.6 mm would push the hex nut trap outside
    # the Z30 little gear body (outer_r = 12 mm), so cardinal r = 7.5 mm is used
    # for all little-scale sizes.    
    _add_clamshell_screws(thing, **kwargs)
    _prepare_clamshell_for_print(thing, **kwargs)


if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)
