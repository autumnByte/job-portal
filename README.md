# 🚀 Job Portal Data Management System  
### *(Data Engineering Project)*
![MySQL](https://img.shields.io/badge/Database-MySQL-blue)
![SQL](https://img.shields.io/badge/Language-SQL-orange)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)

---

## 📌 Overview
This project implements a **data-driven job portal system** using MySQL. It focuses on structured data storage, processing, validation, and analytics, aligning with core **Data Engineering principles**.

The system manages job seekers, companies, job listings, applications, and skills while providing meaningful insights through SQL queries.

---

## 🎯 Problem Statement
Managing large volumes of job postings and candidate data efficiently is challenging. Traditional systems lack structured data handling, validation, and analytical capabilities.

This project solves this by building a **relational database system** that ensures:
- Data integrity  
- Efficient querying  
- Insight generation  

---

## ⚙️ Features

### 🗄️ Data Storage Layer
- Normalized relational database (`job_portal_db`)
- Tables:
  - Users  
  - Companies  
  - Job Seekers  
  - Job Listings  
  - Applications  
  - Skills  
  - Mapping tables (Many-to-Many relationships)

---

### 🔄 Data Processing Layer
- Complex SQL queries using:
  - JOIN operations  
  - Aggregations (COUNT, GROUP BY)  
  - Subqueries  

---

### 🛡️ Data Validation Layer
- Trigger implemented:
  - Prevents duplicate job applications  
  - Ensures data consistency  

---

### 🧩 Data Abstraction Layer
- SQL Views:
  - Job listings with company details  
  - Application summaries  
  - Candidate skills  
  - Company job counts  

---

### ⚡ Automation Layer
- Stored Procedure:
  - `apply_for_job`  
  - Automates job application insertion  

---

### 📊 Analytical Insights
- Most in-demand skills  
- Hiring trends by company  
- Number of applications per job  
- Highest paying jobs  

---

## 🛠️ Tech Stack
- **Database:** MySQL  
- **Tool:** MySQL Workbench  
- **Language:** SQL  

---

## 🗂️ Database Schema
The system includes the following key entities:
- Users (job seekers & employers)  
- Companies  
- Job Seekers  
- Job Listings  
- Applications  
- Skills  

### Relationships:
- One-to-many → Company → Job Listings  
- One-to-many → User → Job Seeker / Company  
- Many-to-many → Skills mapping tables  

---

## ▶️ How to Run

1. Open MySQL Workbench  
2. Create database:
   ```sql
   CREATE DATABASE job_portal_db;
   USE job_portal_db;
3.Run files in order:
```sql
   schema.sql
   data.sql
   queries.sql
   views.sql
   procedures.sql
   trigger.sql
```

---

## ✨ Unique Points
- Data validation using triggers
- Automation using stored procedures
- Analytical SQL queries for insights
- Proper normalized schema design
- Simulates a real-world data engineering pipeline

---

## 🔮 Future Improvements
- Frontend integration (React)
- Real-time streaming using Kafka
- Workflow orchestration using Airflow
- Big data processing using Spark
- Dashboard visualization (Power BI / Tableau)

---

 ## 📌 Conclusion

This project demonstrates a structured approach to data management using SQL, covering storage, processing, validation, and analytics. It reflects real-world data engineering concepts in a simplified system.

## 👤 Author

- Suhani Dwivedi
- B.Tech CSE, KIIT University
