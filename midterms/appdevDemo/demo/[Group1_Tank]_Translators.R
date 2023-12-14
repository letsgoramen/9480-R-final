#  Copyright (c) 2023 Group1_R

#' @author Dean Nobleza

# Function Description:
# This function takes a data frame of students' information,
# including their names, ages, and grades. It displays the dataset,
# imports the ggplot2 package, and creates a bar plot showing
# the average grades of students.

#' @param input_data A data frame containing information about students,
#'                   including columns 'Name', 'Age', and 'Grade'.
#' @return A data frame containing the original student information.
create_student_bar_plot <- function(input_data) {
  # Display the dataset
  print(input_data);     # Display the dataset;
  View(input_data);      # View the dataset;

  # Import ggplot2 package
  library(ggplot2);

  # Create a bar plot of average grades by student
  ggplot(input_data, aes(x = Name, y = Grade, fill = Name)) +  # nolint; Set up the plot aesthetics;
    geom_bar(stat = "identity") +  # Create the bar plot;
    labs(title = "Average Grades of Students",  # Add title and axis labels;
         x = "Student Name",
         y = "Grade") +
    theme_classic();     # Apply classic theme;

  # Return the original data frame
  return(input_data);
}

# Example usage:
# Assuming 'students' is the data frame of student information
students <- data.frame(
  Name = c("Rohit", "Shanthal", "Melody", "Ethan", "Christian"),
  Age = c(21, 24, 21, 20, 21),
  Grade = c(98, 90, 78, 95, 88)
)

# Run the function
result <- create_student_bar_plot(students);   # Run the function with the example data;