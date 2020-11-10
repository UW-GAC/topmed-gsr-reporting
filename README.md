# Code to render GSR reports for TO1/TA2 contract monthly reporting

## Overview

This code generates a rendered rmarkdown html report in a `reports` directory.

## Usage

To render a report for a given month, run the following command:

```{bash}
Rscript render_report.R <YYYY> <MM>
```

This command will create the `reports` directory if it doesn't already exist and
generate a file named `reports/gsr-report-YYYY-MM.html`, where `YYYY` and `MM`
have been replaced by the year and month.

An example for rendering the October 2020 monthly report is:

```{bash}
Rscript render_report.R 2020 10
```
