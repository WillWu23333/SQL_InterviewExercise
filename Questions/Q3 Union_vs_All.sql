/*
The union operator combines two or more SELECT statements into one result set.
- UNION returns only DISTINCT values. So NO duplicate values in the final result set.
- UNION ALL returns EVERYTHING including duplicates.
*/

DROP TABLE IF EXISTS coolest_guy_ever;
CREATE TABLE coolest_guy_ever (
	name TEXT,
	year smallint
);
INSERT INTO coolest_guy_ever (name, year)
VALUES
	('jaime shaker', '1998'),
	('jame dean', '1954'),
	('arthur fonzarelli', '1960');

DROP TABLE IF EXISTS sexiest_guy_ever;
CREATE TABLE sexiest_guy_ever (
	name TEXT,
	year smallint
);
INSERT INTO sexiest_guy_ever (name, year)
VALUES
	('brad pitt', '1994'),
	('jaime shaker', '1998'),
	('george clooney', '2001');

-- ---------------------------------------------------
# Here 'jaime shaker' is the duplicate value.
# UNION ALL returns DISTINCT values and therefore the result contains only ONE 'jaime shaker'.

SELECT * FROM coolest_guy_ever
 union
SELECT * FROM sexiest_guy_ever;

# UNION ALL returns everything --> 2 'jaime shaker'

SELECT * FROM coolest_guy_ever
UNION ALL
SELECT * FROM sexiest_guy_ever;