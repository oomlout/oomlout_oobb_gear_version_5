# Gear System Research — Toy Building Block Reference

*Source: ChatGPT Deep Research, oobb_gear project, 2026-06-29*
*Original query: gear design for a 15 mm / 7.5 mm bolt-based construction system using M6 and M3 bolts, generated with OpenSCAD*

> **Decision (2026-06-29):** Going with the **fischertechnik approach** — module 1.5, tooth counts **Z10, Z20, Z30, Z40, Z60**. This gives exact centre distances on the 15 mm / 7.5 mm grid throughout.
>
> **Two scales (2026-06-29):**
> - **big** — primary spacing 15 mm (main OOBB grid)
> - **little** — primary spacing 7.5 mm (sub-grid scale)

---

## Executive Summary

**Best precedent: fischertechnik**, not LEGO or Meccano. Fischertechnik is explicitly built around 15 mm structural units, 4 mm axles, and module 1.5 gears/racks — yielding exact, repeatable centre distances on a 15 mm / 7.5 mm grid.

**Recommended strategy: dual module family**

| Family | Module | Primary use |
|---|---|---|
| Primary | m = 1.5 | Grid-native gears, racks, worms — M6-compatible from ~Z20 up |
| Compact | m = 1.25 | Elegant low-ratio layout, 12/24/36/48 tooth series — M3-preferred |
| Adapter | m = 1.0 | LEGO-compatibility only — not for main structural use |

---

## Toy System Comparison

### LEGO Technic
- **Module:** m = 1.0 (officially published for Z8 gear)
- **Tooth counts:** Spur 8, 16, 24, 40; bevel/double-bevel 12, 20, 36; crown 24; rack 10 and 14; worm; differential 28
- **Grid fit:** Poor for 15 mm. 8+24 → 16 mm (+1 mm off); 24+24 → 24 mm (+1.5 mm off). Only 20+40 → 30 mm lands exactly.
- **Notes:** Best approached as specific part geometries (LDraw primitives), not a generic involute family. LEGO does not publish pressure angle officially.

### Meccano
- **Pitch system:** 38 DP (≈ m 0.668), 1/2 inch (12.7 mm) hole spacing — **imperial, not metric**
- **Tooth counts:** Pinions 15, 19, 25; spur 38, 50, 57, 60, 95, 133; bevel 16, 26, 48; contrate 25, 50; worm; helical
- **Grid fit:** Very poor. Centres fall on 1" or 1.5" imperial increments, not 15 mm metric.
- **Notes:** Useful only as a reference for ratios and gear type breadth, not geometry.

### K'NEX Classic
- **Module:** Not officially published. Community measurements imply **m ≈ 1.55** (very close to m = 1.5)
- **Tooth counts:** 14, 34, 82 (education); 8-tooth rack pinion (Exploring Machines)
- **Approximate pitch diameters:** 14T → ~21.6 mm; 34T → ~52.6 mm; 82T → ~126.8 mm
- **Grid fit:** Near-match. 14+34 → ~37.1 mm (vs 37.5); 14+82 → ~74.2 mm (vs 75); 34+82 → ~89.7 mm (vs 90)
- **Bore:** Classic ~6 mm round holes; Micro K'NEX ~3 mm
- **Notes:** Interesting near-match to m = 1.5. Not exact but centres often fall close to 7.5 mm sub-grid.

### Fischertechnik ⭐ Best match
- **Module:** m = 1.5 (officially published)
- **Tooth counts:** Z10, Z15, Z20, Z30, Z40/32 compound; bevel; worm; racks at 30 and 60 mm (m = 1.5); separate m = 0.5 differential/rack subset
- **Axles:** 4 mm (V-Achse)
- **Grid fit:** Exact on 15 mm / 7.5 mm grid:
  - Z10 + Z10 → **15 mm exact**
  - Z10 + Z20 → **22.5 mm exact**
  - Z10 + Z30 and Z20 + Z20 → **30 mm exact**
  - Z20 + Z40 and Z30 + Z30 → **45 mm exact**

### VEX IQ
- **Tooth counts:** Spur 12, 24, 36, 48, 60; crown 36; worm gear add-on
- **Module:** Not published. Official CAD available for derivation.
- **Notes:** Treat as a separate ecosystem unless deriving from official CAD downloads.

---

## Recommended OpenSCAD Gear Families

### Primary family — m = 1.5

| Pair | Centre distance | Grid alignment |
|---|---|---|
| Z20 + Z20 | 30 mm | 2 × 15 mm ✓ |
| Z20 + Z40 | 45 mm | 3 × 15 mm ✓ |
| Z30 + Z30 | 45 mm | 3 × 15 mm ✓ |
| Z20 + Z60 | 60 mm | 4 × 15 mm ✓ |
| Z10 + Z20 | 22.5 mm | 3 × 7.5 mm ✓ |

**Start with:** Z20, Z30, Z40, Z60. Add Z10 after testing compact pinion viability.

### Compact family — m = 1.25

| Pair | Centre distance | Grid alignment |
|---|---|---|
| Z12 + Z12 | 15 mm | 1 × 15 mm ✓ |
| Z12 + Z24 | 22.5 mm | 3 × 7.5 mm ✓ |
| Z12 + Z36 | 30 mm | 2 × 15 mm ✓ |
| Z24 + Z24 | 30 mm | 2 × 15 mm ✓ |
| Z24 + Z48 | 45 mm | 3 × 15 mm ✓ |

**Start with:** Z12, Z24, Z36, Z48.

### Adapter family — m = 1.0 (LEGO adapter only)

**Start with:** Z10, Z20, Z30 for grid-native counts; LEGO-style 8/12/16/20/24/36/40 only for adapter parts.

---

## OpenSCAD Parameter Recommendations

| Parameter | Primary suggestion | Notes |
|---|---|---|
| Module | 1.5 | Use 1.25 for compact family; 1.0 for LEGO adapter only |
| Pressure angle | 20° | Try 25° only for compact pinions needing thicker tooth roots |
| Face width | 6–8 mm (M3); 8–12 mm (M6) | Go wider for worms and high-load |
| Bore (M3 printed clearance) | 3.3–3.5 mm | Adjust for press-fit after calibration |
| Bore (M6 printed clearance) | 6.5–6.8 mm | Adjust for press-fit after calibration |
| Backlash (PETG/PA) | 0.15–0.20 mm tangential | Tune after first print |
| Backlash (PLA/ABS) | 0.20–0.30 mm tangential | Tune after first print |
| Addendum / dedendum | Standard full depth | Special-case adapter gears later |
| Hub design | Separate thick hub from tooth ring | Essential for M6; strongly recommended for M3 |

### Core OpenSCAD formulas

```scad
// Core gear geometry
function pitch_d(z, m) = z * m;
function centre_distance(z1, z2, m) = m * (z1 + z2) / 2;

// Standard full-depth approximations
function outer_d(z, m, x=0) = m * (z + 2 + 2*x);      // x = profile shift coefficient
function root_d(z, m, x=0)  = m * (z - 2.5 + 2*x);    // assumes dedendum ≈ 1.25m
function circular_pitch(m)  = PI * m;

// Grid helpers
function steps_7p5(z1, z2, m) = centre_distance(z1, z2, m) / 7.5;
function steps_15(z1, z2, m)  = centre_distance(z1, z2, m) / 15;

// Family presets
m_primary = 1.5;
z_primary = [20, 30, 40, 60];

m_compact = 1.25;
z_compact = [12, 24, 36, 48];

m_lego = 1.0;
z_lego = [8, 12, 16, 20, 24, 36, 40];
```

### Parametric gear stub

```scad
module gear_spec(
    name="gear",
    z=20,
    m=1.5,
    pa=20,
    face=8,
    bore=6.6,
    backlash=0.20,
    profile_shift=0,
    hub_d=16,
    hub_t=10
){
    pd = pitch_d(z, m);
    od = outer_d(z, m, profile_shift);
    rd = root_d(z, m, profile_shift);

    echo(str(name, ": z=", z,
             " m=", m,
             " pa=", pa,
             " pd=", pd,
             " od=", od,
             " rd=", rd,
             " bore=", bore,
             " face=", face,
             " backlash=", backlash));

    // Replace with your preferred involute gear generator.
}
```

---

## Rack Design Notes

- Use the same module as the mating pinion
- m = 1.5 rack tooth pitch = π × 1.5 ≈ 4.712 mm (tooth positions ≠ structural hole positions)
- Give racks elongated mounting slots or repeated hole patterns at 15 mm and 7.5 mm increments
- Let the tooth train float independently of the structural lattice — do not force tooth pitch to align with bolt grid

---

## Hub and Bore Strategy

- Prefer **split clamp hub**, **double-D bore**, or **captured hex-nut clamp** over classical keyways
- M6 through-hole clearance: 6.4–6.6 mm nominal, +0.1 to +0.2 mm for FDM print undersize
- M3 through-hole clearance: 3.2–3.4 mm nominal, +0.1 to +0.2 mm for FDM print undersize
- Do not rely on bolt thread flanks as drive profile — use clamping or keyed interface for torque

---

## Material Recommendations

| Material | Use case | Notes |
|---|---|---|
| PLA | Concept prototypes, fit checks | Not for final gears — softens >60 °C |
| PETG | Best default for real-use parts | Good wear resistance, low warp, strong layer adhesion |
| Nylon / PA | Mature final gears | Best long-term performance; hygroscopic, needs drying and enclosure |
| ASA | Outdoor or hot-service gears | More warp-prone than PETG; better UV stability than ABS |

**Recommended print ladder:** PLA/PETG for geometry validation → PETG for real prototypes → PA/nylon when tooth geometry and centres are settled.

---

## Validation Test Plan

### Test prints to run first

| Test print | Purpose | Measure |
|---|---|---|
| Single reference gear | Validate tooth family, bore, hub | OD, bore diameter, face width, hub OD |
| Same-size meshing pair | Validate smoothness and backlash | Actual centre distance, free rotation, audible roughness, backlash by hand |
| Stepped-centre coupon | Find best practical centre distance | Test nominal ± 0.05, 0.10, 0.15 mm |
| Small/large ratio pair | Validate ratio and root strength | Running smoothness under light load, tooth-root stress, backlash |
| Rack-and-pinion strip | Validate linear motion | Travel per revolution, binding, tooth skipping |

### Pass criteria for "good enough to expand"

1. Meshes across one full revolution without obvious periodic tight spots
2. Bore consistent enough that swapping two gears does not change behaviour
3. Selected centre distance reproducible across two prints
4. First visible wear on tooth flanks, not hub cracking or bolt gouging

### Measurements to record every iteration

- Printed OD vs CAD OD (extrusion/shrink bias)
- Printed bore vs CAD bore (shaft slop and hub cracking risk)
- Best-running centre distance
- Hand-measured backlash angle
- Noise and torque ripple
- Wear marks after 100–500 revolutions
- Bolt straightness / washer stack used

---

## Starting Test Sets

- **m = 1.5:** Begin with Z20/Z20, Z20/Z40, Z10/Z20
- **m = 1.25:** Begin with Z12/Z12, Z12/Z24, Z24/Z36
