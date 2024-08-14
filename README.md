# SQL-Refresher-
This is Repository is for a refresher purpose 

Table name: Customer record
Columns: Age, Gender, State, Names

# Test 1
Write an SQL (Sequel) query
*  to find all the customers who are between the ages of 16 and 25
* customers that either live in Tamasia, Brooklyn, Beverly
* Their gender isn't n/a
* And their names starts with either a 'C' or an 'O'
and order it by age

SELECT *
FROM Customer record
WHERE (Age BETWEEN 16 AND 25)
AND (State IN ("Tamasia", "Brooklyn", "Beverly"))
AND (Gender != n/a)
AND (Names LIKE "C%" OR Names LIKE "O%" )
ORDER BY Age;
 ![image](https://github.com/user-attachments/assets/6bca9987-8caa-46a2-bbc9-466afda615af)

# Test 2
Using the same table, write a query

* Of customers that are either 18 or 20
* Customers that live in Brooklyn
* gender isn't female and N/A
* Names contains a stone in it
and order it in a descending order by age

SELECT *
FROM Customer record
WHERE (Age = 18 OR Age =20)
AND (State = "Brooklyn")
AND (Gender NOT IN ("female", "N/A"))
AND (Names LIKE "%stone%")
ORDER BY Age DESC;

# Test 3 
*  Retrieve unique records from a table

  SELECT DISTINCT Names, Age
  FROM Customer records;

# Test 4
*  What is the difference between DELETE and TRUNCATE commands?
    * DELETE removes rows based on a condition and can be rolled back if used within a transaction.
    * TRUNCATE removes all rows from a table without logging individual row deletions and cannot be rolled back.
# Test 5
*  Explain the difference between a stored procedure and a function.
    * A stored procedure performs a task but doesn't return a value. A function performs a calculation and returns a value. Functions can be used in SQL expressions; procedures cannot.
