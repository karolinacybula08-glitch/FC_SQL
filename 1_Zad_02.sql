CREATE DATABASE School_Coding;

USE School_Coding;

CREATE TABLE Mentors (
ID INTEGER PRIMARY KEY,
Imię TEXT,
Nazwisko TEXT,
Specjalizacja TEXT,
Data_zatrudnienia DATE,
Data_zwolnienia DATE
);

INSERT INTO Mentors (ID, Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia)
VALUES
(1, "Paweł", "Nowak", "Python", "2022-08-23", "2024-10-12"),
(2, "Anna", "Kowalska", "Java", "2020-05-13", "2025-11-02"),
(3, "Adam", "Wójcik", "Python", "2021-03-28", "2023-01-17"),
(4, "Łucja", "Kamińska", "JavaScript", "2019-02-20", "2026-01-15"),
(5, "Stefan", "Kowalczyk", "TypeScript", "2022-03-22", "2025-10-02"),
(6, "Miłosz", "Szulc", "C++", "2023-02-13", "2025-12-12"),
(7, "Wioleta", "Szymańska", "Java", "2018-10-24", "2024-07-21"),
(8, "Mateusz", "Dąbrowski", "Python", "2022-05-13", "2024-04-18"),
(9, "Dariusz", "Wiśniewski", "C#", "2020-07-11", "2023-10-17"),
(10, "Patryk", "Zieliński", "JavaScript", "2022-02-20", "2024-12-03");

SELECT *
FROM  Mentors;

UPDATE Mentors
SET Nazwisko = "Dąbrowski"
WHERE id = 5;

SELECT *
FROM Mentors
WHERE id = 5;

UPDATE Mentors
SET Specjalizacja = "C++"
WHERE id = 9;

SELECT *
FROM Mentors
WHERE id = 9;

ALTER TABLE Mentors 
ADD COLUMN Wynagrodzenie INTEGER;

UPDATE Mentors
SET Wynagrodzenie = 1000
WHERE id <= 3;

SELECT *
FROM Mentors
WHERE id <= 3;