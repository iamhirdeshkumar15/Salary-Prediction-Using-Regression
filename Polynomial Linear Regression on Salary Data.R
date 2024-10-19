# Load the dataset from a CSV file
dataset <- read.csv("C:/Users/Hirdesh Kumar Yadav/Downloads/R Predictive Analysis/Position_Salaries.csv")

# Display the dataset in the viewer
View(dataset)

# Select only the second and third columns (Level and Salary)
dataset <- dataset[2:3]

# View the updated dataset (Level and Salary only)
View(dataset)

# Fitting Linear Regression to the dataset
# Build a linear regression model with Salary as the dependent variable and Level as the predictor
lin_reg <- lm(formula = Salary ~ Level, data = dataset)

# Summarize the linear regression model (displays coefficients, R-squared, etc.)
summary(lin_reg)

# Fitting Polynomial Regression to the dataset
# Create a new variable Level^2 (second degree polynomial) in the dataset
dataset$Level2 = dataset$Level^2

# Create a new variable Level^3 (third degree polynomial) in the dataset
dataset$Level3 = dataset$Level^3

# Create a new variable Level^4 (fourth degree polynomial) in the dataset
dataset$Level4 = dataset$Level^4

# Create a new variable Level^5 (fifth degree polynomial) in the dataset
dataset$Level5 = dataset$Level^5

# View the dataset after adding polynomial terms (Level2, Level3, Level4, Level5)
View(dataset)

# Fit a polynomial regression model using all polynomial terms (Level, Level2, Level3, Level4, Level5)
poly_reg = lm(formula = Salary ~ ., data = dataset)

# Summarize the polynomial regression model
summary(poly_reg)

# Access the Level variable from the dataset (just displaying the values)
dataset$Level

# Access the Level2 variable (Level squared) from the dataset
dataset$Level2

# Access the Level3 variable (Level cubed) from the dataset
dataset$Level3

# Access the Level4 variable (Level raised to the power of 4) from the dataset
dataset$Level4

# Access the Level5 variable (Level raised to the power of 5) from the dataset
dataset$Level5

# Visualising the Linear Regression results using ggplot2
# Load the ggplot2 library for plotting
library(ggplot2)

# Create a scatter plot of Level vs Salary (red points) and overlay the linear regression line (blue line)
ggplot() + 
  geom_point(aes(x = dataset$Level, y = dataset$Salary), colour = "red") +  # Red points represent actual data
  geom_line(aes(x = dataset$Level, y = predict(lin_reg, newdata = dataset)), colour = "blue") +  # Blue line represents predicted Salary from linear regression
  ggtitle("Truth or Bluff (Linear Regression)") +  # Title for the plot
  xlab('Level') +  # X-axis label (Level)
  ylab('Salary')   # Y-axis label (Salary)

# Visualising the Polynomial Regression results using ggplot2
# Create a scatter plot of Level vs Salary (red points) and overlay the polynomial regression line (blue line)
ggplot() + 
  geom_point(aes(x = dataset$Level, y = dataset$Salary), colour = "red") +  # Red points represent actual data
  geom_line(aes(x = dataset$Level, y = predict(poly_reg, newdata = dataset)), colour = "blue") +  # Blue line represents predicted Salary from polynomial regression
  ggtitle("Truth or Bluff (Polynomial Regression)") +  # Title for the plot
  xlab('Level') +  # X-axis label (Level)
  ylab('Salary')   # Y-axis label (Salary)
