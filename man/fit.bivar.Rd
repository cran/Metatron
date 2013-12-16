\name{fit.bivar}
\alias{fit.bivar}
\alias{print.fit.bivar}
\alias{summary.fit.bivar}
\title{Fit the Bivariate Model of Reitsma et al. (2005)}
\description{
  The function fits the bivariate model of Reitsma et al. (2005) by directly modeling the binomial error and normally distributed random effect structure. We specify the model as a generalized linear mixed model using the \code{glmer} function in package \code{lme4}, similar to the computational approach by Macaskill (2004) and Harbord et al. (2007). Thus the normal-normal approximation and the MCMC approach can be avoided. A single covariate can be incorporated into the model, users should choose if it affects both the sensitivity and specificity, only sensitivity or only specificity. Results are nearly identical to those by using the Proc \code{NLMIXED} in SAS. 
}
\usage{
fit.bivar(TP,FN,TN,FP,study,data,mods=NULL,covarying="both",...)

\method{print}{fit.bivar}(x,...)
\method{summary}{fit.bivar}(object,level=0.95,...)
}
\arguments{
  \item{TP}{the true positive counts reported in primary studies. Vector of integers, need to be speficied either directly or by referring to a variable in data frame.}
  \item{FN}{the false negative counts reported in primary studies. Vector of integers, need to be speficied either directly or by referring to a variable in data frame.}
  \item{TN}{the true negative counts reported in primary studies. Vector of integers, need to be speficied either directly or by referring to a variable in data frame.}
  \item{FP}{the false positive counts reported in primary studies. Vector of integers, need to be speficied either directly or by referring to a variable in data frame.}
  \item{study}{study names or identities. Vector of characters, need to be speficied either directly or by referring to a variable in data frame.}
  \item{data}{optional data frame that contains the above-mentioned variables and possibly other information such as the covariate.}
  \item{mods}{optional argument to include a single study-level covariate in the model.Vector specifying the values of the covariate. Default is NULL.}
  \item{covarying}{options to specify the influence of the covariate when it's present, one of the character strings "both", "only sensitivity", "only specificity" can be selected. Default is "both".}
  \item{x}{an object of class "fit.bivar" (for \code{print}).}
  \item{object}{an object of class "fit.bivar" (for \code{summary}).}
  \item{level}{confidence interval level (for \code{summary}). Default is 0.95}
  \item{...}{further arguments to be passed to or from other functions}
}
\details{ 
  To specify the data, either directly input the TP, FN, FP, TN and study as vectors, or referring the corresponding variable names in a data frame. The argument study gives the study names, which means if there are several classification procedures within a study, they must have the same value at this argument, but different values in covariate to distiguish them. To specify the model, one should assign proper values to the mods and covarying arguments.  
}
\value{
  An object of class \code{fit.bivar},basically a list with the model speficication and conventional model fit results, such as goodness of fit statistics and parameter estimates, etc. 
  
  The print functions displays the basic model fit outcomes, including the estimates of the combined logit-transformed sensitivity and specificity, as well as those at different levels of the covariate if there is any; the random effects coefficients shown as variance-covariance matrix of the combined logit-transformed sensitivity and specificity; and the goodness of fit statistics are also given. The print function returns no object. 

  The summary function shows additional information such as standard errors and covariance matrix of the parameters which can be useful later in drawing the SROC curve.  
}
\author{ 
  Huiling Huang <huiling.huang23@gmail.com> 
}
\references{
  Macaskill, P. (2004). Empirical Bayes estimates generated in a hierarchical summary ROC analysis agreed closely with those of a full Bayesian analysis. \emph{Journal of Clinical Epidemiology}, 57, 925-32.
  
  Harbord, R., Deeks, J., Egger, M., Whiting, P., & Sterne, J. (2007). A unification of models for meta-analysis of diagnostic accuracy studies. \emph{Biostatistics}, 8, 239-251
  
  Reitsma, J., Glas, A., Rutjes, A., Scholten, R., Bossuyt, P., & Zwinderman, A. (2005). Bivariate analysis of sensitivity and specificity produces informative summary measures in diagnostic reviews. \emph{Journal of Clinical Epidemiology}, 58, 982-990.
}
\seealso{
  \code{\link{lmer}}.
}
\examples{
## fit bivariate model without covariate to data from a review(Nishimura 2007) 
 data(ccp)
(ccp.without<-fit.bivar(TP=TP,FN=FN,TN=TN,FP=FP,study=study_id,data=ccp))
summary(ccp.without)
## fit bivariate model with covariate "generation" to the same data set.
(ccp.generation<-fit.bivar(TP=TP,FN=FN,TN=TN,FP=FP,study=study_id,data=ccp,mods=generation,
                           covarying="both"))
summary(ccp.generation)
##fit bivariate model with covariate "Test" to the data from Schuetz(2010) 
##comparing the accuracy of CI and MRI
data(Schuetz)
(CTvsMRI<-fit.bivar(TP=tp,FN=fn,TN=tn,FP=fp,study=Study_ID,data=Schuetz,mods=Test))
 summary(CTvsMRI)
}
\keyword{bivariate model}