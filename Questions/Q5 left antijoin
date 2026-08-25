-- Find records in a table which are not present in another table.
-- This type of a join is called an anti-join. An anti-join does not have it's own syntax. It is basically a left join (or right join) with a WHERE clause.

-- Create first table and add values
DROP TABLE IF EXISTS left_table;
CREATE TABLE left_table (
	id int
);

INSERT INTO left_table (id)
VALUES 
	(1),
	(2),
	(3),
	(4),
	(5),
	(6);

-- Create second table and add values
DROP TABLE IF EXISTS right_table;
CREATE TABLE right_table (
	id int
);

INSERT INTO right_table (id)
VALUES 
	(2),
	(2),
	(3),
	(6),
	(6),
	(6);

SELECT *
FROM
    left_table left join right_table on left_table.id = right_table.id
-- WHERE
--     right_table.id not in left_table.id    