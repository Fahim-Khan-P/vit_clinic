CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(555) NOT NULL,
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
ALTER TABLE animals ADD COLUMN owner_id INTEGER;
ALTER TABLE animals ADD FOREIGN KEY (owner_id) REFERENCES owners(id);

CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INTEGER,
  date_of_graduation DATE
);

CREATE TABLE specialization (
  id SERIAL PRIMARY KEY,
  species_id INTEGER,
  vets_id INTEGER,
  CONSTRAINT FK_species
  FOREIGN KEY(species_id)
  REFERENCES species(id),

  CONSTRAINT FK_vets
  FOREIGN KEY(vets_id)
  REFERENCES vets(id)
);

CREATE TABLE visits (
  id SERIAL PRIMARY KEY,
  visit_date DATE,
  vets_id INTEGER,
  animal_id INTEGER,
  CONSTRAINT FK_vets
  FOREIGN KEY(vets_id)
  REFERENCES vets(id),

  CONSTRAINT FK_animals
  FOREIGN KEY(animal_id)
  REFERENCES animals(id)
);
