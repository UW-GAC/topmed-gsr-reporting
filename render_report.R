# Usage: Rscript render_report.R <year> <month>
#   Example for October 2020: Rscript render_report.R 2020 10

library(rmarkdown)
library(argparser)

argp <- arg_parser("Render rmarkdown report for GSR monthly reporting")
argp <- add_argument(argp, "year", help = "Numeric year for report eg 2020")
argp <- add_argument(argp, "month", help = "Numeric month for report eg 10")
argv <- parse_args(argp)

render_report <- function(year, month) {
  rmarkdown::render(
    'report.Rmd',
    output_file = paste0("reports/gsr-report-", year, '-', month, '.html'),
    params = list(month = month, year = year),
    envir = parent.frame()
  )
}

render_report(argv$year, argv$month)
