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