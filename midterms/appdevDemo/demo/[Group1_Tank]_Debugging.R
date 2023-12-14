#  Copyright (c) 2023 Group1_R

#' @author Christian Keith Ducat

# File Description: Debugging R Program
# This program demonstrates basic mathematical operations and includes functions
# for incrementing, decrementing, reciprocating, and calling these functions in a sequence.

# Increment 'a' by 1
inc = function(a) 
{
  a = a + 1;     # Increment 'a' by 1;
  return(a)
}

# Decrement 'a' by 1
dec = function(a) 
{
  a = a - 1;     # Decrement 'a' by 1;
  return(a)
}

# Reciprocate 'a'
reciprocate = function(a) 
{
  if (a == 0)
    stop("Division by zero will occur")
  a = 1 / a;     # Reciprocate 'a';
  return(a)
}

# Define 'myfunc' which calls 'reciprocate', 'inc', and 'dec' functions
myfunc = function(a) 
{
  x = reciprocate(inc(a))      # nolint; Calculate reciprocal of incremented 'a';
  y = reciprocate(dec(a))      # nolint; Calculate reciprocal of decremented 'a';
  result = x * y               # Multiply the reciprocals;
  return(result)
}

# Example usage:
a = 5
result = myfunc(a)
cat("Result:", result, "\n")