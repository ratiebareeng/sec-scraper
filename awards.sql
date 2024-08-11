CREATE TABLE "awards" (
  "fiscal_year" bigint,
  "latest_action_date" text,
  "toptier_code" text,
  "transaction_count" bigint,
  "obligations" double precision
);

INSERT INTO "awards" ("fiscal_year","latest_action_date","toptier_code","transaction_count","obligations")
VALUES
(2024,'2024-07-25T00:00:00','097',2510968,206869322019.26);
