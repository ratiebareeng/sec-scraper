CREATE TABLE "spending_by_awarding_agency" (
  "uei" text,
  "id" bigint,
  "code" text,
  "name" text,
  "amount" double precision,
  "agency_slug" text
);

INSERT INTO "spending_by_awarding_agency" ("uei","id","code","name","amount","agency_slug")
VALUES
('DS4MZBE4SFZ5',1173,'DOD','Department of Defense',1760037.75,'department-of-defense');
