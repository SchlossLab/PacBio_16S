#write_paper
sh get_references.bash
sh mothur_raw.bash
R CMD BATCH data_wrangling.R
sh mothur_process.bash
R CMD BATCH traxonomy_wrangling.R
R -e 'install.packages("knitr"); library("knitr"); knit2html("PacBioManuscript.Rmd")'
