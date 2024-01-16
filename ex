create table animals(animal_id int primary key, animal_name varchar(50), species varchar(50), habitat_id int);
insert into animals values (101, 'Tiger', 'Mammal', 1),
(102, 'Eagle', 'Bird', 1),
(103, 'Cactus Mouse', 'Rodent', 2),
(104, 'Camel', 'Mammal', 2),
(105, 'Dolphin', 'Mammal', 3),
(106, 'Shark', 'Fish', 3),
(107, 'Seagull', 'Bird', 3);
create table habitats (habitat_id int primary key, habitat_name varchar(50), climate varchar(50));
insert into habitats values (1, 'Forest', 'Temperate'),
(2, 'Desert', 'Arid'),
(3, 'Ocean', 'Marine');
							 
SELECT 
    h.habitat_id,
    h.habitat_name,
    h.climate,
    COUNT(a.animal_id) AS total_animals
FROM 
    habitats h
LEFT JOIN 
    animals a ON h.habitat_id = a.habitat_id
GROUP BY 
    h.habitat_id, h.habitat_name, h.climate; 
