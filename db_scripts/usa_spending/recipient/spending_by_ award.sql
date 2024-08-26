CREATE TABLE "spending_by_ geography" (
  "uei" text,
  "internal_id" bigint,
  "Award ID" text,
  "Recipient Name" text,
  "Start Date" text,
  "End Date" text,
  "Award Amount" double precision,
  "Awarding Agency" text,
  "Awarding Sub Agency" text,
  "Contract Award Type" text,
  "Award Type" text NULL,
  "Funding Agency" text,
  "Funding Sub Agency" text,
  "awarding_agency_id" bigint,
  "agency_slug" text,
  "generated_internal_id" text
);

INSERT INTO "spending_by_ geography" ("uei","internal_id","Award ID","Recipient Name","Start Date","End Date","Award Amount","Awarding Agency","Awarding Sub Agency","Contract Award Type","Award Type","Funding Agency","Funding Sub Agency","awarding_agency_id","agency_slug","generated_internal_id")
VALUES
('DS4MZBE4SFZ5',1513068,'0028','BOOZ ALLEN HAMILTON INC.','2008-07-14','2009-02-12',199999.65,'Department of Defense','Department of the Navy','DO',NULL,'Department of Defense','Department of the Navy',1173,'department-of-defense','CONT_AWD_0028_9700_N6600103D5020_9700'),
('DS4MZBE4SFZ5',1491199,'0027','BOOZ ALLEN HAMILTON INC.','2008-07-07','2009-01-30',599999.82,'Department of Defense','Department of the Navy','DELIVERY ORDER',NULL,'Office of Personnel Management','Office of Personnel Management',1173,'department-of-defense','CONT_AWD_0027_9700_N6600103D5020_9700'),
('DS4MZBE4SFZ5',1456897,'0026','BOOZ ALLEN HAMILTON INC.','2008-03-26','2008-09-30',249946,'Department of Defense','Department of the Navy','DELIVERY ORDER',NULL,'Office of Personnel Management','Office of Personnel Management',1173,'department-of-defense','CONT_AWD_0026_9700_N6600103D5020_9700'),
('DS4MZBE4SFZ5',1434947,'0025','BOOZ ALLEN HAMILTON INC.','2008-02-26','2008-09-30',299994,'Department of Defense','Department of the Navy','DELIVERY ORDER',NULL,'Office of Personnel Management','Office of Personnel Management',1173,'department-of-defense','CONT_AWD_0025_9700_N6600103D5020_9700'),
('DS4MZBE4SFZ5',1402343,'0024','BOOZ ALLEN HAMILTON INC.','2007-12-20','2008-03-19',43110,'Department of Defense','Department of the Navy','DELIVERY ORDER',NULL,'Office of Personnel Management','Office of Personnel Management',1173,'department-of-defense','CONT_AWD_0024_9700_N6600103D5020_9700'),
('DS4MZBE4SFZ5',1378673,'0023','BOOZ ALLEN HAMILTON INC.','2007-11-15','2008-05-11',474999,'Department of Defense','Department of the Navy','DO',NULL,'Office of Personnel Management','Office of Personnel Management',1173,'department-of-defense','CONT_AWD_0023_9700_N6600103D5020_9700'),
('DS4MZBE4SFZ5',1350349,'0022','BOOZ ALLEN HAMILTON INC.','2007-07-24','2007-12-31',359993,'Department of Defense','Department of the Navy','DELIVERY ORDER',NULL,'Office of Personnel Management','Office of Personnel Management',1173,'department-of-defense','CONT_AWD_0022_9700_N6600103D5020_9700'),
('DS4MZBE4SFZ5',1325522,'0021','BOOZ ALLEN HAMILTON INC.','2007-03-15','2007-09-30',485000,'Department of Defense','Department of the Navy','DO',NULL,'Office of Personnel Management','Office of Personnel Management',1173,'department-of-defense','CONT_AWD_0021_9700_N6600103D5020_9700'),
('DS4MZBE4SFZ5',1294698,'0020','BOOZ ALLEN HAMILTON INC.','2006-10-31','2007-05-31',474999,'Department of Defense','Department of the Navy','DO',NULL,'Office of Personnel Management','Office of Personnel Management',1173,'department-of-defense','CONT_AWD_0020_9700_N6600103D5020_9700'),
('DS4MZBE4SFZ5',1285215,'0020','BOOZ ALLEN HAMILTON INC.','2002-10-29','2003-10-23',479590.81,'Department of Defense','Department of the Army','DO',NULL,'Department of Defense','Department of the Army',1173,'department-of-defense','CONT_AWD_0020_9700_DASG6298D0006_9700');
