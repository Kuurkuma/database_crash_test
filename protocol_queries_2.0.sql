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
    artists,
    song,
    popularity,
    LEAD(song,1) OVER (
        PARTITION BY artists
        ORDER BY popularity DESC) AS next_most_popular_song,
    LEAD(popularity, 1) OVER(
        PARTITION BY artists
        ORDER BY popularity DESC) AS next_song_popularity
FROM data
ORDER BY artists, popularity DESC 
;

-- WINDOW FUNCTION WITH CTE
-- top 10 songs by popularity per time_signature
WITH ranked_songs AS (
  SELECT
    artists,
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

-- WINDOW FUNCTION WITH CTE & AGGREGRATION
-- compare average danceability per artist
WITH avg_danceability AS (
    SELECT
    song,
    artists,
    danceability,
    AVG(danceability) OVER (
        PARTITION BY artists) AS artist_avg_danceability,
    danceability - AVG(danceability) OVER (
        PARTITION BY artists) AS danceability_difference
    FROM data
    ORDER BY
        artists,
        danceability_difference DESC
)
SELECT
    song,
    artists,
    danceability,
    ROUND(artist_avg_danceability,2) as artist_avg_danceability,
    ROUND(danceability_difference,2) as danceability_difference
FROM avg_danceability

-- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artists,
    EXTRACT(year FROM strptime(
      regexp_replace(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), 
      '%d %B %Y'
    )) AS release_year
  FROM 
    data
),

artist_release_gaps AS (
  SELECT
    artists,
    release_year,
    -- Get the release year of the previous song for this artist
    LAG(release_year, 1) OVER (PARTITION BY artists ORDER BY release_year) AS previous_release_year
  FROM
    artist_release_years
)

SELECT
  artists,
  previous_release_year,
  release_year
FROM artist_release_gaps
ORDER BY artists, release_year;