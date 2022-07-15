-- c_bpartner_location
ALTER TABLE IF EXISTS adempiere.c_bpartner_location ADD COLUMN IF NOT EXISTS name CHARACTER VARYING(300) NOT NULL DEFAULT '.'::character varying;