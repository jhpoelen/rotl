% Generated by roxygen2 (4.0.2): do not edit by hand
\name{gol_about}
\alias{gol_about}
\title{Information about the tree of life}
\usage{
gol_about()
}
\value{
Some JSON
}
\description{
Basic information about the graph
}
\details{
Returns summary information about the entire graph database, including identifiers for the
taxonomy and source trees used to build it.
}
\examples{
req <- gol_about()
}
