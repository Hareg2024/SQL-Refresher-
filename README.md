# SQL-Refresher-
This is Repository is for just a refresher purpose 

Table name: Customer record
Columns: Age, Gender, State, Names

# Test 1
Write an SQL (Sequel) query
🍷 to find all the customers who are between the ages of 16 and 25
🍷 customers that either live in Tamasia, Brooklyn, Beverly
🍷 Their gender isn't n/a
🍷 And their names starts with either a 'C' or an 'O'
and order it by age

SELECT *
FROM Customer record
WHERE (Age BETWEEN 16 AND 25)
AND (State IN ("Tamasia", "Brooklyn", "Beverly"))
AND (Gender != n/a)
AND (Names LIKE "C%" OR Names LIKE "O%" )
ORDER BY Age;

# Test 2
The second test is lightly twitched😅

Using the same table, write a query

🍷 Of customers that are either 18 or 20
🍷 Customers that live in Brooklyn
🍷gender isn't female and N/A
🍷Names contains a stone in it
and order it in a descending order by age

SELECT *
FROM Customer record
WHERE (Age = 18 OR Age =20)
AND (State = "Brooklyn")
AND (Gender NOT IN ("female", "N/A"))
AND (Names LIKE "%stone%")
ORDER BY Age DESC;
