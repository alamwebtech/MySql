/*CREATE DATABASE music;
USE music;*/

CREATE TABLE music_bands(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR (255) NOT NULL,
PRIMARY KEY (id) 
);

CREATE TABLE music_albums (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR (255) NOT NULL,
release_year INT,
band_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (band_id) REFERENCES music_bands (id)
);

INSERT INTO music_bands (name) 
VALUES ('Iron Maiden'), ('Deuce'), ('Avenged Sevenfold'), ('Ankor');

SELECT * FROM music_bands;
SELECT * FROM music_bands LIMIT 2;

INSERT INTO music_albums(name, release_year, band_id)
VALUES ('The Number of the Beasts', 1985, 1), ('Power Slave', 1984, 1),
('Nightmare', 2018, 2), ('Nightmare', 2010, 3), ('Test Album', NULL, 3);

SELECT * FROM music_albums;

SELECT name FROM music_albums;
SELECT name FROM music_bands;
SELECT release_year FROM music_albums;

SELECT * FROM music_albums;
UPDATE music_albums SET release_year = 1982 WHERE id =1;
SELECT * FROM music_albums;
SELECT * FROM music_albums WHERE release_year > 2000;
SELECT * FROM music_albums WHERE name LIKE '%ma%' AND band_id = 2;
SELECT * FROM music_albums WHERE release_year IS NULL;
DELETE FROM music_albums WHERE id = 5;
SELECT * FROM music_albums;
INSERT INTO music_albums(name, release_year, band_id)
VALUES ('The Number of the Beasts', 1985, 1), ('Power Slave', 1984, 1),
('Nightmare', 2018, 2), ('Nightmare', 2010, 3), ('Test Album', NULL, 3);

CREATE TABLE music_bands(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE music_albums(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR (255) NOT NULL,
release_year INT,
band_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (band_id) REFERENCES music_bands(id)
);

SELECT * FROM music_bands;
SELECT * FROm music_albums;

INSERT INTO music_bands(name)
VALUES ('Iron Maiden'), ('Deuce'), ('Avenged Sevenfold'), ('Ankor');

SELECT * FROM music_albums;

INSERT INTO music_albums(name, release_year, band_id)
VALUES ('The Number of the Beasts', 1985, 1), ('Power Slave', 1984, 1),
('Nightmare', 2018, 2), ('Nightmare', 2010, 3), ('Test Album', NULL, 3);

SELECT * FROM music_albums;

UPDATE music_albums SET release_year = 1982 WHERE id = 1;

SELECT * FROM music_albums;
