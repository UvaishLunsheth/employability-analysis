# Employability Analysis - India

## Problem Statement
Does academic performance predict employability among engineering
graduates in India?

## Tools Used
* Excel
* SQL
* Python
* Power BI

## Project Structure
```
employability-analysis/
├── data/
│   ├── raw/          # Raw datasets
│   └── processed/    # Cleaned datasets
├── excel/            # Excel analysis files
├── sql/              # SQL queries
├── python/           # Python scripts & notebooks
├── powerbi/          # Power BI dashboard files
├── README.md
└── requirements.txt
```

## Setup

1. Create conda environment:
```
   conda create -n employability_env python=3.10
```

2. Activate environment:
```
   conda activate employability_env
```

3. Install dependencies:
```
   pip install -r requirements.txt
```

## Key Findings

### 1. Overall Placement Performance

* Total Students: 401
* Placement Rate: 49.63%
* Only half of the students were successfully placed.

---

### 2. Academic Performance vs Employability

* High CGPA students: 50.95% placement rate
* Average CGPA students: 44.58% placement rate
* Minimal difference observed between categories

**Insight:**
Academic performance alone is not a strong predictor of employability.

---

### 3. CGPA vs Placement (Direct Comparison)

* Avg CGPA (Placed): 8.30
* Avg CGPA (Not Placed): 8.24

**Insight:**
There is negligible difference in academic scores between placed and non-placed students.

---

### 4. Skills Impact on Employability

* Avg Skill Score (Placed): 5.88
* Avg Skill Score (Not Placed): 5.21

**Insight:**
Students with higher skill scores are significantly more likely to be placed.

---

### 5. Skill Score Trend

* Placement rate increases with higher skill scores
* Strong positive relationship between practical exposure and employability

---

### 6. Backlogs Effect

* No backlog: 62.67% placement rate
* With backlog: 10.89% placement rate

**Insight:**
Backlogs severely reduce employability chances.

---

### 7. Communication Skills

* Moderate impact observed
* No strong linear relationship

---

## Final Conclusion

Academic performance alone does not guarantee employability among engineering graduates in India.

Skill-based factors such as internships, training, and project experience play a significantly more important role in determining placement outcomes. Additionally, academic consistency (absence of backlogs) is a critical factor influencing employability.

---

## Project Status

SQL Analysis Completed
Next Step: Python (Statistical Analysis & Visualization)
