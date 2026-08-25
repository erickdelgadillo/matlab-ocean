`%||%` <- function(x, y) {
  if (is.null(x) || length(x) == 0L || is.na(x) || !nzchar(x)) y else x
}

.runner_file <- normalizePath(
  sys.frame(1)$ofile %||% "R/run_envision_figures.R",
  mustWork = TRUE
)
source(file.path(dirname(.runner_file), "envision_paths.R"))
rm(.runner_file)

run_envision_figures <- function(
    main = c("minor_revisions", "definitive_2023"),
    include_rda = FALSE,
    output_dir = result_file("Reports")) {
  main <- match.arg(main)

  main_script <- switch(
    main,
    minor_revisions = "ENVISION_minor_revisions.Rmd",
    definitive_2023 = "ENVISION_Script_Bacterioplankton_definitive_2023.Rmd"
  )

  modules <- c(
    "EVAS_2.Rmd",
    "figur EVA.Rmd",
    "Datasets/ENVISION/TPM+1.Rmd",
    "Datasets/ENVISION/sdgzrd.Rmd"
  )

  if (isTRUE(include_rda)) {
    modules <- c(modules, "Datasets/Los RDAs_correctos.Rmd")
  }

  dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
  Sys.setenv(ENVISION_PROJECT_ROOT = project_root)

  shared_environment <- new.env(parent = globalenv())
  scripts <- c(main_script, modules)

  for (script in scripts) {
    message("Procesando: ", script)
    rmarkdown::render(
      input = project_file(script),
      output_dir = output_dir,
      envir = shared_environment,
      quiet = FALSE,
      clean = TRUE
    )
  }

  invisible(file.path(output_dir, sub("[.]Rmd$", ".html", basename(scripts))))
}
