#  Copyright (c) 2023 Group1_R

#' @author Melody Jane Ang

# File Description:
#  This program demonstrates matrix multiplication in R.
#  It defines functions to generate a random matrix, perform matrix multiplication, 
#  calculate the sum of squares of matrix elements, and run the main program.
#  The main program sets a seed for reproducibility, generates random matrices,
#  performs matrix multiplication, calculates the sum of squares, and prints the final result.


# Sample Program
# Function to generate a random matrix
generate_random_matrix <- function(rows, cols)
{
  matrix(runif(rows * cols), nrow = rows, ncol = cols);     # generate random matrix;
}

# Function to perform matrix multiplication
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
  matrix_size <- 100
  A = generate_random_matrix(matrix_size, matrix_size);
  B = generate_random_matrix(matrix_size, matrix_size);

  # Perform matrix multiplication
  C = matrix_multiply(A, B);

  # Calculate the sum of squares of matrix elements
  result = sum_of_squares(C);

  # Print the final result
  cat("Final Result:", result, "\n");
}