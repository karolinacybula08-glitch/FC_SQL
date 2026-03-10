USE pracownicy;

SELECT *
FROM pracownicy
WHERE imię = "Anna";

SELECT *
FROM pracownicy
WHERE imię IS NULL OR imię = "";

SELECT kurs
FROM pracownicy
WHERE wiek BETWEEN 30 AND 40;

SELECT id, wiek
FROM pracownicy
WHERE id BETWEEN 1 AND 7;

SELECT *
FROM pracownicy
WHERE wiek IS NULL OR wiek = "";

ALTER TABLE pracownicy
RENAME COLUMN kurs TO szkolenie;