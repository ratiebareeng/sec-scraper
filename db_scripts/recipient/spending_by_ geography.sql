CREATE TABLE "spending_by_ geography" (
  "uei" text,
  "shape_code" text,
  "display_name" text,
  "aggregated_amount" double precision,
  "population" bigint,
  "per_capita" double precision
);

INSERT INTO "spending_by_ geography" ("uei","shape_code","display_name","aggregated_amount","population","per_capita")
VALUES
('DS4MZBE4SFZ5','CA','California',1823813.75,39538223,0.05),
('DS4MZBE4SFZ5','CO','Colorado',-63776,5773714,-0.01);
