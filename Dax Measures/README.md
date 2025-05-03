# HR Attrition Dashboard - DAX Measures

This folder contains all DAX measures created for the **HR Attrition Dashboard** project. These measures power the visual insights in Power BI, helping stakeholders understand attrition trends, workforce costs, and income patterns.

---

## Project Summary

The HR Attrition Dashboard analyzes employee turnover, monthly income, and related HR metrics. The goal is to provide management with actionable insights on workforce stability and financial exposure.

---

## Tools & Technologies

- **Power BI Desktop**
- **DAX (Data Analysis Expressions)**
- **Excel** (for raw data source)

---

## Data Source

The dataset used is a sample HR dataset containing employee demographics, income, job roles, and attrition status. Loaded into Power BI from Excel.

---

## Folder Structure

Each DAX measure is stored in a `.dax` file under this folder. This makes the logic easy to review, track, and reuse.

---

## Measures Overview

### 1. Total Employees

- **Purpose:** Base metric for calculating ratios.
- **Used In:** KPI Card, Attrition Rate

### 2. Exit Employees

- **Purpose:** Counts employees who left the company.
- **Used In:** KPI Card, Attrition Rate

### 3. Attrition Rate

- **Purpose:** Percentage of employees who exited.
- **Used In:** KPI Card, Trend Line

### 4. Sum of Monthly Income

- **Purpose:** Total salary paid monthly.
- **Used In:** KPI Card, Salary Trend Chart

### 5. Average Monthly Income

- **Purpose:** Average earnings per employee.
- **Used In:** KPI Card, Comparison by Department

---

## How to Use

- Open each `.dax` file to review the corresponding measure logic.
- Copy into your Power BI model as needed.
- All measures follow clear naming conventions and best practices.

---

## Author

Kehinde Ojo  
Financial & Data Analyst  
LinkedIn Profile https://www.linkedin.com/in/kehinde-ojo-86b61b124
