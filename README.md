# SQL Challenge: Pewlett Hackard Employee Database

Created by Matthew Guy, 2025

An in-depth research project analyzing employee data from the 1980s and 1990s using PostgreSQL. This project involves data modeling, data engineering, and data analysis to reconstruct and query a historical employee database. The objective is to ensure data integrity, optimize queries, and extract meaningful insights from legacy employee records.

## Table of Contents
- [Features](#features)
- [Installation](#installation)
- [Usage Instructions](#usage-instructions)
- [Database Schema](#database-schema)
- [Running SQL Queries](#running-sql-queries)
- [Data Analysis Queries](#data-analysis-queries)
- [Future Enhancements](#future-enhancements)
- [About](#about)
- [Resources](#resources)

## Features
- **Database Reconstruction:** Designed table schemas to store historical employee data.
- **Data Engineering:** Implemented primary keys, foreign keys, and constraints for data integrity.
- **Optimized Query Performance:** Ensured queries are structured efficiently for analysis.
- **Comprehensive Data Analysis:** Executed SQL queries to answer key business questions about employees and departments.
- **Entity Relationship Diagram (ERD):** Visualized table relationships using QuickDBD.
- **Scalable & Maintainable:** Database is designed for efficient querying and potential expansion.

## Installation

### Requirements
- PostgreSQL and pgAdmin 4 installed.
- Access to six CSV data files.
- SQL script to create database schema.

### Pre-Built Setup
Download the provided SQL schema from the repository and ensure PostgreSQL is installed for execution.

## Usage Instructions
1. **Database Setup** – Open **pgAdmin 4** and create a new database (`employee_db`).
2. **Run Table Schema** – Execute the `table_schema.sql` script to create tables and establish relationships.
3. **Running SQL Queries** – Open **pgAdmin’s Query Tool**, load, and execute `data_analysis_queries.sql` to retrieve insights about employees and their historical records.

## Database Schema
The database consists of six tables:

- **Department** (`dept_no`, `dept_name`)
- **Title** (`title_id`, `title`)
- **Employee** (`emp_no`, `emp_title_id`, `birth_date`, `first_name`, `last_name`, `sex`, `hire_date`)
- **Salary** (`emp_no`, `salary`)
- **Dept_Employee** (`emp_no`, `dept_no`)
- **Dept_Manager** (`dept_no`, `emp_no`)

The **ERD (Entity Relationship Diagram)** outlines the connections between these tables, ensuring proper data normalization and efficient querying.

## Data Analysis Queries
During the analysis phase, we executed **eight SQL queries** to extract key insights from the employee database:

1. **Retrieve Employee Salary Data** – Listed each employee’s ID, last name, first name, sex, and salary.
2. **Employees Hired in 1986** – Retrieved employees who were hired in 1986 along with their names and hire dates.
3. **Department Managers** – Listed department managers along with their department number, department name, employee number, first name, and last name.
4. **Employee Department Assignments** – Displayed department number, employee number, first name, last name, and department name for each employee.
5. **Filtered Employees** – Identified employees with the first name **Hercules** and a last name starting with **B**.
6. **Employees in Sales Department** – Extracted all employees who belong to the **Sales** department, listing their employee number, first name, and last name.
7. **Employees in Sales & Development** – Expanded the previous query to include employees from both **Sales** and **Development** departments.
8. **Most Common Last Names** – Counted the occurrences of last names among employees and sorted them in descending order.

## Future Enhancements
- **Implement indexing** to optimize query performance and reduce execution time for large datasets.
- **Expand analysis with advanced SQL functions** such as window functions and CTEs.
- **Create visual dashboards** using Python, Pandas, and Matplotlib to provide better insights.
- **Integrate automation scripts** to update records dynamically from external data sources.

## About
This project reconstructs an employee database for Pewlett Hackard, ensuring accurate historical data storage and efficient SQL-based analysis. By leveraging PostgreSQL, the database structure adheres to best practices for relational databases and performance optimization.

## Resources
- **ERD Diagram:** – Used QuickDBD to sketch the Entity Realationship Diagram of the tables.  
- **DU Bootcamp Module 9 Lessons** – Provided guidance on SQL structure and syntax for some of the data analysis queries.
- **Quick Database Diagrams (QuickDBD)** – Used to create the **ERD image** for `employee_db`.
- **ChatGPT** – Assisted with refining the database schema structure.  