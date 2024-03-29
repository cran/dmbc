% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dmbc_classes.R
\docType{class}
\name{dmbc_config-class}
\alias{dmbc_config-class}
\alias{dmbc_config}
\title{An S4 class to represent the latent configuration estimate for a DMBC model.}
\description{
An S4 class to represent the the latent configuration estimate for a DMBC
  model.
}
\section{Slots}{

\describe{
\item{\code{Z.est}}{An array containing the estimate of the latent
configuration for a DMBC model.}

\item{\code{Z.sd}}{An array containing the standard deviation of the latent
configuration for a DMBC model.}

\item{\code{cluster}}{A numeric vector providing the estimated group
membership for the \emph{S} subjects in the data.}

\item{\code{est}}{A length-one character vector providing the estimate type
returned in \code{Z.est}. Possible values are \code{mean} (posterior
mean), \code{median} (posterior median), \code{ml} (maximum likelihood)
and \code{map} (maximum-a-posteriori).}

\item{\code{n}}{A length-one numeric vector providing the number of objects.}

\item{\code{p}}{A length-one numeric vector providing the number of latent
dimensions.}

\item{\code{S}}{A length-one numeric vector providing the number of subjects.}

\item{\code{G}}{A length-one numeric vector providing the number of clusters.}

\item{\code{family}}{An object of class \code{list}; named list with
elements representing the parameter estimates corresponding to different
values of \emph{p} and \emph{G}.}

\item{\code{chain}}{A length-one numeric vector representing the ID of
the MCMC chain used to compute the estimates.}

\item{\code{labels}}{A character vector for the (optional) strings to use
in the plots for labeling the objects.}
}}

\examples{
showClass("dmbc_config")

}
\references{
Venturini, S., Piccarreta, R. (2021), "A Bayesian Approach for Model-Based
  Clustering of Several Binary Dissimilarity Matrices: the \pkg{dmbc}
  Package in \code{R}", Journal of Statistical Software, 100, 16, 1--35, <10.18637/jss.v100.i16>.
}
