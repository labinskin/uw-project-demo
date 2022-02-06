-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Offenses" (
    "county" varchar   NOT NULL,
    "agency_name" varchar   NOT NULL,
    "offense_description" varchar   NOT NULL,
    "months_submitted" int   NOT NULL,
    "year" int   NOT NULL,
    "offence_count" int   NOT NULL,
    CONSTRAINT "pk_Offenses" PRIMARY KEY (
        "county"
     )
);

CREATE TABLE "Education" (
    "county" varchar   NOT NULL,
    "less_than_high_school" int   NOT NULL,
    "high_school_diploma" int   NOT NULL,
    "some_college_or_associates" int   NOT NULL,
    "bachelors_degree_or_higher" int   NOT NULL,
    CONSTRAINT "pk_Education" PRIMARY KEY (
        "county"
     )
);

CREATE TABLE "GDP" (
    "county" varchar   NOT NULL,
    "year" int   NOT NULL,
    "gdp" int   NOT NULL,
    "gdp_rank_in_state" int   NOT NULL,
    "percent_change_from_preceding_period" decimal(5,2)   NOT NULL,
    "change_rank_in_state" int   NOT NULL,
    CONSTRAINT "pk_GDP" PRIMARY KEY (
        "county"
     )
);

ALTER TABLE "Offenses" ADD CONSTRAINT "fk_Offenses_county" FOREIGN KEY("county")
REFERENCES "Education" ("county");

ALTER TABLE "Education" ADD CONSTRAINT "fk_Education_county" FOREIGN KEY("county")
REFERENCES "GDP" ("county");

