/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';
select * from animal where animalname like '%mon';
select * from animal where animal_date_of_birth between '2016-11-15' AND '2019-11-15';
select * from animal where neutered < 3 ;
select * from animal where animalname between 'Agumon' AND 'Pikachu';
select * from animal where neutered like true;
select * from animal where animalname not like 'Gabumon';
select * from animal where animal_weight_kg between 10 AND 17;
