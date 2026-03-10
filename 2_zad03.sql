USE pracownicy;

UPDATE pracownicy
SET nazwisko = "KOWALCZYK"
WHERE id = 6 OR id = 7 OR id = 19;

SELECT *
FROM pracownicy
WHERE nazwisko = "Kowalczyk";

SELECT *
FROM pracownicy
WHERE wiek BETWEEN 30 AND 40;

SELECT *
FROM pracownicy
WHERE nazwisko NOT LIKE "%and%";

SELECT *
FROM pracownicy
WHERE id BETWEEN 1 AND 7;

SELECT *
FROM pracownicy
WHERE id IS NULL or imię IS NULL or nazwisko IS NULL or wiek IS NULL or kurs IS NULL;

SELECT *
FROM pracownicy
WHERE kurs IS NULL;