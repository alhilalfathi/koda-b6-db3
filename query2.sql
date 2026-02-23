-- Melakukan join directors dan genres ke table movies
SELECT "movies"."id","movies"."name","movies_genres"."genre","movies_directors"."director_id",
"directors"."first_name" AS "directors_firstname","directors"."last_name" AS "directors_lastname" 
FROM "movies"
JOIN "movies_genres" ON "movies_genres"."movie_id" = "movies"."id"
JOIN "movies_directors" ON "movies_directors"."movie_id" = "movies"."id"
JOIN "directors" ON "directors"."id" = "movies_directors"."director_id"
LIMIT 50;

-- Melakukan join movies dan roles berdasarkan table actors
SELECT "actors"."first_name", "actors"."last_name",
"actors"."id" AS "actor_id","movies"."name" AS "movie_name"
FROM "actors"
JOIN "roles" ON "roles"."actor_id" = "actors"."id"
JOIN "movies" ON "movies"."id" = "roles"."movie_id"
LIMIT 50;
