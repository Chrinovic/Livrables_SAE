DROP TABLE if EXISTS name_basics;
DROP TABLE if EXISTS title_akas;
DROP TABLE if EXISTS title_basics;
DROP TABLE if EXISTS title_crew;
DROP TABLE if EXISTS title_principals;
DROP TABLE if EXISTS title_ratings;

--Création des tables

CREATE TABLE name_basics(
    nconst text NOT NULL,
    primaryName text ,
    birthYear int,
    deathYear int,
    primaryProfession text,
    knownForTitles text
);

CREATE TABLE title_akas(
    tconst text NOT NULL,
    ordering INTEGER NOT NULL, 
    title text, 
    region text, 
    language text, 
    types text, 
    attributes text,
    isOriginalTitle text 
);

CREATE TABLE title_basics(
    tconst text  NOT NULL,
    titleType text,
    primaryTitle text,
    originalTitle text,
    isAdult boolean ,
    startYear int,
    endYear int,
    runtimeMinutes int,
    genres text 
);

CREATE TABLE title_crew(
    tconst text NOT NULL,
    directors text,
    writers text

);

CREATE TABLE title_episode(
    tconst text  NOT NULL,
    parentTconst text NOT NULL, 
    seasonNumber text,
    episodeNumber text
);

CREATE TABLE title_principals(
    tconst text NOT NULL, 
    ordering int NOT NULL, 
    nconst text NOT NULL, 
    category text, 
    job text, 
    characters text
    
);

CREATE TABLE title_ratings(
    tconst text  NOT NULL,
    averageRating float,
    numVotes int
);

--Définition des contraintes

ALTER TABLE name_basics
ADD CONSTRAINT n_basics_nconst PRIMARY KEY (nconst);

ALTER TABLE title_basics
ADD CONSTRAINT t_basics_tconst PRIMARY KEY (tconst);

ALTER TABLE title_akas 
ADD CONSTRAINT akas_tconst_ordering PRIMARY KEY (tconst,ordering);

ALTER TABLE title_crew
ADD CONSTRAINT crew_tconst PRIMARY KEY (tconst);

ALTER TABLE title_crew   
ADD CONSTRAINT crew_tconst_fkey FOREIGN KEY (tconst) REFERENCES title_basics(tconst)
NOT VALID; 

ALTER TABLE title_episode
ADD CONSTRAINT episode_tconst PRIMARY KEY (tconst);

ALTER TABLE title_episode
ADD CONSTRAINT episode_tconst_fkey FOREIGN KEY (tconst) REFERENCES title_basics(tconst)
NOT VALID;

ALTER TABLE title_principals
ADD CONSTRAINT principals_tconst_ordering PRIMARY KEY (tconst,ordering);

ALTER TABLE title_principals
ADD CONSTRAINT Principals_nconst_fkey FOREIGN KEY (nconst) REFERENCES name_basics(nconst)
NOT VALID;

ALTER TABLE title_principals
ADD CONSTRAINT principals_tconst_fkey FOREIGN KEY (tconst) REFERENCES title_basics(tconst)
NOT VALID;

ALTER TABLE title_ratings
ADD CONSTRAINT ratings_tconst PRIMARY KEY (tconst);

ALTER TABLE title_ratings
ADD CONSTRAINT ratings_tconst_fkey FOREIGN KEY (tconst) REFERENCES title_basics(tconst)
NOT VALID;

ALTER TABLE title_akas
ADD CONSTRAINT akas_tconst_fkey FOREIGN KEY (tconst) REFERENCES title_basics(tconst)
NOT VALID;












