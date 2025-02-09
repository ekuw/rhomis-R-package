% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ConnectToCentral.R
\name{get_xls_form}
\alias{get_xls_form}
\title{Get XLS Form}
\usage{
get_xls_form(
  central_url,
  central_email,
  central_password,
  projectID,
  formID,
  form_version = 1,
  draft = T
)
}
\arguments{
\item{central_url}{The url of the ODK central server}

\item{central_email}{The email of your ODK central account}

\item{central_password}{The password to your ODK central account}

\item{projectID}{The ID of the project you are looking at. To get a list of project, see the
"get_projects" function}

\item{formID}{The XML form ID from a specific project}

\item{form_version}{The version of the form you are examining. For now
we presume you are looking for the first version of the form}

\item{draft}{Stating whether or not the form is a draft}
}
\value{

}
\description{
Allows the user to get an ODK central xls form
in order to extract any meta-data
}
