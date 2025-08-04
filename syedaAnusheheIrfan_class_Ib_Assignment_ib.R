# working Directory

# to check current working directory
setwd()

# ctrl + entr

setwd(" Path to your folder")


#### R Data Types Assignment ####

### 1️⃣ Numeric Data Type (decimal numbers)

# Example numeric values
x <- 24.5
class(x)  # Check the data type

y <- -40.4
class(y)

### 2️⃣ Integer Data Type (whole numbers)

# Example integer values
z <- 24L  # Note the 'L' suffix to specify integer
class(z)

# Vector of numeric values
numeric <- c(2, 3, 4)
class(numeric)

# Vector of integer values
integer <- c(2L, 3L, 4L)
class(integer)


### 4️⃣ Creating Example Data Frame

# Let's create a sample data frame for testing factor conversions
data <- data.frame(
  gender = c("Female", "Male", "Female", "Male", "Female"),
  height_fac = c("Short", "Tall", "Medium", "Tall", "Short")
)

# View the structure of the data
str(data)


### 5️⃣ Factor Conversion

# Convert 'height' factor to numeric codes
data$height_num <- factor(data$height_fac,
                          levels = c("Short", "Medium", "Tall"),
                          labels = c(0, 1, 2))

# Convert 'gender' to factor
data$gender_fac <- as.factor(data$gender)
str(data)


### 6️⃣ Convert Factor to Numeric

# Female = 1, Male = 0
data$gender_num <- ifelse(data$gender_fac == "Female", 1, 0)
class(data$gender_num)

# Convert numeric gender code back to factor
data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)
