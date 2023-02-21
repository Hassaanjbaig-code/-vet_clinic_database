/* Database schema to keep the structure of entire database. */

CREATE TABLE animal(id INTEGER,
animalname varchar(50),
animal_date_of_birth DATE,
animal_escape_attempts INTEGER,
neutered BOOLEAN,
animal_weight_kg DECIMAL
)

ALTER TABLE animal
ADD COLUMN species varchar(50);
