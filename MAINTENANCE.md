# Catalogue refresh â€” 14 November 2026

The refresh retains all **50 active part records**, including the existing local
source and geometry edits. Canonical files live under `parts/`. Root discovery
links begin at the first branching category; final selections open part folders.
Each navigation leaf contains only README.md and oomp_id.txt with the full OOMP ID.

The previous navigation occupied **105,444,476 bytes**.
The previous parts occupied **209,894,396 bytes**. The original Git
directory occupied **144,145,947 bytes**. These are logical file sizes.
Original files, including navigation-only variants and dirty work, were backed up
and SHA256 checked before replacement. Recovery data is outside this repository.

## Build changes

The make-all entry uses a synchronous catalogue pipeline. Metadata is merged from
`parts_source`, project CAD recipes are retained, caller filters/options are honoured,
export failures propagate, and render completion precedes README generation. Legacy
GUI label actions and source repopulation are explicit options. ASCII and binary
STL measurement are supported; exports use compact binary STL. Cache identity
includes labels, geometry, Blender and renderer/sheet code. Manual README text
outside generation markers survives regeneration.

The studio sheets show actual exported geometry in angled and top views. Source
and image SHA256 values are in `presentation/catalogue.json`; validation counts are
in `presentation/validation.json`. Regenerate with `python catalogue.py build`.
The shared regression suite covers folder links, taxonomy prefixes, metadata filters,
manual notes, legacy asset preservation, hardware-only records and STL formats.

## History and storage

The reviewed final tree is intended as a new parentless Git snapshot, following the
explicitly authorised one-time history reset. Subsequent changes use normal commits.
Publication checks include indexed artifact hashes and an independent full clone.
Raw render caches, build logs, dependency environments and recovery archives are
excluded. The final measured storage and publication results are recorded in the
external batch report; retained recovery data is not claimed as freed disk space.

All 50 gear records now have production meshes, including 34 previously missing outputs. Sixteen bevel variants pass mesh checks and 128 sampled mating positions. The angle validator bounds negligible float32 STL slivers by both individual and total area; meaningful shallow faces still fail. Retired parts/stash material is preserved externally.

The earlier raised-backing and full-depth bevel archives are also retained in the external recovery directory, with their original files and hashes. They are not used by the active generator.
