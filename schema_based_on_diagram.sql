create table patients(
    id int primary key,
    name varchar(50),
    date_of_birth date
);

create table medical_histories(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    patient_id int,
    admitted_at timestamp,
    status varchar(50),
    foreign key (patient_id) references patients(id)
);

create table treatments(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    type varchar(50),
    name varchar(50)
);