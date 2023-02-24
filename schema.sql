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

-- Create a table owners and species

create table owners(
id int auto_increment primary key,
fullname varchar(100),
age integer
);

create table species(
id int auto_increment primary key,
fullname varchar(100)
);

-- Delete the column species

alter table `animal` drop column species;

-- Add column of species_id and owner_id 
alter table animal add species_id int;

alter table animal add owner_id int;

-- Reference and create the foreign key
alter table animal add foreign key (species_id) references species(id);

alter table animal add foreign key (owner_id ) references owners(id);

select * from species;
select * from owners;


create table visits(
animal_id int references animal(id),
vets_id int references vets(id),
date_visit date not null 
);

create table specializations(
species_id  int references species(id),
vets_id int references vets(id)
);