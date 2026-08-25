# Validated ENVISION workspace

This directory is a code-only snapshot of the active ENVISION R workflow
validated in August 2026. It contains 10 R Markdown documents and two shared R
utilities. Obsolete scripts, generated figures, presentations, archives, and
research data are intentionally excluded.

## Data location

The scripts expect an ENVISION data root containing `Calculations/`,
`Datasets/`, and `Results/`. Point to an external copy before rendering:

```r
Sys.setenv(ENVISION_PROJECT_ROOT = "/path/to/ENVISION")
```

On the curated local workstation, the complete data workspace is stored under
the Git-ignored `local_archive/ENVISION/` directory. A GitHub clone does not
contain the large inputs.

## Recommended execution

The current main analysis is `ENVISION_minor_revisions.Rmd`. The dependent
figure modules can be run in the same R session with:

```r
setwd("r_analysis/validated_workspace")
source("R/run_envision_figures.R")
run_envision_figures()
```

Use `run_envision_figures(include_rda = TRUE)` to include the computationally
expensive RDA workflow. Its production default is 999 permutations.

The standalone workflows are:

- `Ultim GRAFICA ENVISION.Rmd`
- `Datasets/CLR_and_nMDS.Rmd`
- `Calculations/Matlab/Temporal_coloumap__plots/Nueva carpeta/Separacion de los dias.Rmd`
