/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    name varchar(100),
);

CREATE TABLE ANIMAL(id INTEGER,
animalname varchar(50),
animal_date_of_birth DATE,
animal_escape_attempts INTEGER,
neutered BOOLEAN,
animal_weight_kg DECIMAL
)