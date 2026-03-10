USE pracownicy;

DROP TABLE pracownicy;

CREATE TABLE pracownicy (
id INT auto_increment PRIMARY KEY,
imię TEXT,
nazwisko TEXT,
wiek INT,
kurs TEXT
);

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
("Radosław", "DĄBROWSKI", 35, "");

INSERT INTO pracownicy (imię, nazwisko, kurs)
VALUES ("Robert", "KOZŁOWSKI", "UX");

INSERT INTO pracownicy (imię, nazwisko, wiek, kurs)
VALUES
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
