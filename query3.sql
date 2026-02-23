-- Mendapatkan director, berapa genre yang di-direct
SELECT 
    "directors"."id", 
    "directors"."first_name" AS "firstname", 
    "directors"."last_name" AS "lastname", 
    COUNT("directors_genres"."genre") AS "total_genre"
FROM "directors"
JOIN "directors_genres" ON "directors_genres"."director_id" = "directors"."id"
GROUP BY "directors"."id", "directors"."first_name", "directors"."last_name"
LIMIT 50;

-- Mendapatkan actors yang memiliki roles lebih dari 5
SELECT "actors"."id", "actors"."first_name", "actors"."last_name", COUNT("roles"."role") AS roles
FROM "actors"
JOIN "roles" ON "roles"."actor_id" = "actors"."id"
GROUP BY "actors"."id", "actors"."first_name", "actors"."last_name"
HAVING COUNT("roles"."role") > 5
LIMIT 50;

-- Mendapatkan directors paling produktif sepanjang masa
SELECT "directors"."id", "directors"."first_name", "directors"."last_name", COUNT("movies"."name") AS "total_movies"
FROM "directors"
JOIN "movies_directors" ON "movies_directors"."director_id" = "directors"."id"
JOIN "movies" ON "movies"."id" = "movies_directors"."movie_id"
GROUP BY "directors"."id", "directors"."first_name", "directors"."last_name"
ORDER BY "total_movies" DESC
LIMIT 50;

-- Mendapatkan tahun tersibuk sepanjang masa
SELECT "movies"."year", COUNT("movies"."name") AS "total_movies"
FROM "movies"
GROUP BY "movies"."year"
ORDER BY "total_movies" DESC
LIMIT 50;

-- Mendapatkan movies dengan genres yang dibuatkan menjadi 1 column (value dipisahkan comma)
SELECT "movies"."id", "movies"."name", 
    string_agg( "movies_genres"."genre" , ',' ) AS "movies_genre"
FROM "movies"
JOIN "movies_genres" ON "movies_genres"."movie_id" = "movies"."id"
GROUP BY "movies"."id", "movies"."name"
LIMIT 50;

