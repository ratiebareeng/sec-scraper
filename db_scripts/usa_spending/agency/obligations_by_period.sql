CREATE TABLE "obligations_by_period" (
  "toptier_code" text,
  "fiscal_year" bigint,
  "period" bigint,
  "obligated" double precision
);

INSERT INTO "obligations_by_period" ("toptier_code","fiscal_year","period","obligated")
VALUES
('097',2024,2,372683649001.54),
('097',2024,3,470249203740.12),
('097',2024,4,546860496823.15),
('097',2024,5,606268013902.68),
('097',2024,6,695121696498.3),
('097',2024,7,779596718197.25),
('097',2024,8,894845336934.44),
('097',2023,2,318614345217.45),
('097',2023,3,404578215703.05),
('097',2023,4,500878896282.08),
('097',2023,5,604251405688.25),
('097',2023,6,845750585977.9),
('097',2023,7,829892185262.31),
('097',2023,8,922555859484.84),
('097',2023,9,1012855274537.62),
('097',2023,10,1102426227316.76),
('097',2023,11,1195276300189.98),
('097',2023,12,1330544104855.49),
('097',2022,2,285190512849.37),
('097',2022,3,380614416543.69),
('097',2022,4,455892075051.92),
('097',2022,5,538933483288.74),
('097',2022,6,635165398028.87),
('097',2022,7,795542808523.42),
('097',2022,8,929213997448.69),
('097',2022,9,1023357518571.64),
('097',2022,10,1070856648859.36),
('097',2022,11,1114832321196.4),
('097',2022,12,1189944864054.66);