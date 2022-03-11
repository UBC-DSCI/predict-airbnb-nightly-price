#library(testthat)
source("../../R/summarize_col.r")

test_that("`summarize_col` should return a data frame", {
  expect_s3_class(summarize_col(two_cols_three_rows, y), "data.frame")
})

test_that("`summarize_col` should return a data frame, or data frame extension, 
with the three columns (median, mean, standard deviation)", {
  expect_equivalent(colnames(summarize_col(two_cols_three_rows, y)), c("median", "mean", "standard_deviation"))
})

test_that("`summarize_col` should correctly calculate median, mean, standard deviation as implemented in base R", {
  expect_equivalent(summarize_col(two_cols_three_rows, y), three_rows_output)
  expect_equivalent(summarize_col(one_col_three_rows, y), three_rows_output)
  expect_equivalent(summarize_col(two_cols_three_rows_all_same, y), two_cols_three_rows_all_same_output)
  expect_equivalent(summarize_col(two_cols_one_row, y), two_cols_one_row_output)
})

test_that("`summarize_col` should return an empty data frame with columns median, mean and standard deviation, if input is an empty data frame", {
  expect_equivalent(summarize_col(empty_df, y), empty_df_output)
})

test_that("`summarize_col` by default should remove NA's when calculating statistical summaries, and only not remove NA's when `remove_nas = FALSE`", {
  expect_equivalent(summarize_col(two_cols_four_rows_nas, y), three_rows_output)
  expect_equivalent(
    summarize_col(two_cols_four_rows_nas, y, remove_nas = FALSE), 
    two_cols_four_rows_nas_remove_false)
})

test_that("`summarize_col` should throw an error when incorrect types 
are passed to `.data` and `col` arguments", {
  expect_error(summarize_col(two_cols_three_rows_not_numeric, y))
  expect_error(summarize_col(list_named_numeric_vector, y))
})
