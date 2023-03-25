/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.2 		*/
/*  Created On : 04-May-2022 21:43:56 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "Maintenancereport" CASCADE
;

/* Create Tables */

CREATE TABLE "Maintenancereport"
(
	"Maintenanceparty" varchar NULL,	-- 5-11 Details of who performed the maintenance (individual or organisation).
	"MaintenancereportID" varchar NOT NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "Maintenancereport" ADD CONSTRAINT "PK_Maintenancereport"
	PRIMARY KEY ("MaintenancereportID")
;

/* Create Foreign Key Constraints */

ALTER TABLE "Maintenancereport" ADD CONSTRAINT "FK_MaintenanceReport_LogEntry"
	FOREIGN KEY ("MaintenancereportID") REFERENCES "Logentry" ("LogentryID") ON DELETE No Action ON UPDATE No Action
;

/* Create Table Comments, Sequences for Autonumber Columns */

COMMENT ON TABLE "Maintenancereport"
	IS '5-13 Description of maintenance (actual) performed on instrument.'
;

COMMENT ON COLUMN "Maintenancereport"."Maintenanceparty"
	IS '5-11 Details of who performed the maintenance (individual or organisation).'
;