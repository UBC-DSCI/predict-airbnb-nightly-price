# input for tests for summarize_col
two_cols_three_rows <- data.frame(x = letters[1:3], y = c(2, 4, 6))
one_col_three_rows <- data.frame(y = c(2, 4, 6))
two_cols_three_rows_all_same <- data.frame(x = letters[1:3], y = rep(1, 3))
two_cols_one_row <- data.frame(x = "a", y = 2)
empty_df  <- data.frame(x = character(0), y = numeric(0))
two_cols_three_rows_not_numeric <- data.frame(x = letters[1:3], y = letters[7:9])
list_named_numeric_vector <- list(y = c(2, 4, 6))

# expected output from summarize_col
three_rows_output <- data.frame(median = 4, 
                                mean = 4,
                                standard_deviation = 2)

two_cols_three_rows_all_same_output <- data.frame(median = 1, 
                                                  mean = 1,
                                                  standard_deviation = 0)

two_cols_one_row_output <- data.frame(median = 2, 
                                      mean = 2,
                                      standard_deviation = as.numeric(NA))

empty_df_output <- data.frame(median = numeric(0),
                       mean = numeric(0),
                       standard_deviation = numeric(0))
