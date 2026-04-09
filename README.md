
📊 Endurance Performance Analysis (R)

📌 Project Overview

This project investigates factors influencing 10 km race performance using multiple linear regression in R. 
It identifies key predictors such as VO₂max and weekly mileage, providing actionable insights for recreational and competitive runners. 
The analysis combines statistical exploration, regression modeling, and diagnostics to support robust and interpretable conclusions.

⸻

💼 Business Problem

Runners and coaches need to answer a critical question:

👉 Which physiological and training factors most influence race performance?

This project addresses this by:
  • Identifying key performance drivers
  • Quantifying the impact of VO₂max, weekly mileage, and body characteristics
  • Supporting evidence-based training and coaching decisions

⸻

🎯 Objectives
  • Perform exploratory data analysis on runner characteristics
  • Build a multiple linear regression model to predict 10 km race times
  • Evaluate model assumptions and refine as necessary
  • Interpret results in a practical, performance-focused way

⸻

📂 Dataset

The dataset includes ~300 runners with the following variables:
  • `RaceTime` (minutes)
  • `VO2max` (ml/kg/min)
  • `WeeklyMileage` (km)
  • `BodyMass` (kg)
  • `Age` (years)
  • `TrainingYears` (structured endurance training in years)

⸻

🛠️ Methodology

1. Exploratory Data Analysis
  • Summary statistics and scatter plots
  • Identify correlations and potential multicollinearity

2. Multiple Linear Regression
  • Model: RaceTime ~ VO₂max + WeeklyMileage + BodyMass + Age + TrainingYears
  • Fit full model, remove invalid and influential points
  • Coefficient interpretation

3. Model Diagnostics
  • Residual analysis
  • Normality and homoscedasticity checks
  • Variance inflation factor (VIF) for multicollinearity

4. Model Refinement
  • Remove invalid data points (e.g., negative training years)
  • Compare adjusted R² and AIC for model selection

⸻

📈 Key Insights (Business-Oriented)
  • 📉 Higher VO₂max strongly predicts faster race times
    → Runners with greater aerobic capacity finish faster
  • 📉 Higher weekly mileage also predicts better performance
    → Training volume is an important driver
  • ⚖️ Body mass and age have weaker positive effects on race time
    → Slightly slower times for heavier or older runners
  • ✅ Refined model explains ~51% of variance with valid assumptions
    → Model is robust and interpretable

⸻

🧠 Model Interpretation
  • Regression coefficients quantify how each factor influences race time
  • Example:
    • +1 ml/kg/min VO₂max → ~0.39 min faster race
    • +1 km weekly mileage → ~0.08 min faster race
  • Makes model actionable for training recommendations

⸻

🚀 Practical Impact
This analysis can help coaches and runners:
  • Focus on improving aerobic capacity (VO₂max)
  • Design training plans with adequate weekly mileage
  • Understand relative impact of body composition and age
  • Make data-driven decisions for performance improvement

⸻

💻 Technologies Used
  • R
  • Packages:
    • psych
    • ggplot2
    • stats (base R)

⸻

▶️ How to Run
  1. Clone the repository
  2. Open the R script in RStudio
  3. Install required packages:
```R
install.packages(c("psych", "ggplot2"))

	4.	Run the analysis script

⸻

## 📁 Project Structure
```
Endurance-Performance-Regression/
│
├── data/        # Raw and cleaned datasets
├── scripts/     # R scripts for analysis
├── output/      # Figures and tables
├── report/      # PDF report of findings
├── README.md
└── .gitignore
```
⸻

🧩 Skills Demonstrated
• Exploratory data analysis
• Multiple linear regression modeling
• Model diagnostics and refinement
• Data storytelling & business interpretation
• Data visualization in R

⸻

🔮 Future Improvements
• Include training intensity, gender, and injury history
• Apply predictive modeling for performance forecasts
• Develop interactive dashboards for runners/coaches
• Explore machine learning approaches for performance prediction

⸻

👤 Author

Jinxi Zhang
Data Analyst