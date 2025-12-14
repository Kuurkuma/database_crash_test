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

-- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT *
FROM data
WHERE text LIKE '%%love%%'
AND tempo < 120;

-- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT
    DISTINCT a1.artist_s AS artists,
    COUNT(*) AS duplicate_count
FROM data AS a1
JOIN data AS a2
ON a1.artist_s = a2.artist_s
GROUP BY a1.artist_s;

-- WINDOW FUNCTION (LEAD)
-- find next popular song based on popularity grouped by artists
SELECT
    artist_s,
    song,
    popularity,
    lead(song,1) OVER (
        PARTITION BY artist_s
        ORDER BY popularity DESC) AS next_most_popular_song,
    lead(popularity, 1) OVER(
        PARTITION BY artist_s
        ORDER BY popularity DESC) AS next_song_popularity
FROM data
ORDER BY artist_s, popularity DESC
;

-- WINDOW FUNCTION WITH CTE
-- top 10 songs by popularity per time_signature
WITH ranked_songs AS (
  SELECT
    artist_s,
    song,
    time_signature,
    popularity,
    ROW_NUMBER() OVER (PARTITION BY time_signature ORDER BY popularity DESC) as popularity_rank
  FROM data
  WHERE time_signature IS NOT NULL
)
SELECT
  *
FROM ranked_songs
WHERE popularity_rank <= 10
ORDER BY
    popularity DESC,
    popularity_rank;

-- DATE MANIPULATION (cross-engine)
WITH artist_release_years AS (
    SELECT DISTINCT
        artist_s,
        -- Take last 4 characters of release_date as year
        RIGHT(release_date, 4) AS year_4digits,
        RIGHT(release_date, 2) AS year_2digits,
        RIGHT(release_date, 1) AS year_1digits
    FROM data
)
SELECT
    artist_s,
    year_4digits,
    year_2digits,
    year_1digits
FROM artist_release_years
ORDER BY artist_s, year_4digits;

-- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION (cross-engine)
WITH artist_release_years AS (
    SELECT DISTINCT
        artist_s,
        RIGHT(release_date, 4) AS release_year_str
    FROM data
),

artist_release_gaps AS (
    SELECT
        artist_s,
        release_year_str AS release_year,
        lag(release_year_str, 1) OVER (
            PARTITION BY artist_s
            ORDER BY release_year_str
        ) AS previous_release_year
    FROM artist_release_years
)

SELECT
    artist_s,
    previous_release_year,
    release_year
FROM artist_release_gaps
ORDER BY artist_s, release_year;

