\name{IRF}

\alias{IRF}

\alias{IRF.BVARM}
\alias{IRF.BVARS}
\alias{IRF.BVARTVP}
\alias{IRF.BVARW}
\alias{IRF.CVAR}

\alias{IRF.DSGEVAR}
\alias{IRF.EDSGE}

\alias{IRF.gensys}
\alias{IRF.uhlig}
\alias{IRF.SDSGE}

\title{Plotting IRFs.}

\description{
  A function for plotting impulse response funtions using ggplot2.
}

\usage{
  IRF(obj,...)

  \method{IRF}{BVARM}(obj,percentiles=c(.05,.50,.95),save=TRUE,height=13,width=13,...)
  \method{IRF}{BVARS}(obj,percentiles=c(.05,.50,.95),save=TRUE,height=13,width=13,...)
  \method{IRF}{BVARW}(obj,percentiles=c(.05,.50,.95),save=TRUE,height=13,width=13,...)
  \method{IRF}{CVAR}(obj,percentiles=c(.05,.50,.95),save=TRUE,height=13,width=13,...)

  \method{IRF}{BVARTVP}(obj,whichirfs=NULL,percentiles=c(.05,.50,.95),
  save=FALSE,height=13,width=13,...)
    
  \method{IRF}{DSGEVAR}(obj,varnames=NULL,percentiles=c(.05,.50,.95),comparison=TRUE,
    save=TRUE,height=13,width=13,...)
  \method{IRF}{EDSGE}(obj,observableIRFs=FALSE,varnames=NULL,percentiles=c(.05,.50,.95),
    save=TRUE,height=13,width=13,...)

  \method{IRF}{gensys}(obj,shocks,irf.periods=20,varnames=NULL,
    plot=TRUE,save=FALSE,height=13,width=13,...)
  \method{IRF}{uhlig}(obj,shocks,irf.periods=20,varnames=NULL,
    plot=TRUE,save=FALSE,height=13,width=13,...)
  \method{IRF}{SDSGE}(obj,shocks,irf.periods=20,varnames=NULL,
    plot=TRUE,save=FALSE,height=13,width=13,...)
}

\arguments{
  For objects of class `BVARM', `BVARS', `BVARW', or `CVAR',
  \item{obj}{
  An object of the above class.}
	\item{percentiles}{
	The percentiles of the distribution the user wants to use.}
	\item{save}{
	Whether to save the plots.}
	\item{height}{
	If save=TRUE, use this to set the height of the plot.}
	\item{width}{
	If save=TRUE, use this to set the width of the plot.}\cr
  
  For objects of class `BVARTVP',
  \item{whichirfs}{
  Which IRFs to plot. (The default is to plot all of the IRFs contained in the estimation object.)}\cr
  
  For objects of class `DSGEVAR',
  \item{varnames}{
  A character vector with the names of the relevant variables.}
  \item{comparison}{
  Whether to plot corresponding DSGE model IRFs.}\cr
  
  For objects of class `EDSGE',
  \item{observableIRFs}{
  Whether to plot the IRFs relating to the state variables, or the implied IRFs of the observable series.}\cr
  
  For objects of class `gensys', `uhlig', or `SDSGE',
  \item{shocks}{
	A numeric vector containing the standard deviations of the shocks.}
  \item{irf.periods}{
  The horizon of the IRFs.}
  \item{plot}{
  Whether to plot the IRFs.}\cr
  
  \item{\dots}{
  Additional arguments (not used).}
}

\details{
  This function will work with any estimated VAR model, estimated DSGE or DSGE-VAR model, or solved DSGE model.
}

\value{
The function returns a plot of the IRFs with user-selected percentiles.
}

\author{Keith O'Hara}

\examples{
\dontrun{
data(BMRVARData)
testbvarw <- BVARW(USMacroData[,2:4],c(0.9,0.95,0.95),p=4,constant=T,
                    irf.periods=20,keep=10000,burnin=5000,
                    XiBeta=4,XiSigma=1,gamma=4)
IRF(testbvarw,percentiles=c(0.05,0.5,0.95),save=FALSE)
}
}

\keyword{IRF}
\concept{IRF}