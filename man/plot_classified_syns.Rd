% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_classified_syns.R
\name{plot_classified_syns}
\alias{plot_classified_syns}
\title{Plot muscle synergies}
\usage{
plot_classified_syns(
  x,
  dark_mode = FALSE,
  line_size = 0.9,
  dot_size = 0.1,
  line_col = "black",
  sd_col = "grey80",
  condition = NA,
  show_plot = TRUE
)
}
\arguments{
\item{x}{List of objects of class \code{musclesyneRgies} (must be classified)}

\item{dark_mode}{To enable dark mode}

\item{line_size}{Line thickness}

\item{dot_size}{Dot size on motor modules}

\item{line_col}{Line colour}

\item{sd_col}{Standard deviation ribbon colour}

\item{condition}{Character: the condition that is being analysed, for archiving purposes}

\item{show_plot}{Logical, to decide whether plots should be plotted in the active graphic device}
}
\value{
Global plot containing the average classified muscle synergies and individual trials
(motor modules) or standard deviations (motor primitives)
}
\description{
Plot muscle synergies
}
\details{
If \code{show_plot} is TRUE (default) plots are also shown in the active graphic device.
Plots can then be saved with the preferred export method, such as \code{ggplot2::ggsave}.
}
\examples{
# Load some data
data(SYNS)

# Classify synergies with k-means
SYNS_classified <- classify_kmeans(SYNS)

# Save plot of classified synergies
pp <- plot_classified_syns(SYNS_classified,
  dark_mode = TRUE,
  line_col = "tomato1",
  sd_col = "tomato4",
  condition = "TW",
  show_plot = FALSE
)
}
