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
#'
#' @export
#'
#' @examples
#' summarize_col(mtcars, mpg)
summarize_col <- function(.data, col) {
  # returns a data frame or data frame extension (e.g. a tibble) 
  # with three columns: median, mean and standard deviation from the specified column 
}