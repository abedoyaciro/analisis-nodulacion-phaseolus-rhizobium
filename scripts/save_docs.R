rmarkdown::render("scripts/analisis_nodulacion.Rmd",
                  output_file = "docs/index.html",
                  output_dir = "docs",
                  envir = new.env()
)