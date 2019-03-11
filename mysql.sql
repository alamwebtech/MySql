/* CREATE DATABASE test;*/
/*DROP DATABASE test;*/
CREATE DATABASE record_company;
USE record_company;
/*CREATE TABLE test(
test_colum INT
);

ALTER TABLE test
ADD another_column VARCHAR(255);

DROP TABLE test;
*/

CREATE TABLE bands(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL, 
PRIMARY KEY (id)
);

CREATE TABLE albums (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
release_year INT,
band_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (band_id) REFERENCES bands (id)
);

INSERT INTO bands (name)
VALUES ('Irom Maiden');
INSERT INTO bands(name)
VALUES('Deuce'), ('Avenged Sevenfold'), ('Ankor');

SELECT * FROM bands;
SELECT * FROM bands LIMIT 2;
SELECT name FROM bands;
SELECT id AS 'ID', name AS 'Band Name' FROM bands;

SELECT * FROM bands ORDER BY name;
SELECT * FROM bands ORDER BY name DESC;

INSERT INTO albums (name, release_year, band_id)
VALUES('The Number of the Beasts', 1985, 1),
('Power Slave', 1984, 1),
('Nightmare', 2018, 2),
('Nightmare', 2010, 3),
('Test Album', NULL, 3);

SELECT * FROM albums;
SELECT name FROM albums;

UPDATE albums SET release_year  = 1982 WHERE id = 1;
SELECT * FROM albums;
SELECT * FROM albums WHERE release_year < 2000;
SELECT * FROM albums 
WHERE name LIKE '%er%' OR band_id = 2;
SELECT * FROM albums 
WHERE release_year = 1984 AND band_id = 1;
SELECT * FROM albums 
WHERE release_year BETWEEN 2000 AND 2018;

SELECT * FROM albums 
WHERE release_year IS NULL;

DELETE FROM albums WHERE id = 5;

SELECT * FROM albums;

SELECT * FROM bands
JOIN albums ON bands.id = albums.band_id;
/* Normal join is the same as INNER JOIN*/
SELECT * FROM bands
JOIN albums ON bands.id = albums.band_id;
/*LEFT JOIN will provide everything in leftside table(bands),
 doesnt whether its matches with LEFT table or not. */
SELECT * FROM bands
LEFT JOIN albums ON bands.id = albums.band_id;
/*RIGHT JOIN will provide everything in rightside table(bands),
 doesnt whether its matches with LEFT table or not. */
SELECT * FROM albums 
RIGHT JOIN bands ON bands.id = albums.band_id;

SELECT AVG (release_year) FROM albums;
SELECT SUM (release_year) FROM albums;

/*AGREGATING meanis combining */
SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;

SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id = a.band_id
GROUP BY b.id;


