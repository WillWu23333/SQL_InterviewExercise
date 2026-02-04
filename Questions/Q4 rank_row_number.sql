DROP TABLE IF EXISTS user_salary;
CREATE TABLE user_salary (
	user_name TEXT,
	salary int
);

INSERT INTO user_salary (user_name, salary)
VALUES 
	('jaime', 100000),
	('robert', 105000),
	('elizabeth', 150000),
	('josh', 80000),
	('mary', 105000),
	('heather', 80000),
	('jennifer', 75000),
	('ken', 80000);
    
-- ----------------------- 

/*
They all window functions. Must be used with the OVER clause. 

- RANK: Will rank a column but will skip a value if there are ties.
- DENSE_RANK: Will rank a column but will NOT skip a value for ties.
- ROW_NUMBER: Assigns a unique row number to each row.
*/

SELECT
	user_name,
	salary,
	RANK() OVER (ORDER BY salary desc),
	DENSE_RANK() OVER (ORDER BY salary desc),
	ROW_NUMBER() OVER ()
FROM
	user_salary;


    