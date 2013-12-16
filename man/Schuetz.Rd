\name{Schuetz}
\docType{data}
\alias{Schuetz}
\title{CT vs. MRI for the Diagnosis of Coronary Artery Disease}
\description{
  Data from Schuetz (2010) of the diagnosis of coronary artery disease (CAD),used conventional coronary angiography as the reference standard. Among the total 103 studies, 84 evaluated only the accuracy of CT, 14 evaluated only MRI, and 5 studies evaluated both.
}
\usage{Schuetz}
\format{
   A data frame containing 6 variables and 108 observations, including 103 studies. The variables are:
\tabular{lll}{
  \bold{Test} \tab \code{factor} \tab name of the screening test \cr 
  \bold{Study_ID} \tab \code{factor} \tab primary study name \cr
  \bold{tp} \tab \code{numeric} \tab number of true positives \cr
  \bold{fp} \tab \code{numeric} \tab number of false positives \cr
  \bold{fn} \tab \code{numeric} \tab number of false negatives \cr
  \bold{tn} \tab \code{numeric} \tab number of true negatives  
}  
}
\source{Cochrane Handbook for Systematic Reviews of Diagnostic Test Accuracy, Chapter 10}
\references{
 Schuetz GM, Zacharopoulou NM, Schlattmann P, Dewey M. Meta-analysis:noninvasive coronary angiography using computed tomography versus magnetic resonance imaging. \emph{Annals of Internal Medicine} 2010;152:167-177. 
}  
\keyword{datasets}