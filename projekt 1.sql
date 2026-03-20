CREATE DATABASE sklep_internetowy;

USE sklep_internetowy;

CREATE TABLE producenci (
id INTEGER PRIMARY KEY auto_increment,
nazwa_producenta VARCHAR(90),
adres_producenta VARCHAR(150),
nip_producenta VARCHAR(15),
data_umowy DATE
);

CREATE TABLE produkty (
id INT PRIMARY KEY auto_increment,
id_producenta INT,
nazwa_produktu VARCHAR(90),
opis_produktu VARCHAR(150),
cena_netto_zakupu DOUBLE,
cena_brutto_zakupu DOUBLE,
cena_netto_sprzedazy DOUBLE,
cena_brutto_sprzedazy DOUBLE,
procent_vat_sprzedazy DOUBLE,
CONSTRAINT producenci_fk FOREIGN KEY (id_producenta) REFERENCES producenci(id)
);

CREATE TABLE klienci (
id INT PRIMARY KEY auto_increment,
imie VARCHAR(90),
nazwisko VARCHAR(90),
adres VARCHAR(150)
);

CREATE TABLE zamowienia (
id INT PRIMARY KEY auto_increment,
id_klienta INT,
id_produktu INT,
data_zamowienia DATE,
CONSTRAINT klienci_fk FOREIGN KEY (id_klienta) REFERENCES klienci(id),
CONSTRAINT produkty_fk FOREIGN KEY (id_produktu) REFERENCES produkty(id)
);

INSERT INTO producenci (nazwa_producenta, adres_producenta, nip_producenta, data_umowy)
VALUES
("CCC", "ul. Strefowa 6 59-101 Polkowice Polska", "5020110639", "2016-10-12"),
("motkownia", "ul. Hallera 15 83-200 Starogard Gdanski", "2213275698", "2016-08-14"),
("batycki", "ul. Litewska 12 80-719 Gdansk", "6793218747", "2019-01-04"),
("abc", "al. Piastow 30 71-064 Szczecin", "8513273512", "2021-05-10"),
("xyz", "ul. Graniczna 2 54-610 Wroclaw", "9319754867", "2021-08-03");

INSERT INTO produkty (id_producenta, nazwa_produktu, opis_produktu, cena_brutto_zakupu, cena_netto_zakupu, cena_brutto_sprzedazy, cena_netto_sprzedazy, procent_vat_sprzedazy)
VALUES
(1, "kozaki A", "wysokie skorzane buty damskie", 119.49, 110.64, 150, 138.89, 8),
(1, "sandaly L", "sandaly meskie", 49.49, 46.29, 59.99, 55.55, 8),
(1, "pol-buty A", "botki dla dzieci", 49.49, 46.29, 54.99, 50.92, 8),
(1, "pol-buty B", "buty dla dzieci", 69.49, 64.34, 75.99, 70.36, 8),
(1, "sandaly A", "sandaly damskie czerwone", 79.49, 73.60, 89.49, 82.86, 8),
(1, "sandaly B", "sandaly damskie biale", 89.49, 82.86, 119.49, 110.64, 8),
(2, "baby alpaca", "80% miekka welna alpaki 20% jedwab", 15.50, 14.09, 16.70, 15.18, 10),
(2, "saffran", "160m 100% bawelna", 4.50, 4.09, 6.70, 6.09, 10),
(2, "RoseGarden", "1000m 100% bawelna", 40.50, 36.82, 55.00, 50.00, 10),
(2, "baby merino", "100% welna merinosow superwashed", 16.50, 15.00, 17.50, 15.91, 10),
(2, "moher", "moher z welny owcy", 30.50, 27.73, 36.50, 33.18, 10),
(3, "torebka bague cornflower", "skorzana torebka damska niebieska", 800.00, 695.65, 999.00, 868.70, 15),
(3, "torebka new mama cornflower", "skorzana torebka damska niebieska", 1200.00, 1043.48, 1399.00, 1216.52, 15),
(3, "torebka colette", "skorzana torebka damska karmel", 1200.00, 1043.48, 1399.00, 1216.52, 15),
(3, "torebka bague", "torebka damska w plamki", 1500.00, 1304.35, 1699.00, 1477.39, 15),
(4, "koszulka meska N", "niebieska bawelniana koszulka t-shirtowa", 59.99, 55.55, 69.99, 64.81, 8),
(4, "koszulka meska B", "biala bawelniana koszulka t-shirtowa", 59.99, 55.55, 69.99, 64.81, 8),
(4, "koszula meska BN", "biala flanelowa koszula w niebieska krate", 79.99, 74.06, 89.99, 83.32, 8),
(4, "koszulka meska C", "czerwona bawelniana koszulka t-shirtowa", 59.99, 55.55, 69.99, 64.81, 8),
(4, "koszula meska CCZ", "czerwona flanelowa koszula w czarna krate", 79.99, 74.06, 89.99, 83.32, 8),
(4, "koszula meska BS", "biala flanelowa koszula w szara krate", 79.99, 74.06, 89.99, 83.32, 8),
(4, "koszulka meska CZ", "czarna bawelniana koszulka t-shirtowa", 59.99, 55.55, 69.99, 64.81, 8),
(4, "koszula meska ZCZB", "zielona flanelowa koszula w czarno-biala krate", 89.99, 83.32, 99.99, 92.58, 8);

INSERT INTO klienci (imie, nazwisko, adres)
VALUES
("Anna", "NOWAK", "Podwale 1 31-118 Krakow"),
("Roman", "KOWALSKI", "Adama Mickiewicza 30 87-100 Torun"),
("Tomasz", "WIŚNIEWSKI", "Krzywa 16 60-118 Poznan"),
("Agata", "WÓJCIK", "Poziomkowa 15 43-110 Tychy"),
("Elżbieta", "KOWALCZYK", "Słonecznikowa 1 86-005 Lipniki"),
("Przemysław", "KAMIŃSKI", "Osiedlowa 35 86-260 Unisław"),
("Robert", "LEWANDOWSKI", "Długa 34 86-022 Wudzyn"),
("Radosław", "ZIELIŃSKI", "Cierplewo 5 89-525 Cierplewo"),
("Anna", "WOŹNIAK", "Klonowo 112, 89-524"),
("Robert", "SZYMAŃSKI", "Elizy Orzeszkowej 9 38-400 Krosno"),
("Radosław", "DĄBROWSKI", "Jasna 32 37-200 Przeworsk"),
("Robert", "KOZŁOWSKI", "Tuligłowy 35 37-562 Tuligłowy"),
("Joanna", "MAZUR", "Mokre 65 38-542 Mokre"),
("Radosław", "JANKOWSKI", "Zabłotce 78, 38-500 Zabłotce"),
("Ewa", "WOŹNIAK", "Grabownica Starzeńska 47, 36-207 Grabownica Starzeńska");

INSERT INTO zamowienia (id_klienta, id_produktu, data_zamowienia)
VALUES 
(1, 4, "2026-01-05"),
(2, 13, "2026-01-07"),
(3, 7, "2026-01-07"),
(4, 4, "2026-01-15"),
(5, 12, "2026-01-16"),
(6, 6, "2026-01-17"),
(7, 10, "2026-01-24"),
(8, 18, "2026-01-26"),
(9, 23, "2026-01-30"),
(10, 7, "2026-01-30"),
(11, 3, "2026-02-03"),
(12, 11, "2026-02-07"),
(13, 1, "2026-02-15"),
(14, 3, "2026-02-26"),
(15, 20, "2026-03-17");

SELECT *
FROM produkty
WHERE id_producenta = 1;

SELECT *
FROM produkty
WHERE id_producenta = 1
ORDER BY nazwa_produktu;

SELECT 
AVG(cena_brutto_sprzedazy) srednia_cena_producenta_1
FROM produkty
WHERE id_producenta = 1;

WITH cte as (SELECT *
,row_number() over(order by cena_brutto_sprzedazy asc) as rn_asc
,row_number() over(order by cena_brutto_sprzedazy desc) as rn_desc
FROM produkty
WHERE id_producenta = 1
),
mediana AS (
    SELECT avg(cena_brutto_sprzedazy) as mediana_ceny 
    FROM cte
    WHERE abs(rn_asc-rn_desc) <=1
)
SELECT 
    p.id,
    p.nazwa_produktu,
    p.opis_produktu,
    p.cena_netto_zakupu,
    p.cena_brutto_zakupu,
    p.cena_netto_sprzedazy,
    p.cena_brutto_sprzedazy,
    p.procent_vat_sprzedazy,
    CASE 
        WHEN p.cena_brutto_sprzedazy > m.mediana_ceny THEN 'drogie'
        WHEN p.cena_brutto_sprzedazy < m.mediana_ceny THEN 'tanie'
        ELSE 'mediana'
    END AS price_category
FROM produkty p
CROSS JOIN mediana m
WHERE p.id_producenta = 1
ORDER BY p.cena_brutto_sprzedazy;

SELECT zamowienia.id, produkty.nazwa_produktu
FROM zamowienia
JOIN produkty ON zamowienia.id_produktu = produkty.id
ORDER BY zamowienia.id;

SELECT zamowienia.id, produkty.nazwa_produktu
FROM zamowienia
JOIN produkty ON zamowienia.id_produktu = produkty.id
ORDER BY zamowienia.id
LIMIT 5;

SELECT 
ROUND(SUM(cena_brutto_sprzedazy), 2) as wartosc_wszystkich_zamowien
FROM zamowienia
JOIN produkty ON zamowienia.id_produktu = produkty.id;

SELECT zamowienia.*, produkty.nazwa_produktu
FROM zamowienia
JOIN produkty ON zamowienia.id_produktu = produkty.id
ORDER BY zamowienia.data_zamowienia asc;

SELECT *
FROM produkty
WHERE id_producenta IS NULL or nazwa_produktu IS NULL or opis_produktu IS NULL or cena_brutto_zakupu IS NULL or cena_netto_zakupu IS NULL or cena_brutto_sprzedazy IS NULL or cena_netto_sprzedazy IS NULL or procent_vat_sprzedazy IS NULL or id_producenta = "" or nazwa_produktu = "" or opis_produktu = "" or cena_brutto_zakupu = "" or cena_netto_zakupu = "" or cena_brutto_sprzedazy = "" or cena_netto_sprzedazy = "" or procent_vat_sprzedazy = "";

SELECT id_produktu, p.nazwa_produktu, p.cena_brutto_sprzedazy, COUNT(id_produktu)
FROM zamowienia
JOIN produkty p ON zamowienia.id_produktu = p.id
GROUP BY id_produktu, p.nazwa_produktu, p.cena_brutto_sprzedazy
HAVING COUNT(zamowienia.id_produktu) = (
    SELECT MAX(ilosc_sprzedazy)
    FROM (
        SELECT COUNT(id_produktu) as ilosc_sprzedazy
        FROM zamowienia
        GROUP BY id_produktu
    ) as subquery
);

SELECT data_zamowienia, COUNT(data_zamowienia)
FROM zamowienia
GROUP BY data_zamowienia
HAVING COUNT(data_zamowienia) = (
    SELECT MAX(dzien_z_max_zamowieniami)
    FROM (
        SELECT COUNT(data_zamowienia) as dzien_z_max_zamowieniami
        FROM zamowienia
        GROUP BY data_zamowienia
    ) as subquery
);
