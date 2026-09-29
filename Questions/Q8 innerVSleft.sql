
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

select * from left_table;

select * from right_table; 