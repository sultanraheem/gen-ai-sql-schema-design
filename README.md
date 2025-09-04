# Generative AI for Database & Data Warehouse Schema Design
This project was part of the IBM Generative AI for Data Engineers lab. The focus was on learning how to use AI-assisted workflows for schema design, rather than deploying a production-ready data warehouse.
<img width="1483" height="1878" alt="gen-ai-sql-schema-design" src="https://github.com/user-attachments/assets/023ba104-1b38-4103-9f77-48e843aa7169" />

This repository contains the work completed for the lab **Generative AI for Database, Data Warehouse Schema Design**. 
  
The goal of this lab was to explore how Generative AI can assist in designing a data warehouse schema, generating SQL code for implementation, and visualizing the schema with DBdiagram.io.

---

## Introduction
Data warehouse schema design is crucial for:
- Organizing and optimizing data storage  
- Ensuring efficient query performance  
- Maintaining data integrity  
- Supporting scalability and flexibility  

In this lab, Generative AI was leveraged to:
1. Propose a data warehouse schema for a **fashion retail organization**  
2. Generate SQL code to create the schema in an SQL engine  
3. Visualize the schema design using **DBdiagram.io**  

---

## Objectives
For a given scenario, the following tasks were completed:
- Propose a data warehouse schema using Generative AI  
- Generate SQL code to create the warehouse tables  
- Create a schema diagram of the warehouse using DBdiagram.io  

---

## Scenario
A **fashion retail organization** hired me as a data engineer to design a data warehouse.  
The warehouse needed to include data from the following sources:

- Employee data  
- Inventory data  
- Sales data  
- Customer profiles  
- Seller data  

The employer requested a **fully planned schema diagram** with relevant attributes, tables, and relationships.  

---

## Approach

### 1. Schema Proposal
Using Generative AI, I generated a detailed schema containing:
- **Employee Table**
- **Inventory Table**
- **Sales Table**
- **Customer Table**
- **Seller Table**
- Supporting tables (e.g., Department, Brand, Category, StoreLocation, etc.)

Each table was designed with appropriate **primary keys** and **foreign keys** to model the relationships.

### 2. SQL Code Generation
A Generative AI model was prompted to produce SQL code that:
- Creates all required tables
- Defines primary keys and foreign keys
- Establishes relationships between tables (e.g., Sales → Employee, Customer, Inventory)

### 3. Schema Visualization
The generated SQL was imported into **DBdiagram.io** to create a schema diagram for the proposed data warehouse.  
This provided a clear, visual representation of how the different entities connect.

---

## Challenges
While working with the SQL schema design, I faced parsing errors in dbdiagram.io.  
I used **ChatGPT** to debug and fix issues such as:
- Unsupported data types (e.g., replacing `TEXT` with `VARCHAR`)  
- Missing precision in `DECIMAL` fields  
- Handling self-referencing foreign keys (e.g., `Employee.manager_id`)  

---

## Outcomes
- A **proposed warehouse schema** for a fashion retail organization  
- **SQL code** that can be used to create the warehouse in MySQL  
- A **schema diagram** visualized with DBdiagram.io  
- Improved understanding of how Generative AI can support data engineers in schema design and implementation  

---

## How to Use
1. Clone this repository:  
   ```bash
   git clone https://github.com/sultanraheem/gen-ai-sql-schema-design.git

   Navigate into the folder:

cd gen-ai-sql-schema-design


Use the provided SQL file to create the schema in your SQL engine (e.g., MySQL).

Import the SQL file into DBdiagram.io
to generate a visual schema diagram.

Repository Structure
<img width="613" height="149" alt="image" src="https://github.com/user-attachments/assets/6fbb358e-2489-40d2-b50a-a5a42db29324" />


## Tools & Technologies

Generative AI (ChatGPT) → schema proposals, SQL code generation, debugging

MySQL → database schema creation

DBdiagram.io → schema visualization

Notes

This project was part of the IBM Generative AI for Data Engineers lab.
The focus was on learning how to use AI-assisted workflows for schema design, rather than deploying a production-ready data warehouse.
