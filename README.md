# Employee Manager Report Analysis (MySQL Mini Project)

## 📌 Project Overview
This MySQL mini project analyzes the relationship between employees and their managers.  
The goal is to find all managers who have **more than 7 employees reporting to them**.

---

## 🧮 Database Details
- **Database Name:** `Project`
- **Table Name:** `Employees`

### Table Structure
Column Name                    Data Type                       Description                
------------------------------------------------------------------------------------------
 EmployeeID                          INT                              Unique ID for each employee
 EmployeeName                    VARCHAR(225)           Employee's name             
 ManagerID                           INT                               Manager’s Employee ID       

---

## ⚙️ SQL Query Used

```sql
select e.EmployeeName as Manager_Name,
count(emp.EmployeeID) as Report_Count
from Employees emp
join Employees e
on emp.ManagerID = e.EmployeeID
group by e.EmployeeName
having count(emp.EmployeeID) > 7;


📊 Output
Displays the list of managers who have more than 7 employees under their supervision.

Manager_Name	Report_Count
--------------------------------------------
Eve	                          8

----

🧠 Key Concepts Used
1.Self Join
2.Group By
3.Having Clause
4.Aggregation Functions (COUNT())
----

🚀 How to Run
1.Open MySQL Workbench 

2.Copy the SQL code from MySql Mini project.sql

3.Execute step by step:

             Create the database

             Create the table

             Insert the data

            Run the final query

👩‍💻 Author
Nivetha Venkatraman
Power BI & SQL Enthusiast | Mathematics Graduate
📫 GitHub Profile ( https://github.com/Nivethasathish27 )

