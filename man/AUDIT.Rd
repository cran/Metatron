\name{AUDIT}
\docType{data}
\alias{AUDIT}
\title{Alcohol Use Disorders Identfication Test}
\description{
  Four primary studies which validated the Alcohol Use Disorders Identfication Test by comparing the screening outcomes against the reference of self-report alcohol consumption.
}
\usage{AUDIT}
\format{
  A data frame containing 5 variables and 4 observations. The variables are:
\tabular{lll}{
  \bold{study} \tab \code{factor} \tab primary study name \cr
  \bold{TP} \tab \code{numeric} \tab number of true positives \cr
  \bold{FN} \tab \code{numeric} \tab number of false negatives \cr
  \bold{FP} \tab \code{numeric} \tab number of false positives \cr
  \bold{TN} \tab \code{numeric} \tab number of true negatives
  
}
}
\source{Botella et al. 2013, table 2}
\references{
  Botella, J., Huang, H., Suero, M.(2013). Multinomial tree models for assessing the status of the reference in studies of the accuracy of tools for binary classification. \emph{Frontiers in Psychology},4:694. 
  \url{http://www.frontiersin.org/Journal/Abstract.aspx?  s=956&name=quantitative_psychology_and_measurement&ART_DOI=10.3389/fpsyg.2013.00694}
}
\keyword{datasets}