% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aMNLFA_itemplots.R
\name{aMNLFA.itemplots}
\alias{aMNLFA.itemplots}
\title{aMNLFA item plotting function}
\usage{
aMNLFA.itemplots(input.object)
}
\arguments{
\item{input.object}{The aMNLFA object (created using the aMNLFA.object function) which provides instructions for the function.}
}
\description{
This function generates plots of item endorsement by time, and by each covariate. This is necessary for determining which covariates to use in the MNLFA.
}
\examples{
\dontrun{
 wd <- tempdir()
 first<-paste0(system.file(package='aMNLFA'),"/examplefiles")
 the.list <- list.files(first,full.names=TRUE)
 file.copy(the.list,wd,overwrite=TRUE)
 ob <- aMNLFA::aMNLFA.object(dir = wd, 
 mrdata = xstudy, 
 indicators = paste0("BIN_", 1:12),
 catindicators = paste0("BIN_", 1:12), 
 meanimpact = c("AGE", "GENDER", "STUDY"), 
 varimpact = c("AGE", "GENDER", "STUDY"), 
 measinvar = c("AGE", "GENDER", "STUDY"),
 factors = c("GENDER", "STUDY"),
 ID = "ID",
 thresholds = FALSE)
 
 aMNLFA.itemplots(ob)
 }
}
\keyword{MNLFA}
