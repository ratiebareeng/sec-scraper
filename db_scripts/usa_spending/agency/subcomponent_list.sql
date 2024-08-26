CREATE TABLE "subcomponent_list" (
  "toptier_code" text,
  "fiscal_year" bigint,
  "name" text,
  "id" text,
  "total_obligations" double precision NULL,
  "total_outlays" double precision NULL,
  "total_budgetary_resources" double precision
);

INSERT INTO "subcomponent_list" ("toptier_code", "fiscal_year", "name", "id", "total_obligations", "total_outlays", "total_budgetary_resources")
VALUES
('097', 2024, 'Defense-wide', 'defense-wide', 480512347206.65, 456653550893.58, 894083902012.94),
('097', 2024, 'Navy, Marine Corps', 'navy-marine-corps', 193074977258.67, 177445389730.04, 330786727329.91),
('097', 2024, 'Army', 'army', 163677128082.69, 155372060186.58, 328783430522.17),
('097', 2024, 'Air Force', 'air-force', 135610729768.27, 105529023409.24, 211959466562.69),
('097', 2024, 'International Security Assistance', 'international-security-assistance', 2065074.36, 4052015.51, 16428328569.8),
('097', 2024, 'Military Sales Program', 'military-sales-program', null, null, 309924907835.75);
