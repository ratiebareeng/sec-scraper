CREATE TABLE "new_award_count" (
  "toptier_code" text,
  "fiscal_year" bigint,
  "agency_type" text,
  "award_type_codes" text NULL,
  "new_award_count" bigint
);

INSERT INTO "new_award_count" ("toptier_code","fiscal_year","agency_type","award_type_codes","new_award_count")
VALUES
('097',2024,'awarding',NULL,2165246);
