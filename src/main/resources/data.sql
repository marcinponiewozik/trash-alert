INSERT INTO unit (id, uuid, version, details, district, name, province, unique_code, license_end_date) VALUES (1, '9fe0b9dc-b210-11ed-afa1-0242ac120002', 1, NULL, 'LUBELSKI', 'JABŁONNA', 'LUBELSKIE', '0609062', '2024-01-01');
INSERT INTO unit (id, uuid, version, details, district, name, province, unique_code, license_end_date) VALUES (2, '9fe0b9dc-b210-11ed-afa1-0242ac120003', 1, NULL, 'LUBELSKI', 'WYSOKIE', 'LUBELSKIE', '0905646', '2024-01-01');
INSERT INTO unit (id, uuid, version, details, district, name, province, unique_code, license_end_date) VALUES (3, '9fe0b9dc-b210-11ed-afa1-0242ac120004', 1, NULL, 'LUBELSKI', 'GŁUSK', 'LUBELSKIE', '0609052', '2024-01-01');
INSERT INTO unit (id, uuid, version, details, district, name, province, unique_code, license_end_date) VALUES (4, '9fe0b9dc-b210-11ed-afa1-0242ac120005', 1, NULL, 'LUBELSKI', 'KRZCZONÓW', 'LUBELSKIE', '1064634', '2024-01-01');
INSERT INTO unit (id, uuid, version, details, district, name, province, unique_code, license_end_date) VALUES (5, '9fe0b9dc-b210-11ed-afa1-0242ac120006', 1, NULL, 'LUBELSKI', 'STRZYZEWICE', 'LUBELSKIE', '0392030', '2024-01-01');
INSERT INTO unit (id, uuid, version, details, district, name, province, unique_code, license_end_date) VALUES (6, '9fe0b9dc-b210-11ed-afa1-0242ac120007', 1, NULL, 'LUBELSKI', 'BYCHAWA', 'LUBELSKIE', '0609034', '2024-01-01');
INSERT INTO unit (id, uuid, version, details, district, name, province, unique_code, license_end_date) VALUES (7, '9fe0b9dc-b210-11ed-afa1-0242ac120008', 1, NULL, 'LUBELSKI', 'NIEMCE', 'LUBELSKIE', '0387625', '2024-01-01');
INSERT INTO unit (id, uuid, version, details, district, name, province, unique_code, license_end_date) VALUES (8, '9fe0b9dc-b210-11ed-afa1-0242ac120009', 1, NULL, 'LUBELSKI', 'JASTKÓW', 'LUBELSKIE', '0609072', '2024-01-01');
INSERT INTO unit (id, uuid, version, details, district, name, province, unique_code, license_end_date) VALUES (9, '9fe0b9dc-b210-11ed-afa1-0242ac120010', 1, NULL, 'LUBELSKI', 'KONOPNICA', 'LUBELSKIE', '0383426', '2024-01-01');
INSERT INTO unit (id, uuid, version, details, district, name, province, unique_code, license_end_date) VALUES (10, '9fe0b9dc-b210-11ed-afa1-0242ac120011', 1, NULL, 'LUBELSKI', 'NIEDRZWICA DUŻA', 'LUBELSKIE', '0386844', '2024-01-01');


INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Chmiel Pierwszy');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Chmiel Drugi');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Czerniejów');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Czerniejów-Kolonia');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Jabłonna Druga');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Jabłonna Pierwsza');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Jabłonna-Majątek');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Piotrków Pierwszy');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Piotrkó Drugi');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Piotrków-Kolonia');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Skrzynice Drugie');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Skrzynice Pierwsze');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Skrzynice-Kolonia');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Tuszów');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Wierciszów');
INSERT INTO unit_locality (unit_id, locality) VALUES (1, 'Wolnica');

INSERT INTO schedule (id, uuid, version, details, end_date, file_url, start_date, unit_id) VALUES (1, '0bf2ba0d-6627-43db-8968-e20e90203193', 1, 'Właściciel gospodarstwa ma obowiązek wystawić pojemnik oraz worki z odpadami w dniu przewidzianego odbioru do godz. 7:00, a niezastosowanie się do powyższego będzie
skutkowało nieodebraniem odpadów', '2023-08-31', 'https://cdn05.sulimo.pl/media/userfiles/jablonna.lubelskie.pl/Aktualnoci/2022/grudzien/319f3059dc26a45c056c4720323700bc.pdf', '2023-01-01', 1);

INSERT INTO sector (id, uuid, version, localities, row_symbol, schedule_id) VALUES (1, 'a72d80c1-a34c-4a4d-ad4e-7065aadeb6e6', 2, 'Jabłonna Majątek, Jabłonna I tylko droga tzw. Wesoła oraz', 'I', 1);
INSERT INTO sector (id, uuid, version, localities, row_symbol, schedule_id) VALUES (2, '26095688-d08c-419f-9624-ccae4de84ef7', 1, 'Czerniejów, Czerniejów Kolonia w tym linia środkowa i
podleśna, Skrzynice Kolonia tylko linia środkowa i
podleśna, Chmiel Kolonia tylko przy drodze CzerniejówChmiel,
Chmiel I tylko Majdan Chmielowski, Skrzynice II tylko nr
posesji 20 i 20A, Jabłonna Majątek tylko nr posesji nr 37,
38, 39.', 'II', 1);
INSERT INTO sector (id, uuid, version, localities, row_symbol, schedule_id) VALUES (3, '0a18aa39-0caf-4bde-89d2-87aeb7fac524', 1, 'Piotrków I tylko Sachalin, Chmiel I, Chmiel II, Wolnica,
Skrzynice I, Skrzynice II, Skrzynice Kolonia tylko przy
drodze Chmiel-Skrzynice, Chmiel Kolonia tylko przy
drodze Chmiel-Skrzynice, Czerniejów Kolonia tylko nr
posesji 14.', 'III', 1);
INSERT INTO sector (id, uuid, version, localities, row_symbol, schedule_id) VALUES (4, '768e7de8-a227-4084-bbe6-85b9b2e08b7d', 1, 'Jabłonna I bez drogi tzw. Wesołej oraz posesji od nr 1
do nr 5, Jabłonna II bez posesji od nr 171 do nr 175A
oraz o nr dz. 19/2, Wierciszów.', 'IV', 1);
INSERT INTO sector (id, uuid, version, localities, row_symbol, schedule_id) VALUES (5, 'd34041b1-2108-4279-850b-03b64e0ce858', 1, 'Piotrków I bez Sachalina, Piotrków II, Piotrków Kolonia.', 'V', 1);

INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (165, 'cb537609-a5ae-4389-b9c9-72840ee2db1a', 1, 'Odpady zmieszane', 'Z', 1);
INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (163, '47e9b99c-b2b7-4e01-a355-5b79fcd96d42', 1, 'Odpady segregowane', 'P', 1);
INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (164, 'c6d4362a-9e34-4eda-8f5a-4990cdcbe8a7', 1, 'Odpady segregowane', 'ZI,N', 1);

INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (153, 'b030ab47-e282-4ee0-8763-b04c925d48d4', 1, 'Odpady zmieszane', 'Z', 2);
INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (151, '41a82311-ae3c-4395-8f8b-1caba074b738', 1, 'Odpady segregowane', 'P', 2);
INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (152, '60e76cf8-8d67-4f3d-8aa1-ef6c80f9deb2', 1, 'Odpady segregowane', 'ZI,N', 2);

INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (156, '35b2c03b-5c30-41da-910b-466d5ddfa142', 1, 'Odpady zmieszane', 'Z', 3);
INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (154, '16dcba8a-31c7-40be-9a78-d39190e6952b', 1, 'Odpady segregowane', 'P', 3);
INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (155, 'e89e6df6-211b-4190-9118-910c49bc3de2', 1, 'Odpady segregowane', 'ZI,N', 3);

INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (159, '3bb3ae6f-d6bc-41ac-afd1-38167a847502', 1, 'Odpady zmieszane', 'Z', 4);
INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (157, '531f40e4-8a6d-48c2-bce8-1911e9abd987', 1, 'Odpady segregowane', 'P', 4);
INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (158, '85502d5d-8dc2-4d31-9b53-4ef37cc11387', 1, 'Odpady segregowane', 'ZI,N', 4);

INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (162, '40785057-24cf-45b7-9f25-ea918952d344', 1, 'Odpady zmieszane', 'Z', 5);
INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (160, 'ef8a8f89-4925-4f27-862c-026635bf1b37', 1, 'Odpady segregowane', 'P', 5);
INSERT INTO garbage_collection_date (id, uuid, version, details, trash_category, sector_id) VALUES (161, '0f3908ea-d05e-46cc-94cc-2948e35ada8f', 1, 'Odpady segregowane', 'ZI,N', 5);

--
-- TOC entry 3360 (class 0 OID 24683)
-- Dependencies: 223
-- Data for Name: garbage_collection_date_dates; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-01-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-02-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-03-14');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-04-03');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-04-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-05-02');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-05-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-06-01');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-06-15');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-07-03');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-07-14');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-08-01');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (165, '2023-08-14');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (164, '2023-01-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (164, '2023-02-14');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (164, '2023-03-14');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (164, '2023-04-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (164, '2023-05-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (164, '2023-06-15');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (164, '2023-07-14');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (164, '2023-08-14');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (163, '2023-01-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (163, '2023-02-14');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (163, '2023-03-14');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (163, '2023-04-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (163, '2023-05-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (163, '2023-06-15');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (163, '2023-07-14');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (163, '2023-08-14');

INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-01-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-02-15');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-03-15');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-04-04');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-04-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-05-04');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-05-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-06-02');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-06-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-07-04');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-07-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-08-02');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (153, '2023-08-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (151, '2023-01-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (151, '2023-02-15');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (151, '2023-03-15');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (151, '2023-04-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (151, '2023-05-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (151, '2023-06-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (151, '2023-07-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (151, '2023-08-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (152, '2023-01-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (152, '2023-02-15');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (152, '2023-03-15');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (152, '2023-04-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (152, '2023-05-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (152, '2023-06-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (152, '2023-07-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (152, '2023-08-16');

INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-01-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-02-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-03-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-04-05');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-04-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-05-05');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-05-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-06-05');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-06-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-07-05');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-07-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-08-03');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (156, '2023-08-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (154, '2023-01-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (154, '2023-02-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (154, '2023-03-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (154, '2023-04-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (154, '2023-05-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (154, '2023-06-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (154, '2023-07-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (154, '2023-08-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (155, '2023-01-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (155, '2023-02-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (155, '2023-03-16');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (155, '2023-04-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (155, '2023-05-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (155, '2023-06-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (155, '2023-07-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (155, '2023-08-17');

INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-01-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-02-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-03-17');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-04-06');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-04-20');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-05-08');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-05-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-06-06');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-06-20');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-07-06');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-07-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-08-04');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (159, '2023-08-18');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (158, '2023-01-05');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (158, '2023-02-06');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (158, '2023-03-06');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (158, '2023-04-06');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (158, '2023-05-08');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (158, '2023-06-06');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (158, '2023-07-06');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (158, '2023-08-04');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (157, '2023-01-05');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (157, '2023-02-06');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (157, '2023-03-06');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (157, '2023-04-20');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (157, '2023-05-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (157, '2023-06-20');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (157, '2023-07-19');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (157, '2023-08-18');

INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-01-20');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-02-20');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-03-20');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-04-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-04-21');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-05-09');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-05-22');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-06-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-06-21');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-07-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-07-20');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-08-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (162, '2023-08-21');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (160, '2023-01-09');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (160, '2023-02-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (160, '2023-03-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (160, '2023-04-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (160, '2023-05-09');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (160, '2023-06-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (160, '2023-07-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (160, '2023-08-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (161, '2023-01-09');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (161, '2023-02-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (161, '2023-03-07');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (161, '2023-04-21');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (161, '2023-05-22');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (161, '2023-06-21');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (161, '2023-07-20');
INSERT INTO garbage_collection_date_dates (garbage_collection_date_id, date) VALUES (161, '2023-08-21');