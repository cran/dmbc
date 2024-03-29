% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bmds.R
\name{mdsic}
\alias{mdsic}
\title{Information criterion for Bayesian multidimensional scaling (BMDS).}
\usage{
mdsic(x_star, rmin_ssr, n, min_p = 1, max_p = 6)
}
\arguments{
\item{x_star}{An array containing the latent configurations
estimated using \code{\link{bmds}}.}

\item{rmin_ssr}{A numeric vector providing the ratios of SSR
for the latent dimensions requested.}

\item{n}{A length-one numeric vector providing the number of objects.}

\item{min_p}{A length-one numeric vector providing the minimum value
of the latent space dimension to use.}

\item{max_p}{A length-one numeric vector providing the maximum
value of the latent space dimension to use.}
}
\value{
A list with the following elements:
  \describe{
    \item{\code{mdsic}}{A numeric vector with the values of MDSIC index.}
    \item{\code{bic}}{A numeric vector with the values of the BIC index.}
  }
}
\description{
\code{mdsic} computes the information criterion for a set of Bayesian
  multidimensional scaling (BMDS) solutions using the approach in
  Oh & Raftery (2001).
}
\examples{
\dontrun{
# Road distances (in km) between 21 cities in Europe
data(eurodist, package = "datasets")

min_p <- 1
max_p <- 10
burnin <- 200
nsim <- 1000
totiter <- burnin + nsim

eurodist.mds <- cmdscale(eurodist, max_p)
eurodist.bmds <- bmds(eurodist, min_p, max_p, burnin, nsim)

plot((min_p:max_p), eurodist.bmds$mdsIC$mdsic, type = "b",
  main = "MDS Information Criterion", xlab = "p", ylab = "MDSIC")
MDSICmin <- which.min(eurodist.bmds$mdsIC$mdsic)
points((min_p:max_p)[MDSICmin], eurodist.bmds$mdsIC$mdsic[MDSICmin],
  col = "red", pch = 10, cex = 1.75, lwd = 1.5)
}
}
\references{
Oh, M.-S., Raftery, A. E. (2001), "Bayesian Multidimensional Scaling and
  Choice of Dimension", Journal of the American Statistical Association,
  96, 1031-1044.
}
\seealso{
\code{\link{bmds}} for Bayesian (metric) multidimensional scaling
  and \code{\link{comp_ssr}} for the computation of SSR.
}
\author{
Sergio Venturini \email{sergio.venturini@unicatt.it}
}
