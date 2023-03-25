/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.2 		*/
/*  Created On : 04-May-2022 21:43:57 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "Observingfacility" CASCADE
;

/* Create Tables */

CREATE TABLE "Observingfacility"
(
	"Climatezone" varchar NULL,	-- 4-07 type of climate zone at the facility. From the ClimateZoneType codelist.
	"Dateclosed" varchar NULL,
	"Dateestablished" varchar NULL,
	"Facilitytype" varchar NULL,	-- 3-04 The type of the observing facility from the MonitoringFacilityType codelist.
	"Population" varchar NULL,
	"Programaffiliation" varchar NULL,	-- 2-02 The global, regional or national programme(s)/network(s) that the ObservingFacility is associated with. programAffiliation also enables the specification of a program-specific identifier of the ObservingFacility, an alias name,  the validPeriod of the programAffiliation, as well as the reportingStatus of an ObservingFacility under the respective program.
	"Surfacecover" varchar NULL,	-- 4-01 The (bio)physical cover on the earth's surface in the vicinity of the observations from the LandCoverType codelist .  NOTE: Only applies for surface-based (fixed) observing facilities.
	"Surfaceroughness" varchar NULL,	-- 4-06 surface roughness at the facility. From the SurfaceRoughnessType codelist.
	"Territory" varchar NULL,	-- 3-02 The territory the observing facility is located in, from the TerritoryType codelist.
	"Timezone" varchar NULL,	-- Time zone the observing facility is located in, from the timeZoneTypeType codelist.
	"Topographybathymetry" varchar NULL,	-- 4-03 Topography or bathymetry characterizes the shape or configuration of a geographical feature, represented on a map by contour lines. It is implemented as a timestamped composite of four elements.
	"Wmoregion" varchar NULL,	-- 3-01 The WMO region the observing facility is located in, from the WMORegionType codelist.
	"ObservingfacilityID" varchar NOT NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "Observingfacility" ADD CONSTRAINT "PK_Observingfacility"
	PRIMARY KEY ("ObservingfacilityID")
;

/* Create Foreign Key Constraints */

ALTER TABLE "Observingfacility" ADD CONSTRAINT "FK_ObservingFacility_AbstractEnvironmentalMonitoringFacility"
	FOREIGN KEY ("ObservingfacilityID") REFERENCES "Abstractenvironmentalmonitoringfacility" ("AbstractenvironmentalmonitoringfacilityID") ON DELETE No Action ON UPDATE No Action
;

/* Create Table Comments, Sequences for Autonumber Columns */

COMMENT ON TABLE "Observingfacility"
	IS '[WMDS Category 3] An observing facility (station/platform) can be anything that supports making observations, e.g., a fixed station, moving equipment or a remote sensing platform. In abstract terms, an observing facility groups a near colocation of observing equipment managed by a single entity or several entities.'
;

COMMENT ON COLUMN "Observingfacility"."Climatezone"
	IS '4-07 type of climate zone at the facility. From the ClimateZoneType codelist.'
;

COMMENT ON COLUMN "Observingfacility"."Facilitytype"
	IS '3-04 The type of the observing facility from the MonitoringFacilityType codelist.'
;

COMMENT ON COLUMN "Observingfacility"."Programaffiliation"
	IS '2-02 The global, regional or national programme(s)/network(s) that the ObservingFacility is associated with. programAffiliation also enables the specification of a program-specific identifier of the ObservingFacility, an alias name,  the validPeriod of the programAffiliation, as well as the reportingStatus of an ObservingFacility under the respective program.'
;

COMMENT ON COLUMN "Observingfacility"."Surfacecover"
	IS '4-01 The (bio)physical cover on the earth''s surface in the vicinity of the observations from the LandCoverType codelist . 
NOTE: Only applies for surface-based (fixed) observing facilities.'
;

COMMENT ON COLUMN "Observingfacility"."Surfaceroughness"
	IS '4-06 surface roughness at the facility. From the SurfaceRoughnessType codelist.'
;

COMMENT ON COLUMN "Observingfacility"."Territory"
	IS '3-02 The territory the observing facility is located in, from the TerritoryType codelist.'
;

COMMENT ON COLUMN "Observingfacility"."Timezone"
	IS 'Time zone the observing facility is located in, from the timeZoneTypeType codelist.'
;

COMMENT ON COLUMN "Observingfacility"."Topographybathymetry"
	IS '4-03 Topography or bathymetry characterizes the shape or configuration of a geographical feature, represented on a map by contour lines. It is implemented as a timestamped composite of four elements.'
;

COMMENT ON COLUMN "Observingfacility"."Wmoregion"
	IS '3-01 The WMO region the observing facility is located in, from the WMORegionType codelist.'
;