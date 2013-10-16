\name{perfect.trees}
\alias{perfect.trees}
\alias{print.perfect.trees}
\title{Fit the Multinomial Tree Model 1 of Botella et al (2013)}
\description{
  The function fits the multinomial tree model 1 of Botella et al (2013) which assumes that both the sensitivity and specificity of the standard reference employed in the classification processes are equal to 1. The model is fitted by the EM algorithm implemented in the package \code{mpt}. Results should be compared to those of multinomial tree model 2 given by \code{perfect.trees} before making inference.  
}
\usage{
perfect.trees(TP,FN,TN,FP,study, data)

\method{print}{perfect.trees}(x,...)
}
\arguments{
  \item{TP}{the true positive counts reported in primary studies.Vector of integers,need to be speficied either directly or by referring to a variable in data frame.}
  \item{FN}{the false negative counts reported in primary studies.Vector of integers,need to be speficied either directly or by referring to a variable in data frame.}
  \item{TN}{the true negative counts reported in primary studies.Vector of integers,need to be speficied either directly or by referring to a variable in data frame.}
  \item{FP}{the false positive counts reported in primary studies.Vector of integers,need to be speficied either directly or by referring to a variable in data frame.}
  \item{study}{study names or identities.Vector of characters, need to be speficied either directly or by referring to a variable in data frame.}
  \item{data}{optional data frame that contains the above-mentioned variables.}
  \item{x}{an object of class "perfect.trees" (for \code{print}).}
  \item{...}{further arguments to be passed to or from other functions}
}
\details{ 
  To specify the data, either directly input the TP, FN, FP, TN and study as vectors, or referring the corresponding variable names in a data frame.The multinomial tree models are then generated automatically according to the study number.
}
\value{
  An object of class "perfect.trees",basically a list with the model speficication and conventional model fit information, such as goodness of fit statistics and parameter estimates, etc. The print function does not return an object.  
}
\author{ 
  Huiling Huang <huiling.huang23@gmail.com>
}
\references{ 
  Botella, J., Huang, H., Suero, M.(2013). Multinomial tree models for assessing the status of the reference in studies of the accuracy of tools for binary classification. \emph{Frontiers in Psychology}.4:694. 
  \url{http://www.frontiersin.org/Journal/Abstract.aspx?s=956&name=quantitative_psychology_and_measurement&ART_DOI=10.3389/fpsyg.2013.00694}
  
  Botella, J., Huang, H., Suero, M. Meta-analysis of the accuracy of tools used for binary classification when the primary studies employ different references. To appear in Psychological Methods.
}  
\seealso{
  \code{\link{imperfect.trees}}.
}
\examples{
## load data of the accuracy of the screening tool Alcohol Use Disorders Identfication Test (AUDIT)
data(AUDIT)
## fitting the multinomial tree model 1
perfect.trees(TP=TP,FN=FN,TN=TN,FP=FP,study=study,data=AUDIT)
## data of the screening tool Mini Mental State Examination (MMSE) 
data(MMSE)
## fit the multinomial tree model 1, assuming imperfect reference
perfect.trees(TP=TP,FN=FN,TN=TN,FP=FP,study=study,data=MMSE)
}
\keyword{file}