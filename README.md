# MATLAB Ocean

MATLAB code and oceanographic inputs used to generate environmental profile
panels associated with **“Coastal upwelling systems as dynamic mosaics of
bacterioplankton functional specialization.”**

## Associated publications

- Original article: Delgadillo-Nuño et al. (2024), *Frontiers in Marine
  Science*, <https://doi.org/10.3389/fmars.2023.1259783>
- Correction: Delgadillo-Nuño et al. (2026), *Frontiers in Marine Science*,
  <https://doi.org/10.3389/fmars.2026.1886620>

The 2026 correction notice replaces Supplementary Figures 3 and 5. The MATLAB
workflows documented here correspond to Supplementary Figures 1 and 2 and are
not identified as affected by that correction.

## Published MATLAB workflow

The final article material was compared with the historical ENVISION working
directory to identify the scripts that generated the published CTD and nutrient
profile panels.

| Published figure | Content | Live scripts | Input workbooks |
| --- | --- | --- | --- |
| Supplementary Figure 1 | Temperature, PAR, chlorophyll-a, salinity, and turbidity profiles | `station3_ctd.mlx`, `station6_ctd.mlx` | `S3_CTD.xlsx`, `S6_CTD.xlsx` |
| Supplementary Figure 2 | Ammonium, nitrite, nitrate, silicate, and phosphate profiles | `station3_nutrients.mlx`, `station6_nutrients.mlx` | `S3_Metadata.xlsx`, `S6_Metadata.xlsx` |

Station 3 is the offshore station and Station 6 is the coastal station. The
four input workbooks are kept next to the live scripts because the historical
code reads them by relative filename. Checksums and a more detailed mapping are
available in [`live_scripts/temporal/README.md`](live_scripts/temporal/README.md).
Files outside this table are retained as historical or exploratory material and
are not claimed to reproduce figures from the article.

## Running the published workflow

Start MATLAB in the repository root and prepare the historical dependency path:

```matlab
repoRoot = pwd;
addpath(fullfile(repoRoot, 'third_party'));
cd(fullfile(repoRoot, 'live_scripts', 'temporal'));
```

Open and run the four live scripts listed above. They read the included Excel
workbooks and export the individual panels as 300 dpi PNG files. Generated PNG
files are intentionally ignored by Git.

## Repository structure

```text
matlab-ocean/
├── live_scripts/
│   ├── temporal/         # Published temporal profiles and exact inputs
│   └── longitudinal/     # Additional ENV1–ENV3 transect analyses
├── scripts/
│   ├── figures/          # Other historical figure scripts
│   └── exploratory/      # Exploratory analyses
├── third_party/          # External MATLAB utilities and notices
├── data/                 # Data provenance documentation
└── README.md
```

## Data availability

The four compact oceanographic workbooks required by the published MATLAB
workflow are included. Other raw spreadsheets, intermediate tables, generated
figures, and the full historical working directory remain excluded from Git.

The sequence data cited by the article are available from the European
Nucleotide Archive under:

- `PRJEB36188` — 16S rRNA gene sequences
- `PRJEB36099` — 18S rRNA gene sequences
- `PRJEB36728` (`ERS5513557`–`ERS5513582`) — metatranscriptomes

See [`data/README.md`](data/README.md) for provenance and scope notes.

## Requirements and validation status

The published live scripts use `xlsread`, `gridfit`, and `exportgraphics`.
`gridfit` is retained under `third_party/` with its original attribution.

The selected live scripts match the historical files byte for byte, their input
schemas were inspected, and their output names and panel contents were matched
to the final supplementary figures. End-to-end execution has not yet been
repeated because MATLAB is not installed in the current curation environment.
