# Data inputs

The historical MATLAB workflows use local CSV and Excel files containing CTD,
nutrient, station, season, and sampling-day information from the ENVISION
campaign.

These tabular files are intentionally excluded from Git until their provenance,
redistribution status, and relationship to the corrected 2026 figures have been
verified. The original local files remain available under
`local_archive/original_matlab_material/`.

The sequence datasets cited in the publication are available from the European
Nucleotide Archive:

- `PRJEB36188` — 16S rRNA gene sequences
- `PRJEB36099` — 18S rRNA gene sequences
- `PRJEB36728` (`ERS5513557`–`ERS5513582`) — metatranscriptomes

Future reproducibility work should define a stable input schema and document
which corrected tabular dataset is required by each script.
