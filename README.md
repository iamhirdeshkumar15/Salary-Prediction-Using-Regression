# Salary-Prediction-Using-Regression
Predicting salaries based on levels using both linear and polynomial regression models in R.

This project uses both **linear regression** and **polynomial regression** to predict salaries based on the employee level in a company.

## Dataset
The dataset consists of two columns:
- `Level`: Represents the level/position of an employee in the company.
- `Salary`: Represents the salary corresponding to each level.

The goal is to predict the salary using different regression models based on the employee's level.

## Models Used
1. **Linear Regression**: A simple linear model to predict salary based on level.
2. **Polynomial Regression**: A more complex model, considering polynomial terms up to degree 5, to capture non-linear relationships between level and salary.

## R Script
The script performs the following tasks:
- Loads and preprocesses the data.
- Fits both a linear and polynomial regression model to the data.
- Visualizes the regression results using `ggplot2`.

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/iamhirdeshkumar15/Salary-Prediction-Using-Regression.git
