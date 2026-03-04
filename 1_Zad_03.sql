CREATE DATABASE Lista_Prezentów;

USE Lista_Prezentów;

CREATE TABLE Prezenty_2020 (
id INTEGER  PRIMARY KEY,
imię_obdarowanego TEXT,
pomysł_na_prezent TEXT,
cena DOUBLE,
miejsce_zakupu TEXT
);

SELECT *
FROM Prezenty_2020;

INSERT INTO Prezenty_2020 (id, imię_obdarowanego, pomysł_na_prezent, cena, miejsce_zakupu)
VALUES
(1, "Artur", "sweter", 80.99, "Gdańsk"),
(2, "Ania", "książka", 62.50, "Tczew"),
(3, "Darek", "album na zdjęcia", 95.90, "Sopot"),
(4, "Edyta", "koc", 50.20, "Gdańsk"),
(5, "Bożena", "poduszka", 44.99, "Tczew");

UPDATE Prezenty_2020
SET pomysł_na_prezent = "rower", cena = 130.50, miejsce_zakupu = "Starogard Gdański"
WHERE id = 3;

SELECT *
FROM Prezenty_2020
WHERE id = 3;

DELETE FROM Prezenty_2020
WHERE id = 1;

SELECT *
FROM Prezenty_2020;

ALTER TABLE Prezenty_2020
DROP COLUMN miejsce_zakupu;

SELECT imię_obdarowanego
FROM Prezenty_2020
WHERE id BETWEEN 3 AND 5;