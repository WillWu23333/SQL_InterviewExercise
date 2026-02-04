-- How do you find duplicates entries in a table?

DROP TABLE IF EXISTS animals;
CREATE TABLE animals (
    animal_id INT AUTO_INCREMENT PRIMARY KEY,
    animal_type TEXT
);

INSERT INTO animals (animal_type)
VALUES
	('dog'),
	('cat'),
	('fish'),
	('hamster'),
	('dog'),
	('pig'),
	('cat'),
	('cat'),
	('rabbit'),
	('turtle');
    
SELECT * FROM animals;

-- --------------------------------------

SELECT
	animal_type,
	count(*)
FROM
	animals
GROUP BY 
	-- Using an aggregate function
	animal_type
HAVING 
	count(*) > 1;
    -- HAVING can filter the results from AggregateFunctions
    -- here we only keep those whose count > 1