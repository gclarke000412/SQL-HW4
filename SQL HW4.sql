CREATE TABLE "service" (
  "service_id" SERIAL,
  "service_total" NUMERIC(9,2),
  "mechanic_id" INTEGER,
  "part_id" INTEGER,
  PRIMARY KEY ("service_id")
);

CREATE TABLE "part" (
  "part_id" SERIAL,
  "cost" NUMERIC(7,2),
  PRIMARY KEY ("part_id"),
  CONSTRAINT "FK_part.part_id"
    FOREIGN KEY ("mechanic_id")
);

CREATE TABLE "car" (
  "car_id" SERIAL,
  "make" VARCHAR(100),
  "model" VARCHAR(100),
  "year" NUMERIC(4),
  "invoice_id" INTEGER,
  "service_id" INTEGER,
  PRIMARY KEY ("car_id")
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(150),
  "last_name" VARCHAR(150),
  PRIMARY KEY ("mechanic_id")
);

CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL,
  "first_name" VARCHAR(150),
  "last_name" VARCHAR(150),
  "car_id" INTEGER,
  PRIMARY KEY ("salesperson_id")
);

CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(150),
  "last_name" VARCHAR(150),
  "billing_info" VARCHAR(150),
  "car_id" INTEGER,
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "invoice" (
  "invoice_id" SERIAL,
  "sub_total" NUMERIC(9,2),
  "salesperson_id" INTEGER,
  PRIMARY KEY ("invoice_id")
);
