-- How do you delete multiple entries from a table?

DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
	animal_id int AUTO_INCREMENT PRIMARY KEY,
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
    
select * from animals;
-- ---------------
## check for duplicate entries

select 
	animal_type,
    count(animal_type) as counT
from animals
group by
	animal_type
having counT > 1;
-- ------------
## Method1 DOES NOT work in MYSQL. Fk this shit
/* 
Explanation:
This query works by comparing each row in the table with every other row. 
If it finds duplicates ('a.fruit = b.fruit') and the 'id' of the first row ('a.id') is less than the 'id' of the second row ('b.id'), it deletes the row with the smaller 'id'. This should remove all duplicate from the table basket    
*/
delete 
from 
	animals as a1 -- Delete from a1, 
using
	animals as a2 -- Using a2 as reference
	-- under the following conditions. If met, then the row is deleted from a1
where 
	a1.animal_id > a2.animal_id 
and
	a1.animal_type = a2.animal_type;
-- ------------------------	
## Method 2
DELETE a1
FROM animals AS a1
JOIN animals AS a2
  ON a1.animal_id > a2.animal_id
 AND a1.animal_type = a2.animal_type;
 --  Think of this as: ON and AND works on DELETE, not JOIN

-- The JOIN product above is a full outer join a1 & a2
select * from
FROM animals AS a1
JOIN animals AS a2; 

-- If DELETE a1 w/out condition, we are deleting ALL a1 rows from the product
delete a1 -- This is deleting ALL a1 rows
FROM animals AS a1
JOIN animals AS a2;

-- The conditions limits the deletion 
-- ON a1.animal_id > a2.animal_id
-- AND a1.animal_type = a2.animal_type;

select * from animals;