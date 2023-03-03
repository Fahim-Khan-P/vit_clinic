INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES
    ('Agumon', '2020-02-03', 10.23, true, 0),
    ('Gabumon', '2018-11-15', 8, true, 2),
    ('Pikachu', '2021-01-07', 15.04, false, 1),
    ('Devimon', '2017-05-12', 11, true, 5);
    
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES
  ('Charmander', '2020-02-08', -11, false, 0),
  ('Plantmon', '2021-11-15', -5.7, true, 2),
  ('Squirtle', '1993-04-02', -12.13, false, 3),
  ('Angemon', '2005-06-12', -45, true, 1),
  ('Boarmon', '2005-06-07', 20.4, true, 7),
  ('Blossom', '1998-10-13', 17, true, 3),
  ('Ditto', '2022-05-14', 22, true, 4);

  INSERT INTO owners (full_name, age) VALUES
  ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melody Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);

  INSERT INTO species (name) VALUES
  ('Pokemon'),
  ('Digimon');

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1  WHERE species_id IS NULL;

UPDATE animals SET owner_id = 1 WHERE name='Agumon';
UPDATE animals SET owner_id = 2 WHERE name='Gabumon';
UPDATE animals SET owner_id = 2 WHERE name='Pikachu';
UPDATE animals SET owner_id = 3 WHERE name='Devimon';
UPDATE animals SET owner_id = 3 WHERE name='Plantmon';
UPDATE animals SET owner_id = 4 WHERE name='Charmander';
UPDATE animals SET owner_id = 4 WHERE name='Squirtle';
UPDATE animals SET owner_id = 4 WHERE name='Blossom';
UPDATE animals SET owner_id = 5 WHERE name='Angemon';
UPDATE animals SET owner_id = 5 WHERE name='Boarmon';

SELECT * FROM animals;