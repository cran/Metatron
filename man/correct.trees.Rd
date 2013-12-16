\name{correct.trees}
\alias{correct.trees}
\title{Correct the Classification Outcomes by Methods of Botella et al (2013)}
\description{
  This function corrects the frequencies reported in the primary studies when a imperfect reference was used in the classification process. According to the conjoint parameter estimates of multinomial tree model 2 by Botella et al (2013) given by the \code{imperfect.trees}, one can obtain the corrected frequencies as if the a perfect standard reference were used. Note that correction should be used only if the model 2 is the optimal one compared to model 1.  
}
\usage{
correct.trees(x,TP,FN,TN,FP,study,data)
}
\arguments{
  \item{x}{an object of class "imperfect.trees".}
  \item{TP}{the true positive counts reported in primary studies.Vector of integers,need to be speficied either directly or by referring to a variable in data frame.}
  \item{FN}{the false negative counts reported in primary studies.Vector of integers,need to be speficied either directly or by referring to a variable in data frame.}
  \item{TN}{the true negative counts reported in primary studies.Vector of integers,need to be speficied either directly or by referring to a variable in data frame.}
  \item{FP}{the false positive counts reported in primary studies.Vector of integers,need to be speficied either directly or by referring to a variable in data frame.}
  \item{study}{study names or identities. Character vector, need to be speficied either directly or by referring to a variable in data frame.}
  \item{data}{optional data frame that contains the above-mentioned variables.}
}
\details{
  The study names and their order used by this function to correct frequencies need to be exactly the same as in the previous step which fits the multinomial tree model 2 assuming an imperfect reference. Otherwise it will give an error indicating the problem.
}
\value{
  A data frame with the 4 corrected frequencies for each primary study, namely, TPnew, FNnew, FPnew, TNnew. If the input data contains other information such as covariates, these will be kept unchaged and well matched with the newly corrected frequencies. This data frame can be further used to fit the bivariate model of Reitsma et al. (2005) by the \code{fit.bivar} function.
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
## data of the screening tool Mini Mental State Examination (MMSE) from Botella et al.(2013)
data(MMSE)
## fit the multinomial tree model 2, imperfect reference
(mmse2<-imperfect.trees(TP=TP,FN=FN,TN=TN,FP=FP,study=study,data=MMSE))
## after comparing to the results of model 1, the model 2 is chosen, 
## then comes frequency correction. 
correct.trees(mmse2,TP=TP,FN=FN,TN=TN,FP=FP,study=study,data=MMSE)
}
\keyword{file}