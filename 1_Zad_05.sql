CREATE DATABASE moje_zainteresowania;

USE moje_zainteresowania;

CREATE TABLE zainteresowania (
id INTEGER,
nazwa TEXT,
opis TEXT,
data_realizacji DATE
);

INSERT INTO zainteresowania (nazwa, opis)
VALUES
("książki", "czytanie"),
("manga", "rysowanie"),
("seriale", "oglądanie"),
("robótki ręczne", "szydełkowanie, haft, robienie na drutach"),
("gitara", "gra na instrumencie");

SELECT *
FROM zainteresowania;

INSERT INTO zainteresowania (id, nazwa, opis, data_realizacji)
VALUES (6, "garncarstwo", "lepienie z gliny", "2026-03-16");

UPDATE zainteresowania
SET id = 4, data_realizacji = "2026-05-20"
WHERE nazwa = "robótki ręczne";

SET SQL_SAFE_UPDATES = 0;

UPDATE zainteresowania
SET id = 4, data_realizacji = "2026-05-20"
WHERE nazwa = "robótki ręczne";

SELECT *
FROM zainteresowania;

DELETE FROM zainteresowania
WHERE id IS NULL;

SELECT *
FROM zainteresowania;