-- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000;

-- COUNT ALL
SELECT COUNT(*) FROM data;

-- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT genre,
    COUNT(genre) AS genre_count 
FROM data 
GROUP BY genre 
ORDER BY genre_count DESC;

-- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT album,
    COUNT(album) AS album_count 
FROM data 
GROUP BY album 
ORDER BY album_count DESC;

-- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
    AVG(tempo) AS avg_tempo,
    SUM(tempo) AS sum_tempo, 
    MIN(tempo) AS min_tempo, 
    MAX(tempo) AS max_tempo 
FROM data;

-- FILTER BY 'text' WITH 'love' & 'explicit' = 1'
SELECT * 
FROM data 
WHERE text LIKE '%love%'
AND explicit = 1;

-- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
    DISTINCT a1."Artist(s)" AS artists, 
    COUNT(*) AS duplicate_count 
FROM data AS a1 
JOIN data AS a2 
ON a1."Artist(s)" = a2."Artist(s)"  
GROUP BY a1."Artist(s)";