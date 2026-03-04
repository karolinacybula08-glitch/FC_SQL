CREATE DATABASE lista_pracowników;

USE lista_pracowników;

CREATE TABLE pracownicy (
id INTEGER PRIMARY KEY,
imię TEXT,
nazwisko TEXT,
stanowisko TEXT,
dział TEXT
);

INSERT INTO pracownicy (id, imię, nazwisko, stanowisko, dział)
VALUES
(1, "Adam", "Nowak", "L3", "HR"),
(2, "Agnieszka", "Kamińska", "L4", "HR"),
(3, "Stefan", "Kowalczyk", "L3", "Magazyn"),
(4, "Patryk", "Zieliński", "L4", "Magazyn");

SELECT *
FROM pracownicy;

ALTER TABLE pracownicy
ADD COLUMN data_zatrudnienia DATE;

UPDATE pracownicy
SET data_zatrudnienia = "2014-05-13"
WHERE id = 1;

UPDATE pracownicy
SET data_zatrudnienia = "2010-01-03"
WHERE id = 2;

UPDATE pracownicy
SET data_zatrudnienia = "2017-10-02"
WHERE id = 3;

UPDATE pracownicy
SET data_zatrudnienia = "2012-08-22"
WHERE id = 4;

SELECT *
FROM pracownicy;