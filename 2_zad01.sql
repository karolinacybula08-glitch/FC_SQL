CREATE DATABASE pracownicy;

USE pracownicy;

CREATE TABLE pracownicy (
id INT auto_increment PRIMARY KEY,
imię VARCHAR(50) NOT NULL,
nazwisko VARCHAR(50) NOT NULL,
wiek INT NOT NULL,
kurs VARCHAR(50) NOT NULL
);

INSERT INTO pracownicy (imię, nazwisko, wiek, kurs)
VALUES
("Anna", "NOWAK", 34, "DS."),
("Roman", "KOWALSKI", 42, "DS."),
("Tomasz", "WIŚNIEWSKI", 33, "DS."),
("Agata", "WÓJCIK", 43, "DS."),
("Elżbieta", "KOWALCZYK", 28, "Java"),
("Przemysław", "KAMIŃSKI", 34, "Java"),
("Robert", "LEWANDOWSKI", 35, "Java"),
("Radosław", "ZIELIŃSKI", 38, "Java"),
("Anna", "WOŹNIAK", 26, "Java"),
("Robert", "SZYMAŃSKI", 34, "Java"),
("Radosław", "DĄBROWSKI", 35, "UX"),
("Robert", "KOZŁOWSKI", 38, "UX"),
("Joanna", "MAZUR", 26, "UX"),
("Radosław", "JANKOWSKI", 27, "UX"),
("Patryk", "LEWANDOWSKI", 28, "Tester"),
("Patryk", "ZIELIŃSKI", 28, "Tester"),
("Andrzej", "WOŹNIAK", 31, "Tester"),
("Andrzej", "LEWANDOWSKI", 30, "Tester"),
("Roman", "ZIELIŃSKI", 39, "Tester"),
("Ewa", "WOŹNIAK", 31, "Tester");

SELECT *
FROM pracownicy
WHERE wiek > 30;

SELECT *
FROM pracownicy
WHERE wiek < 30;

SELECT *
FROM pracownicy
WHERE nazwisko LIKE "k%ki";

ALTER TABLE pracownicy
RENAME COLUMN id TO nr;

SELECT *
FROM pracownicy
WHERE rn IS NULL or imię IS NULL or nazwisko IS NULL or wiek IS NULL or kurs IS NULL;

SELECT *
FROM pracownicy
WHERE kurs = "Java";