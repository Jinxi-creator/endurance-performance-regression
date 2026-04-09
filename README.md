# 📊 Endurance Performance Analysis (R)

## 📌 Overview

Analyze factors influencing 10 km race performance using **multiple linear regression** in R.  
Key predictors: **VO₂max** and **weekly mileage**. Insights support **training and coaching decisions**.

---

## 💼 Problem

Which physiological and training factors most impact race performance?  
This project identifies **performance drivers** and quantifies their effects.

---

## 🎯 Objectives

- Explore runner characteristics (EDA)
- Build and refine regression model
- Validate assumptions and interpret results

---

## 📂 Dataset

~300 runners:

| Variable        | Description                       |
| --------------- | --------------------------------- |
| `RaceTime`      | 10 km time (minutes)              |
| `VO2max`        | Maximal oxygen uptake (ml/kg/min) |
| `WeeklyMileage` | Weekly distance (km)              |
| `BodyMass`      | Body mass (kg)                    |
| `Age`           | Years                             |
| `TrainingYears` | Structured training years         |

---

## 🛠️ Methodology

- **EDA:** summary stats, scatter plots, correlations
- **Regression:** `RaceTime ~ VO2max + WeeklyMileage + BodyMass + Age + TrainingYears`
- **Diagnostics:** residuals, normality, homoscedasticity, VIF
- **Refinement:** remove invalid/influential points, compare Adjusted R² & AIC

---

## 📈 Key Findings

- 📉 **VO₂max and weekly mileage** → strongest predictors
- ⚖️ **Body mass and age** → minor effects
- ✅ Model explains ~51% variance; assumptions met

---

## 🚀 Impact

- Focus training on **aerobic capacity** and **weekly mileage**
- Understand effects of **body composition and age**
- Support **data-driven performance improvement**

---

## 💻 Technologies

- **R**, packages: `psych`, `ggplot2`, `stats`

---

## ▶️ Run

```R
install.packages(c("psych","ggplot2"))
# open and run analysis script in RStudio
```

📁 Structure

```
Endurance-Performance-Regression/
├── data/        # datasets
├── scripts/     # analysis scripts
├── output/      # figures & tables
├── report/      # PDF report
├── README.md
└── .gitignore
```

🧩 Skills

```
	•	Regression modeling & diagnostics
	•	Data visualization & storytelling
	•	EDA & feature analysis
	•	Business-oriented interpretation
```

🔮 Future Improvements

```
	•	Include training intensity, gender, and injury history
	•	Apply predictive modeling for performance forecasting
	•	Develop interactive dashboards for runners/coaches
	•	Explore machine learning approaches for performance prediction
```

👤 Author - Jinxi Zhang
