CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(55) NOT NULL,
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(6, 3)
);

