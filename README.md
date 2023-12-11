# Modified Coding Standard: NOTATION AND NAMING

## File Names

### Modified
The modified version would be more specific, putting the developer’s group number and name in square brackets followed by an underscore, then the detailed name of the file which should at least have a verb.

**Sample Conforming to the Modified Standard:**
```
[Group1_Mina]_ComputationOfStatistics.R
```

## Identifiers
- Variables: camelCase
- Functions: snake_case
- Constants: UPPERCASE

**Sample Conforming to the Modified Standard:**
```R
Variables
creditScore
Functions
calculate_credit
Constants
USER_CREDIT
```

## SYNTAX

### Indentation

Indent code using a minimum of 2 spaces. Modify indentation by highlighting code and using the tab key. Revert indentation by highlighting adjusted code and pressing shift+tab. Maintain consistent indentation throughout the code once a tab or space bar is used.

**Sample Conforming to the Modified Standard:**
```R
Sample_function <- function(a, b) {

   c <- a + b
   d <- c * b

   print(c)
   print(d)
}
```

### Spacing
- For code comments, start after a single space following the '#' symbol for clear and consistent code readability regardless if it's a long or short code.

**Sample Conforming to the Modified Standard:**
```R
Block of code spacing

Sample_function <- function(a, b) {

   c <- a + b
   d <- c * b

   print(c)
   print(d)
} 

Code comments

# short comment
# This is a comment with a space after the “#” symbol
result <- x * y
```

### Curly Braces

### Modified
Opening curly braces should stand on their own lines, and closing curly braces should always start on a new line. Consistency is key when deciding to use or omit curly braces for single-statement blocks.

**Sample Conforming to the Modified Standard:**
```R
if (a == 0) 
{
  print("The number is zero.")
}
```

### Assignment

Utilize “<-” only when assigning functions. Otherwise, utilize “=” in other assignment applications.

**Sample Conforming to the Modified Standard:**
```R
addition <- function(a, b) {
  sum = a + b
}
```

### Semi Colons
Make use of semicolons when assigning values to variables and invoking functions.

**Sample Conforming to the Modified Standard:**
```R
iterations <- 10;
sum(10, 20);
```

## ORGANIZATION

### General Layout and Ordering

In the creation of R programs, the following order must be followed:
- Copyright statement comment
- Author comment
- File description comment, including purpose of program, inputs, and outputs
- Version control information (if applicable)
- `source()` and `library()` statements
- Section Headers
- Function definitions and inline comments
- Executed statements, if applicable (e.g., print, plot)

### Commenting Guidelines
Inline code comments should have 5 spaces away from the line of code and should end with a semicolon (;).

**Sample Conforming to the Modified Standard:**
```R
# This dataset contains different kinds of animals and size types
  animals <- data.frame(

