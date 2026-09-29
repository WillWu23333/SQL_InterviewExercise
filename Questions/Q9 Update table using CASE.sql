DROP TABLE IF EXISTS people;
CREATE TABLE people (
	-- id int GENERATED ALWAYS AS IDENTITY, -- PostgreSQL only
	id INTEGER PRIMARY KEY AUTOINCREMENT, -- SQLite
	name TEXT,
	gender varchar(1)
);

-- GENERATED ALWAYS AS IDENTITY creates an auto-incrementing sequence for primary keys:

-- Every time a new row is added, the database automatically generates the next sequential integer (1, 2, 3, etc.) for id column.

-- GENERATED ALWAYS prevents accidental manual insertion of custom values into the id column unless explicitly overridden.


INSERT INTO people (name, gender)
VALUES
	('mike', 'M'),
	('sarah', 'F'),
	('john', 'M'),
	('lisa', 'F'),
	('jacob', 'M'),
	('ellen', 'F'),
	('christopher', 'M'),
	('maria', 'F');

-- select * from people;

UPDATE people
SET gender = "yjsp"
	-- CASE
	-- 	WHEN gender = 'M' THEN 'F'
	-- 	ELSE 'M'
	-- END
WHERE
	gender IS NOT NULL;

select * from people;