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

create table invoices(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    total_amount decimal,
    generated_at timestamp,
    paued_at timestamp,
    medical_history_id int,
    foreign KEY (medical_history_id) REFERENCES medical_histories(id)
)

create table invoice_items(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    unit_price decimal,
    quantity int,
    total_price decimal,
    invoice_id int,
    treatment_id int,
    foreign key (invoice_id) REFERENCES invoices(id),
    foreign key (treatment_id) REFERENCES treatments(id)
)