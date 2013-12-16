\name{ccp}
\docType{data}
\alias{ccp}
\title{Anti-cyclic Citrullinated Peptide Antibody}
\description{
  Data from Nishimura (2007) of anti-cyclic citrullinated peptide antibody (anti-CCP) which report the four frequencies of the classification outcomes.
}
\usage{ccp}
\format{
   A data frame containing 7 variables and 37 observations. The variables are:
\tabular{lll}{
  \bold{test} \tab \code{factor} \tab name of the screening test \cr 
  \bold{study_id} \tab \code{factor} \tab primary study name \cr
  \bold{generation} \tab \code{factor} \tab CCP generation used in the study, can be used as covariate. \cr
  \bold{TP} \tab \code{numeric} \tab number of true positives \cr
  \bold{FN} \tab \code{numeric} \tab number of false negatives \cr
  \bold{FP} \tab \code{numeric} \tab number of false positives \cr
  \bold{TN} \tab \code{numeric} \tab number of true negatives 
  
}
}
   
  
\source{Cochrane Handbook for Systematic Reviews of Diagnostic Test Accuracy, Chapter 10}
\references{
  Nishimura K, Sugiyama D, Kogata Y, Tsuji G, Nakazawa T, Kawano S, Saigo K, Morinobu A, Koshiba M, Kuntz KM, Kamae I, Kumagai S. Meta-analysis:diagnostic accuracy of anti-cyclic citrullinated peptide antibody and rheumatoid factor for rheumatoid arthritis. \emph{Ann Intern Med} 2007; 146:797-808
}
\keyword{datasets}