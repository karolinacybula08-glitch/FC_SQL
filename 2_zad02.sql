USE pracownicy;

ALTER TABLE pracownicy
RENAME COLUMN nr TO id;

SELECT *
FROM pracownicy
WHERE wiek = 28;

SELECT *
FROM pracownicy
WHERE wiek <= 30;

SELECT *
FROM pracownicy
WHERE nazwisko LIKE "%ski%";

SELECT *
FROM pracownicy
WHERE id IN(1, 4, 7, 18, 20);

SELECT *
FROM pracownicy
WHERE id IS NOT NULL and imię IS NOT NULL and nazwisko IS NOT NULL and wiek IS NOT NULL and kurs IS NOT NULL;

SELECT *
FROM pracownicy
WHERE kurs != "DS.";