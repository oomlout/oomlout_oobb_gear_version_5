
import copy
import itertools
import math

from oomp_populate_helper import build_oomp_id, write_extras


# Gear geometry helpers (standard involute)
def pitch_diameter(teeth, module):
    return teeth * module

def outer_diameter(teeth, module):
    return module * (teeth + 2)

def root_diameter(teeth, module):
    return module * (teeth - 2.5)


def get_bevel_options():
    """Equal-size 90 degree pairs; each part mates with another copy of itself."""
    from components.oobb_gear_bevel.working import dimensions
    import oobb
    options = []
    for scale, module, backlash in (("big", 1.5, 0.2), ("little", 0.75, 0.15)):
        for teeth in (20, 30, 40, 50, 60):
            for depth in (6, 9):
                part_backlash = backlash
                cone_distance = pitch_diameter(teeth, module) / math.sqrt(2)
                bore_name = "m6" if scale == "big" else "m3"
                bore_radius = max(oobb.gv("hole_radius_" + bore_name, mode) for mode in ("laser", "3dpr", "true"))
                wall = 1.2 if scale == "big" else 0.8
                try:
                    dims = dimensions(teeth=teeth, mod=module, depth=depth, backlash=part_backlash)
                except ValueError:
                    continue
                if dims["inner_root_radius"] < bore_radius + wall:
                    continue
                face_width = dims["face_width"]
                option = {}
                option["teeth"] = teeth
                option["mate_teeth"] = teeth
                option["scale"] = scale
                option["module"] = module
                option["pressure_angle"] = 20
                option["diameter"] = pitch_diameter(teeth, module)
                option["diameter_outer"] = option["diameter"] + 2 * module * math.cos(math.pi / 4)
                option["diameter_root"] = option["diameter"] - 2 * 1.25 * module * math.cos(math.pi / 4)
                option["style"] = "bevel"
                option["depth"] = depth
                option["face_width"] = face_width
                option["shaft_angle"] = 90
                option["pitch_angle"] = 45
                option["cone_distance"] = cone_distance
                option["backlash"] = part_backlash
                option["base_chamfer"] = dims["base_chamfer"]
                option["underside_angle"] = 45
                option["bevel_profile"] = "flat_top_ramped_underside"
                option["notes"] = "Straight 1:1 bevel pair. Mate with identical scale, tooth count and depth. Shared pitch-cone apex; see examples/bevel_gear_90_degree_pair.scad."
                options.append(option)
    return options


def main(**kwargs):

    options = []

    # Gear family: fischertechnik approach
    # big  scale: m=1.5, fits 15 mm primary grid (Z10+Z10 = 15 mm)
    # little scale: m=0.75, fits 7.5 mm primary grid (Z10+Z10 = 7.5 mm)
    # Tooth counts: Z10, Z20, Z30, Z40, Z60
    # Pressure angle: 20 degrees (standard involute)
    teeth_list = [10, 20, 30, 40, 50, 60]
    scales = {
        "big":    {"module": 1.5,  "spacing_mm": 15.0},
        "little": {"module": 0.75, "spacing_mm": 7.5},
    }
    pressure_angle = 20

    style = "standard"
    depth_list = [6]

    for scale, scale_data in scales.items():
        module = scale_data["module"]
        for teeth in teeth_list:
            for depth in depth_list:
                option = {}
                option["teeth"] = teeth
                option["scale"] = scale
                option["module"] = module
                option["pressure_angle"] = pressure_angle
                option["diameter"] = pitch_diameter(teeth, module)
                option["diameter_outer"] = outer_diameter(teeth, module)
                option["diameter_root"] = root_diameter(teeth, module)
                option["style"] = style
                option["depth"] = depth
                options.append(copy.deepcopy(option))

    #extra_styles
    #current match 
    styles = []
    #coupler_flange
    if True:
        current_update = {"style": "coupler_flange"}
        if True:
            teeth_list = [30,40,50,60]
            for teeth in teeth_list:
                current_match = {"scale": "little", "teeth": teeth, "style": "standard", "depth": 6}        
                styles.append({"match": copy.deepcopy(current_match), "update": copy.deepcopy(current_update)})
            teeth_list = [20,30,40,60]
            for teeth in teeth_list:
                current_match = {"scale": "big", "teeth": teeth, "style": "standard", "depth": 6}        
                styles.append({"match": copy.deepcopy(current_match), "update": copy.deepcopy(current_update)})
    #clam_shell
    if True:
        current_update = {"style": "clam_shell", "depth":9}
        if True:
            teeth_list = [30,40,50,60]
            for teeth in teeth_list:
                current_match = {"scale": "little", "teeth": teeth, "style": "standard", "depth": 6}        
                styles.append({"match": copy.deepcopy(current_match), "update": copy.deepcopy(current_update)})
            teeth_list = [20,30,40,50,60]
            for teeth in teeth_list:
                current_match = {"scale": "big", "teeth": teeth, "style": "standard", "depth": 6}        
                styles.append({"match": copy.deepcopy(current_match), "update": copy.deepcopy(current_update)})
        
        #clam_shell bearing
        current_update = {"style": "clam_shell_bearing", "bearing": "606", "depth":9}
        if True:
            teeth_list = [40,50,60]
            for teeth in teeth_list:
                current_match = {"scale": "big", "teeth": teeth, "style": "standard", "depth": 6}        
                styles.append({"match": copy.deepcopy(current_match), "update": copy.deepcopy(current_update)})
    
        current_update = {"style": "clam_shell_bearing", "bearing": "6704", "depth":9}
        if True:
            teeth_list = [50,60]
            for teeth in teeth_list:
                current_match = {"scale": "big", "teeth": teeth, "style": "standard", "depth": 6}        
                styles.append({"match": copy.deepcopy(current_match), "update": copy.deepcopy(current_update)})
    
    
    for option in options:
        for style_data in styles:
            match = style_data["match"]
            update = style_data["update"]
            if all(option.get(k) == v for k, v in match.items()):
                new = option.copy()
                new.update(update)
                options.append(new)


    # Add bevels after spur style expansion so flange/bearing updates stay spur-only.
    options.extend(get_bevel_options())

    ###### populate taxonomy and oobb_details
    for option in options:
        scale = option["scale"]
        teeth = option["teeth"]
        style = option["style"]
        diameter = option["diameter"]
        diameter_oobb = diameter / 15
        diameter_str = (f"{diameter_oobb:.1f}".replace(".", "_") if diameter_oobb != int(diameter_oobb) else str(int(diameter_oobb))) + "_diameter"
        bearing = option.get("bearing", "")
        

        option["taxonomy_1"] = "oobb"
        option["taxonomy_2"] = "part"        
        option["taxonomy_3"] = "gear"
        option["taxonomy_4"] = f"{scale}_scale"
        option["taxonomy_5"] = diameter_str                
        option["taxonomy_6"] = f"{teeth}_teeth"
        option["taxonomy_7"] = f"{style}_style"
        option["taxonomy_8"] = f"{option['depth']}_mm_depth"
        if bearing != "":
            option["taxonomy_9"] = f"{bearing}_bearing"

        oobb_name = f"gear_{scale}_{style}_style"
        option["oobb_details"] = {
            "oobb_name":       oobb_name,
            "teeth":           option["teeth"],
            "module":          option["module"],
            "pressure_angle":  option["pressure_angle"],
            "diameter":        option["diameter"],
            "diameter_outer":  option["diameter_outer"],
            "diameter_root":   option["diameter_root"],
            "scale":           scale,
            "style":           style,
            "depth":           option["depth"],
        }
        if bearing != "":
            option["oobb_details"]["bearing"] = bearing
        if style == "bevel":
            for key in ("mate_teeth", "face_width", "shaft_angle", "pitch_angle", "cone_distance", "backlash", "bevel_profile", "base_chamfer", "underside_angle"):
                option["oobb_details"][key] = option[key]

    if kwargs.get("style_filter"):
        options = [option for option in options if option["style"] == kwargs["style_filter"]]

    # load the options into full list
    extras = []
    for option in options:
        extra = {}
        extra.update(option)
        extras.append(extra)

    ######### add notes from an id string
    import working_oomp_populate_extra_detail
    working_oomp_populate_extra_detail.main(extras=extras)

    if kwargs.get("write_files", True):
        write_extras(extras)
    return extras


# Call main automatically
if __name__ == "__main__":
    main()
