% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fpof.R
\name{FPOF}
\alias{FPOF}
\title{FPOF - Frequent Pattern Outlier Factor algorithm}
\usage{
FPOF(data, minSupport = 0.3, mlen = 0, noCores = 1)
}
\arguments{
\item{data}{\code{data.frame} or \code{transactions} from \code{arules} with input data}

\item{minSupport}{minimum support for FPM}

\item{mlen}{maximum length of frequent itemsets}

\item{noCores}{number of cores for parallel computation}
}
\value{
model output (list) with all results including outlier scores
}
\description{
Algorithm proposed by:
He, Z., Xu, X., Huang, J. Z., Deng, S.: FP-Outlier: Frequent Pattern Based Outlier Detection. Computer Science and Information Systems, Vol. 2, No. 1, 103-118. (2005)
}
\examples{
library("fpmoutliers")
dataFrame <- read.csv(
     system.file("extdata", "fp-outlier-customer-data.csv", package = "fpmoutliers"))
model <- FPOF(dataFrame, minSupport = 0.001)
}
