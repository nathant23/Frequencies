% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/freq_two_vects.R
\name{freq_two_vects}
\alias{freq_two_vects}
\title{freq_two_vects}
\usage{
freq_two_vects(df, col1, col2, separate_tables = FALSE)
}
\arguments{
\item{df}{a data frame}

\item{col1}{a column from the data frame to be aggregated at the higher level.}

\item{col2}{a column from the data frame to be aggregated within col1.}

\item{separate_tables}{a boolean that decises if you want all aggregations in one data frame
or split apart so each element of col1 gets it's own table; the default is FALSE}
}
\value{
returns a list containing frequency tables split by col1_string with counts and rates of
        col2_string.
}
\description{
freq_two_vects takes two columns from a data frame and returns a data frame containing frequency
   tables with counts and percentages of col2 within col1.
   It answers the question, what percent of col1 is col2.
}
\details{
As an example, if col1 was gender and col2 was ethnicity you would get the count and rate of
  males that are asian, african american, hispanic, etc.

If col1 was ethnicity and col2 was gender you would get the count and rate of asians that are
  male and female.
}
\examples{
# Sample data frame to demo the freq_two_vects function.
df <- data.frame(gender = sample(c('m','f'), 200, replace = TRUE),
                 ethnicity = sample(c('african american', 'asian', 'caucasian',
                                   'hispanic', 'other'),
                                   200, replace = TRUE),
                 stringsAsFactors = FALSE)

freq_two_vects(df, gender, ethnicity, FALSE)
gender_by_ethnicity <- freq_two_vects(df, gender, ethnicity, TRUE)
gender_by_ethnicity$m
freq_two_vects(df, gender, ethnicity, TRUE)$m
freq_two_vects(df, ethnicity, gender, FALSE)
ethnicity_by_gender <- freq_two_vects(df, ethnicity, gender, TRUE)
ethnicity_by_gender$asian
}
