USE pracownicy;

ALTER TABLE pracownicy
RENAME COLUMN nr TO id;

TRUNCATE TABLE pracownicy;

INSERT INTO pracownicy (imię, nazwisko, wiek, kurs)
VALUES
("Anna", "NOWAK", 34, "DS."),
("Roman", "KOWALSKI", 42, "DS."),
("Tomasz", "WIŚNIEWSKI", 33, "DS."),
("Agata", "WÓJCIK", 43, "DS."),
("Elżbieta", "KOWALCZYK", 28, "Java"),
("Przemysław", "", 34, "Java"),
("Robert", "", 35, "Java"),
("Radosław", "ZIELIŃSKI", 38, "Java"),
("", "WOŹNIAK", 26, "Java"),
("Robert", "SZYMAŃSKI", 34, "Java"),
("Radosław", "DĄBROWSKI", 35, "UX"),
("Robert", "KOZŁOWSKI", 38, "UX"),
("Joanna", "MAZUR", 26, "UX"),
("Radosław", "JANKOWSKI", 27, "UX"),
("Patryk", "LEWANDOWSKI", 28, "Tester"),
("", "ZIELIŃSKI", 28, "Tester"),
("Andrzej", "WOŹNIAK", 31, "Tester"),
("Andrzej", "LEWANDOWSKI", 30, "Tester"),
("Roman", "", 39, "Tester"),
("Ewa", "WOŹNIAK", 31, "Tester");

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
