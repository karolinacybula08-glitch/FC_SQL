CREATE DATABASE fc_sql;

USE fc_sql;

CREATE TABLE Biblioteczka (
id INTEGER PRIMARY KEY,
tytuł TEXT,
data_zakupu DATE
);

INSERT INTO Biblioteczka (id, tytuł, data_zakupu)
VALUES (1, "Eragon", "2005-08-05");

SELECT *
FROM Biblioteczka;

INSERT INTO Biblioteczka (id, tytuł, data_zakupu)
VALUES
(2, "Kod Da Vinci", "2015-04-12"),
(3, "Sekta Zabójców", "2013-11-10");

UPDATE Biblioteczka
SET tytuł = "Uczta Dusz"
WHERE id = 1;

ALTER TABLE Biblioteczka
ADD COLUMN autor TEXT;

UPDATE Biblioteczka
SET autor = "C.S. Friedman"
WHERE id = 1;

UPDATE Biblioteczka
SET autor = "Dan Brown"
WHERE id = 2;

UPDATE Biblioteczka
SET autor = "Licia Troisi"
WHERE id = 3;

DELETE FROM Biblioteczka
WHERE id = 2;

DELETE FROM Biblioteczka
WHERE id = 3;

SELECT autor
FROM Biblioteczka;