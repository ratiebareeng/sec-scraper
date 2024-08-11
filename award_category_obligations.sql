CREATE TABLE "award_category_obligations" (
  "agency_toptier_code" text,
  "category" text,
  "aggregated_amount" double precision
);

INSERT INTO "award_category_obligations" ("agency_toptier_code", "category","aggregated_amount")
VALUES
('097','contracts',200112672302.7),
('097','direct_payments',11155111),
('097','grants',6431537674.48),
('097','idvs',0),
('097','loans',0),
('097','other',313956931.08);



