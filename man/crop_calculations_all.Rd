% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CropCalculations.R
\name{crop_calculations_all}
\alias{crop_calculations_all}
\title{Crop Calculations All}
\usage{
crop_calculations_all(
  data,
  crop_yield_units_all = crop_yield_units$unit,
  crop_yield_unit_conversions_all = crop_yield_units$conversion,
  crop_income_units_all = crop_price_units$unit,
  crop_income_unit_conversions_all = crop_price_units$conversion
)
}
\arguments{
\item{data}{RHoMIS crop loop data}

\item{crop_yield_units_all}{Units of crop yield}

\item{crop_yield_unit_conversions_all}{Conversion factors to convert crop yield units
to kg}

\item{crop_income_units_all}{Units of crop income}

\item{crop_income_unit_conversions_all}{Conversion factors for crop
income units}
}
\value{

}
\description{
A single function for conducting all of the crop calculations
}
