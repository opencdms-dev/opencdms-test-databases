/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.2 		*/
/*  Created On : 04-May-2022 21:43:56 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "Localreferencesurfacetype" CASCADE
;

/* Create Tables */

CREATE TABLE "Localreferencesurfacetype"
(
	"LocalreferencesurfacetypeID" varchar NOT NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "Localreferencesurfacetype" ADD CONSTRAINT "PK_Localreferencesurfacetype"
	PRIMARY KEY ("LocalreferencesurfacetypeID")
;

/* Create Table Comments, Sequences for Autonumber Columns */

COMMENT ON TABLE "Localreferencesurfacetype"
	IS '5-05 Local Reference Surface type.'
;