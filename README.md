```
# Endurance Performance Analysis (Multiple Linear Regression)

## Overview
This project analyses factors influencing 10 km race performance using multiple linear regression in R. It identifies key predictors such as VO₂max and weekly mileage, providing insights for recreational and competitive runners.

## Dataset
- ~300 observations of runners
- Variables:
  - `RaceTime` (minutes)
  - `VO2max` (ml/kg/min)
  - `WeeklyMileage` (km)
  - `BodyMass` (kg)
  - `Age` (years)
  - `TrainingYears` (years of structured endurance training)

## Methodology
- Exploratory Data Analysis
- Multiple Linear Regression
- Residual diagnostics and model validation
- Model refinement after removing invalid or influential data points

## Key Findings
- VO₂max and WeeklyMileage are the strongest predictors of race performance
- Adjusted R² ≈ 0.51
- Model assumptions (linearity, normality, homoscedasticity) are reasonably satisfied

## Limitations
- No data on training intensity, gender, or injury history
- Observational study; associations, not causation

## Project Structure
Endurance-Performance-Regression/
│
├── data/             # Raw and cleaned datasets
├── scripts/          # R scripts for analysis
├── output/           # Figures and tables
├── report/           # PDF report of findings
├── README.md
└── .gitignore
## Author
Jinxi Zhang
```