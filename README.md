# MATLAB Ocean

MATLAB code used for oceanographic exploration and visualization associated
with the study **“Coastal upwelling systems as dynamic mosaics of
bacterioplankton functional specialization.”**

## Associated publications

- Original article: Delgadillo-Nuño et al. (2024), *Frontiers in Marine
  Science*, <https://doi.org/10.3389/fmars.2023.1259783>
- Correction: Delgadillo-Nuño et al. (2026), *Frontiers in Marine Science*,
  <https://doi.org/10.3389/fmars.2026.1886620>

The correction updates nitrate and phosphate values used in Figure 1 and
phosphate-related analyses in Figure 5 and supplementary figures. The curated
script `scripts/figures/figure1_corrected.m` is therefore the appropriate
starting point for the corrected Figure 1 workflow.

## Repository structure

```text
matlab-ocean/
├── scripts/
│   ├── figures/          # MATLAB scripts associated with paper figures
│   └── exploratory/      # Exploratory analysis scripts
├── live_scripts/
│   ├── longitudinal/     # ENV1–ENV3 depth/transect analyses
│   └── temporal/         # Station and seasonal analyses
├── third_party/          # External MATLAB utilities and their notices
├── data/
│   └── README.md         # Data provenance and expected local inputs
└── README.md
```

Raw spreadsheets, intermediate tables, generated figures, and the original
working directory are retained locally but excluded from Git. This keeps the
repository focused on code while avoiding accidental redistribution of files
whose publication status has not been independently established.

## Data availability

The sequence data cited by the article are available from the European
Nucleotide Archive under:

- `PRJEB36188` — 16S rRNA gene sequences
- `PRJEB36099` — 18S rRNA gene sequences
- `PRJEB36728` (`ERS5513557`–`ERS5513582`) — metatranscriptomes

See [`data/README.md`](data/README.md) for the local tabular inputs expected by
the historical MATLAB workflows.

## MATLAB requirements

The exact MATLAB release and toolbox requirements still need to be verified.
Several workflows depend on the external `brewermap` and `gridfit` utilities,
which are retained once under `third_party/` with their original notices.

## Status

This repository is a curated reconstruction of historical analysis material.
The scripts have been organized and deduplicated, but end-to-end reproduction
against the corrected publication figures has not yet been validated.
