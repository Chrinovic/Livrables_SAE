COPY name_basics FROM 'name.basics.tsv'  DELIMITER E'\t' csv header  ;
COPY title_akas FROM 'title.akas.tsv'  DELIMITER E'\t' csv header  ;
COPY title_basics FROM 'title.basics.tsv'  DELIMITER E'\t' csv header  ;
COPY title_crew FROM 'title.crew.tsv'  DELIMITER E'\t' csv header  ;
COPY title_episode FROM 'title.episode.tsv'  DELIMITER E'\t' csv header  ;
COPY title_principals FROM 'title.principals.tsv'  DELIMITER E'\t' csv header  ;
COPY title_ratings FROM 'title.ratings.tsv'  DELIMITER E'\t' csv header  ;