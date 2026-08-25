# Data inputs

The historical MATLAB workflows use tabular CTD, nutrient, station, season,
and sampling-day information from the ENVISION campaign.

The four workbooks required to generate the published MATLAB panels are kept in
[`live_scripts/temporal/`](../live_scripts/temporal/) alongside the scripts that
read them:

- `S3_CTD.xlsx` and `S6_CTD.xlsx` contain depth-resolved temperature,
  salinity, fluorescence, turbidity, PAR, and oxygen measurements.
- `S3_Metadata.xlsx` and `S6_Metadata.xlsx` contain nutrient and chlorophyll-a
  measurements by season, day, station, and depth.

They remain next to the live scripts to preserve the original relative
filenames. The inspected tables contain oceanographic observations and no
personal contact information. Other historical spreadsheets and intermediate
tables remain excluded from Git.

The sequence datasets cited in the publication are available from the European
Nucleotide Archive:

- `PRJEB36188` — 16S rRNA gene sequences
- `PRJEB36099` — 18S rRNA gene sequences
- `PRJEB36728` (`ERS5513557`–`ERS5513582`) — metatranscriptomes

Future reproducibility work can convert the live scripts to plain MATLAB files,
define a stable input schema, and validate the generated panels end to end.
