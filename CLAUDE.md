# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Does

This is a parametric gear parts generator for the OOBB (Object Oriented Building Blocks) system. It:

1. Defines parts via YAML files in `parts/*/working.yaml`
2. Generates OpenSCAD files and STL meshes from those definitions
3. Generates SVGs and label assets (CorelDraw `.cdr`) for physical labelling
4. Provides a Flask webserver for browsing generated parts and recording manual entries

## Generation Pipeline

Run the full pipeline from the repo root:

```bash
python action_make_all.py          # everything including STL
python action_make_all_no_stl.py   # skip STL generation (faster)
python action_make_scad.py         # SCAD only
python action_make_action_only.py  # actions only (no SCAD/STL)
```

`working.py` is the central orchestrator — it calls `working_oomp_populate`, `working_oomp`, `working_scad`, `working_svg`, and `working_action` in sequence based on flags passed via `kwargs`.

Each `action_make_*.py` script simply calls `working.run(**kwargs)` with different flags enabled.

## Webserver

```bash
python -m webserver.app
# then open http://127.0.0.1:<port>/explore
```

Host and port come from `config_port.yaml` (looked up first at repo root, then under `webserver/`).

### Key config files

| File | Purpose |
|---|---|
| `config_port.yaml` | Host and port |
| `config_part_source.yaml` | Which `parts/` directories to scan |
| `config_ui.yaml` | Preview image priority and image serving settings |
| `config_form_base.yaml` | Default add-item form fields |
| `config_form.yaml` | Local overrides for the form (optional) |

### Application structure

- `webserver/app.py` — Flask app factory, config wiring, blueprint registration
- `webserver/runtime.py` — config reload and cache setup
- `webserver/cache.py` — in-memory parts cache
- `webserver/presentation.py` — shared view helpers (sort, search, URL generation)
- `webserver/routes/explore.py` — `/` and `/explore`
- `webserver/routes/parts.py` — part detail, file serving, on-demand image viewer data
- `webserver/routes/manual.py` — `/add` form
- `webserver/routes/actions.py` — reload and generation triggers
- `webserver/services/parts_repository.py` — loads and indexes parts from disk
- `webserver/services/image_derivatives.py` — resize/cache raster images for thumbnails

### Styling

Design tokens are CSS variables in `webserver/static/style.css` under `:root`. Shared chrome is in `webserver/templates/base.html`. Page JS lives in `webserver/static/explore.js`, `add_item.js`, and `image_viewer.js`.

## Parts Data Model

Each part lives in `parts/<part-id>/`:
- `working.yaml` — primary part definition (taxonomy, metadata, generation params)
- Generated outputs: `.scad`, `.stl`, `.svg`, `.cdr`, preview images

`working_manual.yaml` at repo root holds manually-entered part records queued via the webserver `/add` route.

## Key External Dependencies

- `oobb` — the parametric OOBB library (imported by `working_scad.py`)
- `scad_help` / `svg_help` — helper modules for OpenSCAD and SVG generation
- Flask — webserver
- Jinja2 templates in `source_file/template_jinja/` — label/SVG templates
- CorelDraw `.cdr` templates in `template/` and `source_file/template_jinja/` — for label production

## Roboclick

The `roboclick/` directory contains YAML action definitions and prompt markdown files used to drive automated CorelDraw operations (tracing, card making, etc.). These are not Python scripts.
