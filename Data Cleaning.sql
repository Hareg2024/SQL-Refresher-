SELECT * FROM Customer record
 WHERE (Age BETWEEN 16 AND 25) 
 AND (State IN ("Tamasia", "Brooklyn", "Beverly")) 
 AND (Gender != n/a) 
 AND (Names LIKE "C%" OR Names LIKE "O%" ) ORDER BY Age;


SELECT *
 FROM Customer record 
 WHERE (Age = 18 OR Age =20) 
 AND (State = "Brooklyn") 
 AND (Gender NOT IN ("female", "N/A")) 
 AND (Names LIKE "%stone%") ORDER BY Age DESC;


''' To identify duplicates '''
SELECT first_name, last_name, COUNT(*)
FROM customers
GROUP BY first_name, last_name
HAVING COUNT(*) > 1;

''' To remove duplicates '''
DELETE FROM customers
WHERE rowid NOT IN (
SELECT MIN(rowid)
FROM customers
GROUP BY first_name, last_name
);

''' Handling Missing data'''

''' Check the missing data first if there is'
SELECT *
FROM sales
WHERE total_amount IS NULL;

''' Replace the missing value either with zero, mean , etc...'''
UPDATE sales
SET total_amount = 0
WHERE total_amount IS NULL;

''' Format date data into one format like yyyy-mm-dd'''
UPDATE employees
SET date_of_birth = TO_DATE(date_of_birth,'MM/DD/YYYY')
WHERE date_of_birth LIKE '%/%/%';

''' Handling Outliers'''
''' To identify outliers'
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) + 2 * STDDEV(salary) FROM
employees);

''' Replace outliers with two standard devaition '''
UPDATE sales
SET total_amount = 0
UPDATE employees
SET salary = (SELECT AVG(salary) + 2 * STDDEV(salary) FROM
employees)
WHERE salary > (SELECT AVG(salary) + 2 * STDDEV(salary) FROM
employees);

'''Removing Unnecessary Data, if we no longer need  data less than jan 2022, we can delete it'''
DELETE FROM orders
WHERE order_date < '2022-01-01';

''' Removing unnecessary columns'''
ALTER TABLE employees
DROP COLUMN temp_column;