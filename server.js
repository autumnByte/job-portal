require("dotenv").config();
const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
app.use(express.json());
app.use(cors());

// 🔌 MySQL connection
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

db.connect((err) => {
  if (err) {
    console.error("Connection failed:", err);
  } else {
    console.log("Connected to MySQL");
  }
});

// 📌 GET all jobs
app.get("/jobs", (req, res) => {
  db.query("SELECT * FROM job_listings", (err, result) => {
    if (err) {
      console.error(err);
      return res.status(500).send("Error fetching jobs");
    }
    res.json(result);
  });
});

// 📌 GET job by ID
app.get("/jobs/:id", (req, res) => {
  db.query(
    "SELECT * FROM job_listings WHERE job_id = ?",
    [req.params.id],
    (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).send("Error fetching job");
      }
      res.json(result);
    },
  );
});

// 📌 POST new job
app.post("/jobs", (req, res) => {
  const { company_id, job_title, location, min_salary, max_salary } = req.body;

  // ✅ Validation
  if (!job_title || !location) {
    return res.status(400).send("Missing required fields");
  }

  db.query(
    "INSERT INTO job_listings (company_id, job_title, location, min_salary, max_salary) VALUES (?, ?, ?, ?, ?)",
    [company_id, job_title, location, min_salary, max_salary],
    (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).send("Error adding job");
      }
      res.send("Job added");
    },
  );
});

// 📌 DELETE job
app.delete("/jobs/:id", (req, res) => {
  db.query(
    "DELETE FROM job_listings WHERE job_id = ?",
    [req.params.id],
    (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).send("Error deleting job");
      }
      res.send("Job deleted");
    },
  );
});

// 📊 STATS API (optional but good)
app.get("/stats", (req, res) => {
  db.query(
    `SELECT 
      COUNT(*) AS total_jobs,
      COUNT(DISTINCT location) AS locations
     FROM job_listings`,
    (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).send("Error fetching stats");
      }
      res.json(result[0]);
    },
  );
});

// 🚀 Start server
app.listen(process.env.PORT, () => {
  console.log(`Server running on port ${process.env.PORT}`);
});
