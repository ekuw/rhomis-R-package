% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LivestockCalculations.R
\name{meat_amount_calculation}
\alias{meat_amount_calculation}
\title{Meat amount calculations}
\usage{
meat_amount_calculation(
  data,
  animal_weights_names = livestock_weights$animal,
  animal_weights_conversions = livestock_weights$weight_kg
)
}
\arguments{
\item{data}{RHoMIS data including information on livestock
names, and the number of livestock killed for meat}

\item{animal_weights_names}{The vector which contains the names of the animals}

\item{animal_weights_conversions}{The column which contains the
weights for converting the animals}
}
\value{

}
\description{
A function to calculate the amount of meat
produced based on the number of animals killed,
and some conversion factors which can calculate
how much meat can be collected from an animal which
has been killed.
}
