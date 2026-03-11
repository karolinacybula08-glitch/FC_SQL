USE pracownicy;

ALTER TABLE pracownicy
RENAME COLUMN szkolenie TO kurs;

TRUNCATE TABLE pracownicy;

INSERT INTO pracownicy (imię, nazwisko, wiek, kurs)
VALUES
("Anna", "NOWAK", 34, "DS."),
("Roman", "KOWALSKI", 42, "DS."),
("Tomasz", "WIŚNIEWSKI", 33, "DS."),
("Agata", "WÓJCIK", 43, "DS."),
("Elżbieta", "KOWALCZYK", 28, "Java"),
("Przemysław", "KOWALCZYK", 34, "Java"),
("Robert", "KOWALCZYK", 35, "Java"),
("Radosław", "ZIELIŃSKI", 38, "Java");

INSERT INTO pracownicy (nazwisko, wiek, kurs)
VALUES ("WOŹNIAK", 26, "Java");

INSERT INTO pracownicy (imię, nazwisko, wiek, kurs)
VALUES("Robert", "SZYMAŃSKI", 34, "Java");

INSERT INTO pracownicy (imię, nazwisko, wiek)
VALUES ("Radosław", "DĄBROWSKI", 35);

INSERT INTO pracownicy (imię, nazwisko, kurs)
VALUES ("Robert", "KOZŁOWSKI", "UX");

INSERT INTO pracownicy (imię, nazwisko, wiek, kurs)
VALUES
("Joanna", "MAZUR", 26, "UX"),
("Radosław", "JANKOWSKI", 27, "UX"),
("Patryk", "LEWANDOWSKI", 28, "Tester");

INSERT INTO pracownicy (nazwisko, wiek, kurs)
VALUES ("ZIELIŃSKI", 28, "Tester");

INSERT INTO pracownicy (imię, nazwisko, wiek, kurs)
VALUES
("Andrzej", "WOŹNIAK", 31, "Tester"),
("Andrzej", "LEWANDOWSKI", 30, "Tester"),
("Roman", "KOWALCZYK", 39, "Tester"),
("Ewa", "WOŹNIAK", 31, "Tester");

SELECT DISTINCT imię 
FROM pracownicy
ORDER BY(imię);

SELECT DISTINCT nazwisko 
FROM pracownicy
ORDER BY(nazwisko);

SELECT kurs
FROM pracownicy
WHERE nazwisko = "Kowalczyk";

SELECT *
FROM pracownicy
WHERE wiek IS NULL or wiek = "";

SELECT wiek
FROM pracownicy
WHERE imię = "Patryk";

ALTER TABLE pracownicy 
RENAME TO mentorzy;