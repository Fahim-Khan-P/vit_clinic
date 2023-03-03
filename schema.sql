CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(55) NOT NULL,
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(6, 3)
);

ALTER TABLE animals ADD COLUMN species VARCHAR(55);

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name TEXT,
  age INTEGER
);

CREATE TABLE species (
  id SERIAL PRIMARY KEY,
  name TEXT
);

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INTEGER;
ALTER TABLE animals ADD FOREIGN KEY (species_id) REFERENCES species(id);