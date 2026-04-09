# Load the dataset
endurance_raw <- read.csv("endurance_synthetic_dataset.csv", stringsAsFactors = FALSE)
str(endurance_raw)

# Compute summary statistics 
summary(endurance_raw)
# Compute standard deviation for each variable
sapply(endurance_raw, sd)

# Scatterplot matrix for RaceTime and all predictors
pairs(endurance_raw[c("RaceTime", "VO2max", "WeeklyMileage", "BodyMass", "Age", "TrainingYears")],
      main = "Scatterplot Matrix of RaceTime and Predictors")

# Fit the full multiple linear regression model
full_model <- lm(RaceTime ~ VO2max + WeeklyMileage + BodyMass + Age + TrainingYears, 
                 data = endurance_raw)
summary(full_model)
coef(full_model)

# Diagnostic plots for linearity, homoscedasticity and normality
library(car)
par(mfrow = c(2,2))
plot(full_model)
# 1. Residuals vs Fitted: linearity & constant variance
# 2. Normal Q-Q: normality of residuals
# 3. Scale-Location: constant variance
# 4. Residuals vs Leverage: influential observations

# Shapiro-Wilk test for normality
shapiro.test(residuals(full_model))
# p-value > 0.05 suggests residuals are approximately normally distributed

# Multicollinearity diagnostics
vars <- c("RaceTime", "VO2max", "WeeklyMileage", "BodyMass", "Age", "TrainingYears")
cor_matrix <- cor(endurance_raw[vars])
cor_matrix
# Correlation matrix visualization
library(corrplot)
corrplot(cor_matrix, method = "color", addCoef.col = "black", number.cex = 0.8)

# Multicollinearity: Variance Inflation Factor (VIF)
vif(full_model)
# VIF values close to 1 indicate no multicollinearity

# Model Refinement
library(MASS) # for stepAIC

# Clean data: remove negative TraningYears
endurance_no_nagtive <- endurance_raw[endurance_raw$TrainingYears >= 0,]
nrow(endurance_raw)
nrow(endurance_no_nagtive)

# Fit full model on cleaned data
model_no_negative <- lm(RaceTime ~ VO2max + WeeklyMileage + BodyMass + Age + TrainingYears, 
                    data = endurance_no_nagtive)

# Stepwise selection using AIC (forward)
null = lm(RaceTime ~ 1, data = endurance_no_nagtive)
stepAIC(null, scope = list(lower = null, upper = model_no_negative),
        data = endurance_no_nagtive, direction = "forward")

# Identify influential points using Cook's distance
cooks_d <- cooks.distance(model_no_negative)
n <- nrow(endurance_no_nagtive)
p <- length(coef(model_no_negative))
threshold <- 4 / (n - p)
influential_points <- which(cooks_d > threshold)

# Remove influential points and refit model
endurance_no_influential <- endurance_raw[-influential_points, ]
model_no_influential <- lm(RaceTime ~ VO2max + WeeklyMileage + BodyMass + Age + TrainingYears,
                           data = endurance_no_influential)

# Compare AIC and Adjusted R²
AIC(full_model, model_no_negative, model_no_influential)

summary(full_model)
summary(model_no_negative)
summary(model_no_influential)
