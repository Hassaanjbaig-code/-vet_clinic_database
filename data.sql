/* Populate database with sample data. */

INSERT INTO animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) VALUES (
    1, 'Agumon', '2020-02-03', 0, TRUE, 10.23
);
INSERT INTO animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) VALUES (
    2,'Gabumon', '2018-11-15', 2, TRUE, 8 
);
INSERT INTO animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) VALUES (
    3,'Pikachu', '2021-01-07', 1, FALSE, 15.04 
);
INSERT INTO animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) VALUES (
    4,'Devimon', '2017-05-12', 5, TRUE, 11.0
);

insert into animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) values (5, 'Charmander', '2020-02-08', 0, FALSE, '11');

insert into animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) values (6, 'Plantmon', '2021-11-15', 2, true, '-5.7');

insert into animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) values (7, 'Squirtle', '1993-04-02', 3, false, '-12.13');

insert into animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) values (8, 'Angemon', '2021-06-12', 1, true, '-45');

insert into animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) values (9, 'Boarmon', '2005-06-07', 7, true, '20.4');

insert into animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) values (10, 'Blossom', '1998-10-13', 3, true, '17');

insert into animal(id, animalname, animal_date_of_birth,
animal_escape_attempts, neutered, animal_weight_kg) values (11, 'Ditto', '2022-05-14', 4, true, '22');


insert into owners(fullname, age) values ('Sam Smith', 34);

insert into owners(fullname, age) values ('Jennifer Orwell', 19);

insert into owners(fullname, age) values ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14);

insert into owners(fullname, age) values ('Jodie Whittaker', 38);

insert into species(fullname) values ('Pokemon'), ('Digimon');

select * from animal;

update animal set animal.species_id =2 where animal.animalname like '%mon';

update animal set animal.species_id = 1 where animal.species_id is null;

select * from animal;


update animal set owner_id = 1  where animal.animalname like 'Agumon';

update animal set owner_id = 2 where animal.animalname = 'Pikachu' or animal.animalname = 'Gabumon' ;

update animal set animal.owner_id = 3 where animal.animalname like 'Devimon' or animal.animalname like 'Plantmon';

update animal set owner_id = 4 where animal.animalname like 'Charmander' or animal.animalname like 'Squirtle' or animal.animalname like 'Blossom';

update animal set animal.owner_id = 5 where animal.animalname like 'Angemon' or animal.animalname like 'Boarmon';

select * from animal;