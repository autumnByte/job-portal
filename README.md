# 🚀 Job Portal Data Management System  
### *(Full Stack + Data Engineering Project)*  

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)
![Node.js](https://img.shields.io/badge/Backend-Node.js-green)
![Express](https://img.shields.io/badge/API-Express-black)
![Frontend](https://img.shields.io/badge/Frontend-HTML%20%2B%20JS-orange)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)

---

## 📌 Overview
This project is a **full-stack job portal system** built using **MySQL, Node.js, and a dynamic frontend UI**.

It demonstrates core **Data Engineering concepts** such as:
- Structured data storage  
- Data validation  
- Query optimization  
- Analytical insights  

along with **backend API development and frontend integration**.

---

## 🎯 Problem Statement
Managing job listings and candidate data at scale requires:
- Efficient storage  
- Data integrity  
- Fast querying  
- Real-time interaction  

Traditional SQL-only systems lack user interaction and dynamic processing.

👉 This project solves that by combining:
- Relational database design  
- REST APIs using Node.js  
- Interactive frontend UI  

---

## ⚙️ Features

### 🗄️ Data Storage Layer (MySQL)
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

### 🌐 Backend API Layer (Node.js + Express)
- REST APIs:
  - `GET /jobs` → Fetch all jobs  
  - `GET /jobs/:id` → Fetch job by ID  
  - `POST /jobs` → Add new job  
  - `DELETE /jobs/:id` → Delete job  
  - `GET /stats` → Dashboard statistics  

---

### 💻 Frontend UI
- Interactive dashboard built using HTML, CSS, JavaScript  
- Features:
  - View job listings  
  - Add new jobs  
  - Delete jobs  
  - Live UI updates  
  - Dashboard stats (total jobs, locations, etc.)

---

### 📊 Analytical Insights
- Most in-demand skills  
- Hiring trends by company  
- Applications per job  
- Highest paying jobs  

---

## 🛠️ Tech Stack

| Layer | Technology |
|------|-----------|
| Database | MySQL |
| Backend | Node.js, Express |
| Frontend | HTML, CSS, JavaScript |
| Tools | MySQL Workbench |

---

## ▶️ How to Run

```sql
1️⃣ Setup Database
CREATE DATABASE job_portal_db;
USE job_portal_db;
Run files in order:
schema.sql
data.sql
views.sql
procedures.sql
triggers.sql
queries.sql

2️⃣ Setup Backend
npm install
node server.js
Server runs at:
http://localhost:3000

3️⃣ Run Frontend
Open index.html in browser
```
---

## ✨ Unique Points
- Combines Data Engineering + Full Stack Development
- Real-world relational schema design
- Data validation using triggers
- Automation using stored procedures
- REST API integration with database
- Interactive frontend UI

---

## 🔮 Future Improvements
- Authentication system (login/signup)
- Role-based access (admin/employer/seeker)
- Search & filter functionality
- Deployment (Render / Railway / Vercel)
- Big data integration (Kafka, Spark)
- Dashboard visualization (Power BI / Tableau)

---

## 📌 Conclusion
This project demonstrates a complete pipeline from data storage → processing → validation → API → frontend visualization, reflecting real-world data engineering and backend development practices.

---

## 👤 Author

- Suhani Dwivedi
- B.Tech CSE, KIIT University
