Healthcare Patient Data Analysis SQL + Power BI End-to-End Analytics Project

Project Overview
This project performs end-to-end healthcare data analysis on a patient dataset using MySQL for data processing and Power BI for visualization. The dataset contains patient-level hospital data including demographics, medical conditions, billing details, admission types, insurance providers, and admission/discharge dates.

The objective was to:
•	Clean and validate healthcare data
•	Calculate operational KPIs
•	Analyze revenue and length-of-stay patterns
•	Identify high-performing hospitals
•	Build an interactive dashboard for business users

Dataset Details
The dataset includes the following fields:
•	Name
•	Age
•	Gender
•	Blood Type
•	Medical Condition
•	Admission Type
•	Doctor
•	Hospital
•	Insurance Provider
•	Billing Amount
•	Date of Admission
•	Discharge Date
•	Room Number
•	Medication
•	Test Results
•	Total Records: ~40,000 patients

Data Cleaning & Validation (SQL)
The following validation checks were performed:
✔ Missing Value Check
Used COUNT() on each column to verify data completeness.
✔ Date Format Standardization
•	Converted string dates using:
•	STR_TO_DATE()
•	Handled multiple formats:
•	'%Y-%m-%d'
•	'%d-%m-%Y'
✔ Invalid Date Detection
•	Identified incorrect records where:
•	Discharge Date < Admission Date
•	Filtered valid records before calculating Length of Stay.

Key KPIs Calculated
Using aggregate SQL functions:
•	Total Patients
•	Total Revenue
•	Average Billing Amount
•	Average Patient Age
•	Average Length of Stay
Used:
•	COUNT()
•	SUM()
•	AVG()
•	ROUND()
•	DATEDIFF()

Business Analysis Performed
Patient Demographics
•	Patient distribution by Gender
•	Age statistics (Min, Max, Average)
Admission Analysis
•	Patients by Admission Type
•	Revenue by Admission Type
•	Length of Stay by Admission Type
Medical Condition Analysis
•	Patient count by Medical Condition
•	Average Billing Amount by Condition
•	Average Length of Stay by Condition
•	Top 3 costliest medical conditions
•	Ranking conditions by Length of Stay using:
•	RANK() OVER (ORDER BY avg_los DESC)
Hospital Performance Analysis
•	Total Patients per Hospital
•	Total Revenue per Hospital
•	Average Revenue per Hospital
•	Top 10 Hospitals by Revenue
Insurance Provider Analysis
•	Patient count by Insurance Provider
Doctor Performance
•	Top 5 Doctors by Patient Count
Monthly Trend Analysis
•	Monthly patient admission trend using:
•	MONTH(STR_TO_DATE(Date of Admission))

Power BI Dashboard Features
The interactive dashboard includes:
KPI Cards
•	Total Patients
•	Total Revenue
•	Average Billing Amount
•	Average Length of Stay
•	Average Patient Age
 Visualizations
•	Bar Chart – Patients by Hospital
•	Bar Chart – Billing Amount by Medical Condition
•	Bar Chart – Length of Stay by Admission Type
•	Scatter Plot – Billing Amount vs Length of Stay
•	Patient Distribution by Gender
Interactive Slicers
•	Gender
•	Admission Type
•	Medical Condition
•	Hospital
•	Insurance Provider
The dashboard enables dynamic filtering and cross-analysis for decision-making.

Key Insights
•	Certain medical conditions show significantly higher average length of stay.
•	Higher billing amounts often correlate with longer hospitalization periods.
•	A small group of hospitals contributes to a large portion of total revenue.
•	Emergency admissions tend to have longer stay duration compared to elective cases.
•	Revenue distribution varies significantly across medical conditions.

Tools & Technologies
•	MySQL
•	Power BI Desktop
•	SQL Window Functions
•	Aggregate Functions
•	Date Functions
•	Data Cleaning Techniques

Repository Structure
Healthcare-Data-Analysis-SQL-PowerBI/
│
├── patient_data_analysis.sql
├── Healthcare_Dashboard.pbix
├── dashboard_screenshot.png
└── README.md

How to Run This Project
•	Import dataset into MySQL
•	Execute SQL script
•	Open Power BI (.pbix) file
•	Explore dashboard using slicers and filters
 
Author
Reshma Babu
Aspiring Data Analyst | SQL | Power BI
Bangalore, India
