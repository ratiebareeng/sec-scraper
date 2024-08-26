CREATE TABLE "sub_agency" (
  "toptier_code" text,
  "fiscal_year" bigint,
  "abbreviation" text NULL,
  "name" text,
  "total_obligations" double precision,
  "transaction_count" bigint,
  "new_award_count" bigint
);

INSERT INTO "sub_agency" ("toptier_code", "fiscal_year", "abbreviation", "name", "total_obligations", "transaction_count", "new_award_count")
VALUES
('097',2024,'USN','Department of the Navy',66860352645.71,129402,36749),
('097',2024,'USAF','Department of the Air Force',49817414708.96,58798,14993),
('097',2024,'USA','Department of the Army',50300812734.01,89467,25222),
('097',2024,'DLA','Defense Logistics Agency',29295313420.11,2491178,2371344);
