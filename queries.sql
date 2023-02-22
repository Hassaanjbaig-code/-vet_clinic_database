/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';
select * from animal where animalname like '%mon';
select * from animal where animal_date_of_birth between '2016-11-15' AND '2019-11-15';
select * from animal where neutered < 3 ;
select * from animal where animalname between 'Agumon' AND 'Pikachu';
select * from animal where neutered like true;
select * from animal where animalname not like 'Gabumon';
select * from animal where animal_weight_kg between 10 AND 17;


start transaction;
update animal set species = 'unspecified';
select species from animal;
rollback;
select species from animal;
update animal set species = 'digimon' where animalname like '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
select species from animal;
commit;
select * from animal;
start transaction;
delete from animal;
rollback;

start transaction;
delete from animal where animal_date_of_birth >= '2022-01-01';
savepoint my_snapshot;
update animal set animal_weight_kg = animal_weight_kg * -1;
rollback to my_snapshot;
update animal set animal_weight_kg = animal_weight_kg * -1 where animal_weight_kg < 0;
commit;


select count(animal_escape_attempts) from animal where animal_escape_attempts > 0;
select avg(animal_weight_kg) from animal;
select count(animal_escape_attempts) from animal group by neutered;
select min(animal_weight_kg) from animal;
select max(animal_weight_kg) from animal;
SELECT species, ROUND(AVG(animal_escape_attempts)) FROM animal
  WHERE animal_date_of_birth >= '1990-01-01' AND animal_date_of_birth <= '2000-12-31' GROUP BY species;