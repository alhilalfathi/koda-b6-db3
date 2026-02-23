-- Mencari movie dengan tahun rilis lebih dari tahun 2000
SELECT "id","name","year" FROM "movies"
WHERE "year" > 2000
ORDER BY "year" ASC;

-- Mencari actors dengan akhiran nama 's'
SELECT "id","first_name","last_name" FROM "actors"
WHERE "last_name" ILIKE '%s';

-- Mencari movie dengan rating diantara 5 dan 7 dan tahun rilis 2004 sampai 2006
SELECT "id","name","year","rankscore" FROM "movies"
WHERE ("rankscore" BETWEEN 5 AND 7 ) AND ("year" BETWEEN 2004 AND 2006)
LIMIT 10;

-- Menghitung jumlah movie dengan rating 6
SELECT COUNT("rankscore") FROM "movies"
WHERE "rankscore" = 6; 
