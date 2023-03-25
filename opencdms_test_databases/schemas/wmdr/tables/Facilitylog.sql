/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.2 		*/
/*  Created On : 04-May-2022 21:43:56 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "Facilitylog" CASCADE
;

/* Create Tables */

CREATE TABLE "Facilitylog"
(
	"FacilitylogID" varchar NOT NULL,
	facility varchar NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "Facilitylog" ADD CONSTRAINT "PK_Facilitylog"
	PRIMARY KEY ("FacilitylogID")
;

/* Create Foreign Key Constraints */

ALTER TABLE "Facilitylog" ADD CONSTRAINT "FK_FacilityLog_Log"
	FOREIGN KEY ("FacilitylogID") REFERENCES "Log" ("LogID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Facilitylog" ADD CONSTRAINT "FK_FacilityLog_facilityLog"
	FOREIGN KEY (facility) REFERENCES "Observingfacility" ("ObservingfacilityID") ON DELETE No Action ON UPDATE No Action
;

/* Create Table Comments, Sequences for Autonumber Columns */

COMMENT ON TABLE "Facilitylog"
	IS '4-04 The FacilityLog is used to capture notable events and extra information about the observing facility or its surroundings. '
;