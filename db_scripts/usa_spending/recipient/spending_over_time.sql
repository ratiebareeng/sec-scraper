CREATE TABLE "spending_over_time" (
  "uei" text,
  "aggregated_amount" double precision,
  "fiscal_year" text,
  "month" text,
  "Contract_Obligations" double precision,
  "Direct_Obligations" bigint,
  "Grant_Obligations" bigint,
  "Idv_Obligations" bigint,
  "Loan_Obligations" bigint,
  "Other_Obligations" bigint
);

INSERT INTO "spending_over_time" ("uei","aggregated_amount","fiscal_year","month","Contract_Obligations","Direct_Obligations","Grant_Obligations","Idv_Obligations","Loan_Obligations","Other_Obligations")
VALUES
('FMMGJ8CQA4F7',0,'2008','4',0,0,0,0,0,0),
('FMMGJ8CQA4F7',299994,'2008','5',299994,0,0,0,0,0),
('FMMGJ8CQA4F7',249946,'2008','6',249946,0,0,0,0,0),
('FMMGJ8CQA4F7',0,'2008','7',0,0,0,0,0,0),
('FMMGJ8CQA4F7',0,'2008','8',0,0,0,0,0,0),
('FMMGJ8CQA4F7',0,'2008','9',0,0,0,0,0,0),
('FMMGJ8CQA4F7',799999.47,'2008','10',799999.47,0,0,0,0,0),
('FMMGJ8CQA4F7',-63776,'2008','11',-63776,0,0,0,0,0);
