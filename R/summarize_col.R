#' Summarize column
#'
#' Creates a new data frame with three columns 
#' (median, mean and standard deviation) 
#' calculated from a specified column 
#' of a data frame or data frame extension (e.g. a tibble)
#'
#' @param .data A data frame or data frame extension (e.g. a tibble).
#' @param col unquoted column name of column to summarize
#'
#' @return A data frame with three columns 
#'   (median, mean and standard deviation).
#'   If the input is an emppty data frame, 
#'   then an empty data frame is returned.
#'
#' @export
#'
#' @examples
#' summarize_col(mtcars, mpg)
summarize_col <- function(.data, col) {
  if (!is.data.frame(.data)) {
    stop("`.data` should be a data frame or data frame extension (e.g. a tibble)")
  }
  if (!is.numeric(dplyr::pull(.data, {{ col }}))) {
    stop("`col` should be of type numeric")
  }
  # return an empty data frame if input is an empty data frame
  if (nrow(.data) < 1) {
    return(data.frame(median = numeric(0),
                      mean = numeric(0),
                      standard_deviation = numeric(0)))
  }
  # returns a data frame or data frame extension (e.g. a tibble) 
  # with three columns: median, mean and standard deviation from the specified column
  .data |>
    dplyr::summarize(median = median({{ col }}),
                   mean = mean({{ col }}),
                   standard_deviation = sd({{ col }}))
}
