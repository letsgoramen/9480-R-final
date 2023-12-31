#  Copyright (c) 2023 Group1_R

#' @author Ethan Mina

# File Description:
#  This program defines functions to generate random matrices, perform matrix multiplication,
#  calculate the sum of squares of matrix elements, and run the main program. The main program
#  generates random matrices, performs matrix multiplication, calculates the sum of squares,
#  and demonstrates an iterative algorithm.

#' @param rows The number of rows for the matrix
#' @param cols The number of columns for the matrix
#' @return A random matrix of size rows x cols
#' @author Ethan
generate_random_matrix <- function(rows, cols)
{
  matrix(runif(rows * cols), nrow = rows, ncol = cols);     # generate random matrix;
}

matrix_multiply <- function(mat1, mat2)
{
  if (ncol(mat1) != nrow(mat2)) {
      stop("Number of columns in the first matrix must be equal to the number of rows in the second matrix.");
  }
  return(mat1 %*% mat2);     # return the result of matrix multiplication;
}

# Function to calculate the sum of squares of matrix elements
sum_of_squares <- function(mat)
{
  return(sum(mat^2));     # return the sum of squares of matrix elements;
}

# Function to run the main program
main_function <- function()
{
  # Main program
  set.seed(123);     # Set seed for reproducibility;

  # Generate random matrices
  matrix_size <- 100;
  A = generate_random_matrix(matrix_size, matrix_size);
  B = generate_random_matrix(matrix_size, matrix_size);

  # Perform matrix multiplication
  C = matrix_multiply(A, B);

  # Calculate the sum of squares of matrix elements
  result = sum_of_squares(C);

  # Iterative algorithm
  iterations <- 1000;
  for (i in 1:iterations) {
    A = matrix_multiply(A, B);
    B = generate_random_matrix(matrix_size, matrix_size);
  }

  cat("Final Result:", result, "\n");
}

# run the main program
main_function();