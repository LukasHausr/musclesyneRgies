% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Hurst.R
\name{Hurst}
\alias{Hurst}
\title{Hurst exponent}
\usage{
Hurst(P, min_win = 2)
}
\arguments{
\item{P}{A time series (numeric)}

\item{min_win}{Minimum window length in points}
}
\value{
A list with elements:\cr
\itemize{
\item \code{loglog} containing the log-log plot from which the HFD is calculated\cr
\item \code{Hurst} containing the Higuchi's fractal dimension of the time series.
}
}
\description{
Hurst exponent
}
\details{
\code{Hurst} calculates the Hurst exponent based on the R/S approach as in Hurst (1951).
For motor primitives, the minimum window length should be bigger than the period
(i.e., the length of each cycle), as reported in Santuz, Akay (2020).
}
\examples{
# Measurements of the annual flow of the river Nile at Aswan
flow <- datasets::Nile

# Calculate Hurst exponent
H <- Hurst(flow)$Hurst
message("Hurst exponent: ", round(H, 3))

# Thirty-cycle locomotor primitive from Santuz & Akay (2020)
data(primitive)
H <- Hurst(primitive$signal, min_win = max(primitive$time))$Hurst
message("Hurst exponent: ", round(H, 3))
}
\references{
Hurst, H. E.
Long-term storage capacity of reservoirs.
Trans. Am. Soc. Civ. Eng. 116, 770-808 (1951).\cr

Santuz, A. & Akay, T.
Fractal analysis of muscle activity patterns during locomotion: pitfalls and how to avoid them.
J. Neurophysiol. 124, 1083-1091 (2020).
}
