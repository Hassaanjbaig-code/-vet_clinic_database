/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');
INSERT INTO animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) VALUES (
    1, 'Agumon', '2020-02-03', 0, FALSE, 10.23
);
INSERT INTO animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) VALUES (
    2,'Gabumon', '2018-11-15', 2, TRUE, 8 
);
INSERT INTO ANIMAL(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) VALUES (
    2,'Pikachu', '2021-01-07', 1, FALSE, 15.04 
);
INSERT INTO ANIMAL(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) VALUES (
    3,'Devimon', '2021-01-07', 1, FALSE, 15.04 
);