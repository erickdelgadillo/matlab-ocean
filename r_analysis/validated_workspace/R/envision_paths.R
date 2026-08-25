# Rutas compartidas del proyecto ENVISION.
# Este archivo se carga desde los cuadernos Rmd para evitar rutas absolutas
# dependientes de un ordenador concreto.

find_envision_root <- function(start = getwd()) {
  current <- normalizePath(start, winslash = "/", mustWork = TRUE)

  repeat {
    markers <- file.path(current, c("Calculations", "Datasets"))
    if (all(dir.exists(markers))) {
      return(current)
    }

    parent <- dirname(current)
    if (identical(parent, current)) {
      stop("No se encontró la carpeta raíz de ENVISION desde: ", start)
    }
    current <- parent
  }
}

root_hint <- getOption(
  "envision.project_root",
  Sys.getenv("ENVISION_PROJECT_ROOT", unset = "")
)
project_root <- if (nzchar(root_hint) && dir.exists(root_hint)) {
  normalizePath(root_hint, winslash = "/", mustWork = TRUE)
} else {
  find_envision_root(getwd())
}
calculations_dir <- file.path(project_root, "Calculations")
datasets_dir <- file.path(project_root, "Datasets")
results_dir <- file.path(project_root, "Results")
figures_dir <- file.path(results_dir, "Figures")

dir.create(figures_dir, recursive = TRUE, showWarnings = FALSE)

project_file <- function(...) file.path(project_root, ...)
calculation_file <- function(...) file.path(calculations_dir, ...)
dataset_file <- function(...) file.path(datasets_dir, ...)
result_file <- function(...) file.path(results_dir, ...)
figure_file <- function(...) file.path(figures_dir, ...)

if (requireNamespace("knitr", quietly = TRUE)) {
  knitr::opts_knit$set(root.dir = project_root)
}
