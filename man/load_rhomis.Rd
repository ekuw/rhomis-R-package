% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CleanRawData.R
\name{load_rhomis}
\alias{load_rhomis}
\title{Load RHoMIS}
\usage{
load_rhomis(path)
}
\arguments{
\item{path}{The path to the RHoMIS file. If}
}
\value{
Returns a tibble of the RHoMIS dataset.
}
\description{
Reads the RHoMIS data from a local file.
}
\examples{
path <- "C:/User/Desktop/RHoMIS_Project/Data/raw_data.csv"
# data <- load_rhomis(path)
# Data will be loaded in tibble format
}
