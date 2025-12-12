{'mysql_cpu10_mem32G': <bench.databases.MySQLHandler object at 0x1164b7230>, 'postgres_cpu10_mem32G': <bench.databases.PostgresHandler object at 0x1164b7a10>, 'duckdb_cpu10_mem32G': <bench.databases.DuckDBHandler object at 0x1164b7e00>, 'clickhouse_cpu10_mem32G': <bench.databases.ClickHouseHandler object at 0x1164b78c0>}
Enter your Kaggle username: tbernice
Enter your Kaggle API key (input will not be visible): 
Kaggle credentials set.
Warning: Looks like you're using an outdated `kagglehub` version (installed: 0.3.12), please consider upgrading to the latest version (0.3.13).
Kaggle credentials successfully validated.
Warning: Looks like you're using an outdated `kagglehub` version (installed: 0.3.12), please consider upgrading to the latest version (0.3.13).
2025-12-12 17:21:02 - INFO - Loaded 551443 rows from Kaggle dataset
2025-12-12 17:21:02 - INFO - Data types: artist_s                           object
song                               object
text                               object
length                             object
emotion                            object
genre                              object
album                              object
release_date                       object
key                                object
tempo                               int64
loudness_db                        object
time_signature                     object
explicit                           object
popularity                          int64
energy                              int64
danceability                        int64
positiveness                        int64
speechiness                         int64
liveness                            int64
acousticness                        int64
instrumentalness                    int64
good_for_party                      int64
good_for_work_study                 int64
good_for_relaxation_meditation      int64
good_for_exercise                   int64
good_for_running                    int64
good_for_yoga_stretching            int64
good_for_driving                    int64
good_for_social_gatherings          int64
good_for_morning_routine            int64
similar_artist_1                   object
similar_song_1                     object
similarity_score_1                float64
similar_artist_2                   object
similar_song_2                     object
similarity_score_2                float64
similar_artist_3                   object
similar_song_3                     object
similarity_score_3                float64
dtype: object
2025-12-12 17:21:02 - INFO - Data sample:   artist_s                       song                                               text length  ... similarity_score_2 similar_artist_3 similar_song_3 similarity_score_3
0      !!!  Even When the Waters Cold  Friends told her she was better off at the bot...  03:47  ...           0.983719            Space  Neighbourhood           0.983236
1      !!!         One Girl / One Boy  Well I heard it, playing soft From a drunken b...  04:03  ...           0.990905     Justice Crew      Everybody           0.984483
2      !!!          Pardon My Freedom  Oh my god, did I just say that out loud? Shoul...  05:51  ...           0.965147     The Jacksons     Lovely One           0.956752
3      !!!                        Ooo  [Verse 1] Remember when I called you on the te...  03:44  ...           0.991494      Tiwa Savage      My Darlin           0.990381
4      !!!                 Freedom 15  [Verse 1] Calling me like I got something to s...  06:00  ...           0.981524        Freestyle  Its Automatic           0.981415

[5 rows x 39 columns]
2025-12-12 17:21:02 - INFO - Benchmarking mysql_cpu10_mem32G...
2025-12-12 17:21:02 - INFO - Started container: test-mysql_cpu10_mem32G (e6f156bddcf7), with memory limit: 32G and cpu limit: 10
2025-12-12 17:21:14 - INFO - MySQLHandler is ready
2025-12-12 17:21:14 - ERROR - Error benchmarking mysql_cpu10_mem32G: (pymysql.err.OperationalError) (2013, 'Lost connection to MySQL server during query')
(Background on this error at: https://sqlalche.me/e/20/e3q8)
2025-12-12 17:21:24 - INFO - Stopped container: test-mysql_cpu10_mem32G
2025-12-12 17:21:24 - INFO - Removed container: test-mysql_cpu10_mem32G
2025-12-12 17:21:24 - INFO - Benchmarking postgres_cpu10_mem32G...
2025-12-12 17:21:24 - INFO - Started container: test-postgres_cpu10_mem32G (3123d2a2b81a), with memory limit: 32G and cpu limit: 10
2025-12-12 17:21:29 - INFO - PostgresHandler is ready
2025-12-12 17:21:30 - INFO - Loading data to PostgresHandler...
2025-12-12 17:22:50 - INFO - Loaded 551443 rows into the database
2025-12-12 17:22:50 - INFO - Running query: -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000...
2025-12-12 17:22:50 - INFO - Transpiled query: from -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000 to /* TOP 1000 ROWS */ SELECT * FROM data LIMIT 1000
2025-12-12 17:22:53 - INFO - Query executed in 128.39ms, CPU: 0.86%, Memory: 1164.60MB (7.26%)
2025-12-12 17:22:53 - INFO - Sample result (1000 rows total):
  artist_s                       song                                               text length  ... similarity_score_2 similar_artist_3 similar_song_3 similarity_score_3
0      !!!  Even When the Waters Cold  Friends told her she was better off at the bot...  03:47  ...           0.983719            Space  Neighbourhood           0.983236
1      !!!         One Girl / One Boy  Well I heard it, playing soft From a drunken b...  04:03  ...           0.990905     Justice Crew      Everybody           0.984483
2      !!!          Pardon My Freedom  Oh my god, did I just say that out loud? Shoul...  05:51  ...           0.965147     The Jacksons     Lovely One           0.956752
3      !!!                        Ooo  [Verse 1] Remember when I called you on the te...  03:44  ...           0.991494      Tiwa Savage      My Darlin           0.990381
4      !!!                 Freedom 15  [Verse 1] Calling me like I got something to s...  06:00  ...           0.981524        Freestyle  Its Automatic           0.981415

[5 rows x 39 columns]
2025-12-12 17:22:53 - INFO - Running query: -- COUNT ALL
SELECT COUNT(*) FROM data...
2025-12-12 17:22:53 - INFO - Transpiled query: from -- COUNT ALL
SELECT COUNT(*) FROM data to /* COUNT ALL */ SELECT COUNT(*) FROM data
2025-12-12 17:22:57 - INFO - Query executed in 201.57ms, CPU: 1.12%, Memory: 1171.82MB (7.31%)
2025-12-12 17:22:57 - INFO - Sample result (1 rows total):
    count
0  551443
2025-12-12 17:22:57 - INFO - Running query: -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT g...
2025-12-12 17:22:57 - INFO - Transpiled query: from -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT genre,
    COUNT(genre) AS genre_count 
FROM data 
GROUP BY genre 
ORDER BY genre_count DESC to /* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DISTINCT genre, COUNT(genre) AS genre_count FROM data GROUP BY genre ORDER BY genre_count DESC
2025-12-12 17:23:01 - INFO - Query executed in 242.47ms, CPU: 0.90%, Memory: 1169.21MB (7.29%)
2025-12-12 17:23:01 - INFO - Sample result (3097 rows total):
     genre  genre_count
0  hip hop       262070
1      pop        11451
2  country         7392
3     folk         4897
4     jazz         3913
2025-12-12 17:23:01 - INFO - Running query: -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT al...
2025-12-12 17:23:01 - INFO - Transpiled query: from -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT album,
    COUNT(album) AS album_count 
FROM data 
GROUP BY album 
ORDER BY album_count DESC to /* DISTINCT VALUES IN COLUMN 'album' */ SELECT DISTINCT album, COUNT(album) AS album_count FROM data GROUP BY album ORDER BY album_count DESC
2025-12-12 17:23:05 - INFO - Query executed in 995.85ms, CPU: 0.11%, Memory: 1180.86MB (7.37%)
2025-12-12 17:23:05 - INFO - Sample result (154682 rows total):
           album  album_count
0    685 (Remix)         1603
1  Greatest Hits          683
2     Everything          602
3   Road From 26          599
4        312 DAY          593
2025-12-12 17:23:05 - INFO - Running query: -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
   ...
2025-12-12 17:23:05 - INFO - Transpiled query: from -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
    AVG(tempo) AS avg_tempo,
    SUM(tempo) AS sum_tempo, 
    MIN(tempo) AS min_tempo, 
    MAX(tempo) AS max_tempo 
FROM data to /* STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo' */ SELECT AVG(tempo) AS avg_tempo, SUM(tempo) AS sum_tempo, MIN(tempo) AS min_tempo, MAX(tempo) AS max_tempo FROM data
2025-12-12 17:23:09 - INFO - Query executed in 1047.16ms, CPU: 0.59%, Memory: 1332.07MB (8.31%)
2025-12-12 17:23:09 - INFO - Sample result (1 rows total):
    avg_tempo   sum_tempo  min_tempo  max_tempo
0  120.513567  66456363.0         31        200
2025-12-12 17:23:09 - INFO - Running query: -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM dat...
2025-12-12 17:23:09 - INFO - Transpiled query: from -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM data 
WHERE text LIKE '%%love%%'
AND tempo < 120 to /* FILTER BY LIKE OPERATOR & 2 CONDITIONS */ SELECT * FROM data WHERE text LIKE '%%love%%' AND tempo < 120
2025-12-12 17:23:15 - INFO - Query executed in 3092.28ms, CPU: 0.05%, Memory: 1395.57MB (8.71%)
2025-12-12 17:23:15 - INFO - Sample result (115044 rows total):
  artist_s                             song                                               text  ...         similar_artist_3        similar_song_3 similarity_score_3
0   *NSYNC  For The Girl Who Has Everything  You drive a pretty car, you know how fine you ...  ...                    Modjo           What I Mean           0.988229
1   *NSYNC            Forever In Your Heart  You know    That I love you    In every way   ...  ...       Japanese Breakfast          Pure Handjob           0.984858
2   *NSYNC          Just Don't Tell Me That  Oh oh, no no, all right    You got to be seen ...  ...   TobyMac,Ryan Stevenson           Lift You Up           0.985144
3   *NSYNC              Kiss Me At Midnight  Kiss me at midnight    5...4...3...2...1    Ki...  ...  Sammy Porter,Liv Dawson  Talking Like Friends           0.987187
4     2Pac                     No More Pain  [Intro] Hey, DeVante Nigga, don't you know we'...  ...                  Dr. Dre     Bitches Aint Shit           0.933160

[5 rows x 39 columns]
2025-12-12 17:23:15 - INFO - Running query: -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
 ...
2025-12-12 17:23:15 - INFO - Transpiled query: from -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
    DISTINCT a1.artist_s AS artists, 
    COUNT(*) AS duplicate_count 
FROM data AS a1 
JOIN data AS a2 
ON a1.artist_s = a2.artist_s
GROUP BY a1.artist_s to /* SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS */ SELECT DISTINCT a1.artist_s AS artists, COUNT(*) AS duplicate_count FROM data AS a1 JOIN data AS a2 ON a1.artist_s = a2.artist_s GROUP BY a1.artist_s
2025-12-12 17:23:22 - INFO - Query executed in 4288.17ms, CPU: 0.08%, Memory: 1454.11MB (9.07%)
2025-12-12 17:23:22 - INFO - Sample result (127334 rows total):
  artists  duplicate_count
0      제노                1
1      코케                1
2     박진석                1
3     우정하                1
4     !!!              256
2025-12-12 17:23:22 - INFO - Running query: -- WINDOW FUNCTION (LEAD)
-- find next popular song based on...
2025-12-12 17:23:22 - INFO - Transpiled query: from -- WINDOW FUNCTION (LEAD)
-- find next popular song based on popularity grouped by artists
SELECT 
    artist_s,
    song,
    popularity,
    LEAD(song,1) OVER (
        PARTITION BY artist_s
        ORDER BY popularity DESC) AS next_most_popular_song,
    LEAD(popularity, 1) OVER(
        PARTITION BY artist_s
        ORDER BY popularity DESC) AS next_song_popularity
FROM data
ORDER BY artist_s, popularity DESC to /* WINDOW FUNCTION (LEAD) */ /* find next popular song based on popularity grouped by artists */ SELECT artist_s, song, popularity, LEAD(song, 1) OVER (PARTITION BY artist_s ORDER BY popularity DESC) AS next_most_popular_song, LEAD(popularity, 1) OVER (PARTITION BY artist_s ORDER BY popularity DESC) AS next_song_popularity FROM data ORDER BY artist_s, popularity DESC
2025-12-12 17:23:28 - INFO - Query executed in 2544.45ms, CPU: 8.45%, Memory: 1125.18MB (7.02%)
2025-12-12 17:23:28 - INFO - Sample result (551443 rows total):
  artist_s                                              song  popularity     next_most_popular_song  next_song_popularity
0       제노                                   Come Back to Me           5                       None                   NaN
1       코케                               I Wanna Be With You           0                       None                   NaN
2      박진석  Jung Seung Hwan - Day  Night English Translation           0                       None                   NaN
3      우정하                      Memories Smiling Tears Remix          21                       None                   NaN
4      !!!                                One Girl / One Boy          42  Even When the Waters Cold                  40.0
2025-12-12 17:23:28 - INFO - Running query: -- WINDOW FUNCTION WITH CTE
-- top 10 songs by popularity pe...
2025-12-12 17:23:28 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE
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
    popularity_rank to /* WINDOW FUNCTION WITH CTE */ /* top 10 songs by popularity per time_signature */ WITH ranked_songs AS (SELECT artist_s, song, time_signature, popularity, ROW_NUMBER() OVER (PARTITION BY time_signature ORDER BY popularity DESC) AS popularity_rank FROM data WHERE NOT time_signature IS NULL) SELECT * FROM ranked_songs WHERE popularity_rank <= 10 ORDER BY popularity DESC, popularity_rank
2025-12-12 17:23:32 - INFO - Query executed in 1039.10ms, CPU: 0.11%, Memory: 1166.73MB (7.28%)
2025-12-12 17:23:32 - INFO - Sample result (40 rows total):
        artist_s                        song time_signature  popularity  popularity_rank
0  Billie Eilish                       H.M.T            4/4         100                1
1  Billie Eilish                          HI            4/4          99                2
2  Billie Eilish  Slipping Away Original Mix            4/4          99                3
3  Billie Eilish                       So So            4/4          99                4
4  Billie Eilish          Birds of a Feather            4/4          99                5
2025-12-12 17:23:32 - INFO - Running query: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH a...
2025-12-12 17:23:32 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(regexp_replace(release_date, '%d %B %Y'))) AS release_year 
  FROM data
  ),

artist_release_gaps AS (
  SELECT
    artist_s,
    release_year,
    -- Get the release year of the previous song for this artist
    LAG(release_year, 1) OVER (PARTITION BY artist_s ORDER BY release_year) AS previous_release_year
  FROM
    artist_release_years
)

SELECT
  artist_s,
  previous_release_year,
  release_year
FROM artist_release_gaps
ORDER BY artist_s, release_year to /* WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION */ WITH artist_release_years AS (SELECT DISTINCT artist_s, EXTRACT(YEAR FROM STRPTIME(REGEXP_REPLACE(release_date, '%d %B %Y'))) AS release_year FROM data), artist_release_gaps AS (SELECT artist_s, release_year, LAG(release_year, 1) OVER (PARTITION BY artist_s ORDER BY release_year) AS previous_release_year /* Get the release year of the previous song for this artist */ FROM artist_release_years) SELECT artist_s, previous_release_year, release_year FROM artist_release_gaps ORDER BY artist_s, release_year
2025-12-12 17:23:34 - ERROR - Query execution failed: sqlalchemy.cyextension.immutabledict.immutabledict is not a sequence
2025-12-12 17:23:36 - INFO - Query FAILED in 78.93ms, CPU: 0.08%, Memory: 1173.04MB (7.32%)
2025-12-12 17:23:36 - INFO - Stopped container: test-postgres_cpu10_mem32G
2025-12-12 17:23:36 - INFO - Removed container: test-postgres_cpu10_mem32G
2025-12-12 17:23:36 - INFO - Benchmarking duckdb_cpu10_mem32G...
2025-12-12 17:23:37 - INFO - Started container: test-duckdb_cpu10_mem32G (ff669c5b7b99)
2025-12-12 17:23:41 - INFO - DuckDBHandler is ready
2025-12-12 17:23:41 - INFO - Loading data to DuckDBHandler...
/Users/macbook/Development/database_crash_test/.venv/lib/python3.13/site-packages/duckdb_engine/__init__.py:184: DuckDBEngineWarning: duckdb-engine doesn't yet support reflection on indices
  warnings.warn(
2025-12-12 17:25:23 - INFO - Loaded 551443 rows into the database
2025-12-12 17:25:23 - INFO - Running query: -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000...
2025-12-12 17:25:23 - INFO - Transpiled query: from -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000 to /* TOP 1000 ROWS */ SELECT * FROM data LIMIT 1000
2025-12-12 17:25:26 - INFO - Query executed in 36.40ms, CPU: 0.01%, Memory: 7.48MB (0.05%)
2025-12-12 17:25:26 - INFO - Sample result (1000 rows total):
  artist_s                       song                                               text length  ... similarity_score_2 similar_artist_3 similar_song_3 similarity_score_3
0      !!!  Even When the Waters Cold  Friends told her she was better off at the bot...  03:47  ...           0.983719            Space  Neighbourhood           0.983236
1      !!!         One Girl / One Boy  Well I heard it, playing soft From a drunken b...  04:03  ...           0.990905     Justice Crew      Everybody           0.984483
2      !!!          Pardon My Freedom  Oh my god, did I just say that out loud? Shoul...  05:51  ...           0.965147     The Jacksons     Lovely One           0.956752
3      !!!                        Ooo  [Verse 1] Remember when I called you on the te...  03:44  ...           0.991494      Tiwa Savage      My Darlin           0.990381
4      !!!                 Freedom 15  [Verse 1] Calling me like I got something to s...  06:00  ...           0.981524        Freestyle  Its Automatic           0.981415

[5 rows x 39 columns]
2025-12-12 17:25:26 - INFO - Running query: -- COUNT ALL
SELECT COUNT(*) FROM data...
2025-12-12 17:25:26 - INFO - Transpiled query: from -- COUNT ALL
SELECT COUNT(*) FROM data to /* COUNT ALL */ SELECT COUNT(*) FROM data
2025-12-12 17:25:30 - INFO - Query executed in 9.39ms, CPU: 0.01%, Memory: 7.48MB (0.05%)
2025-12-12 17:25:30 - INFO - Sample result (1 rows total):
   count_star()
0        551443
2025-12-12 17:25:30 - INFO - Running query: -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT g...
2025-12-12 17:25:30 - INFO - Transpiled query: from -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT genre,
    COUNT(genre) AS genre_count 
FROM data 
GROUP BY genre 
ORDER BY genre_count DESC to /* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DISTINCT genre, COUNT(genre) AS genre_count FROM data GROUP BY genre ORDER BY genre_count DESC NULLS FIRST
2025-12-12 17:25:34 - INFO - Query executed in 24.36ms, CPU: 0.02%, Memory: 7.48MB (0.05%)
2025-12-12 17:25:34 - INFO - Sample result (3097 rows total):
     genre  genre_count
0  hip hop       262070
1      pop        11451
2  country         7392
3     folk         4897
4     jazz         3913
2025-12-12 17:25:34 - INFO - Running query: -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT al...
2025-12-12 17:25:34 - INFO - Transpiled query: from -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT album,
    COUNT(album) AS album_count 
FROM data 
GROUP BY album 
ORDER BY album_count DESC to /* DISTINCT VALUES IN COLUMN 'album' */ SELECT DISTINCT album, COUNT(album) AS album_count FROM data GROUP BY album ORDER BY album_count DESC NULLS FIRST
2025-12-12 17:25:38 - INFO - Query executed in 175.92ms, CPU: 0.00%, Memory: 7.48MB (0.05%)
2025-12-12 17:25:38 - INFO - Sample result (154682 rows total):
           album  album_count
0    685 (Remix)         1603
1  Greatest Hits          683
2     Everything          602
3   Road From 26          599
4        312 DAY          593
2025-12-12 17:25:38 - INFO - Running query: -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
   ...
2025-12-12 17:25:38 - INFO - Transpiled query: from -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
    AVG(tempo) AS avg_tempo,
    SUM(tempo) AS sum_tempo, 
    MIN(tempo) AS min_tempo, 
    MAX(tempo) AS max_tempo 
FROM data to /* STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo' */ SELECT AVG(tempo) AS avg_tempo, SUM(tempo) AS sum_tempo, MIN(tempo) AS min_tempo, MAX(tempo) AS max_tempo FROM data
2025-12-12 17:25:42 - INFO - Query executed in 13.72ms, CPU: 0.01%, Memory: 6.32MB (0.04%)
2025-12-12 17:25:42 - INFO - Sample result (1 rows total):
    avg_tempo  sum_tempo  min_tempo  max_tempo
0  120.513567   66456363         31        200
2025-12-12 17:25:42 - INFO - Running query: -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM dat...
2025-12-12 17:25:42 - INFO - Transpiled query: from -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM data 
WHERE text LIKE '%%love%%'
AND tempo < 120 to /* FILTER BY LIKE OPERATOR & 2 CONDITIONS */ SELECT * FROM data WHERE text LIKE '%%love%%' AND tempo < 120
2025-12-12 17:25:48 - INFO - Query executed in 3134.15ms, CPU: 0.01%, Memory: 6.32MB (0.04%)
2025-12-12 17:25:48 - INFO - Sample result (115044 rows total):
                 artist_s                       song  ...                      similar_song_3 similarity_score_3
0                     !!!  Even When the Waters Cold  ...                       Neighbourhood           0.983236
1                     !!!            Heart of Hearts  ...             The Hero And The Madman           0.992627
2          !YADNUS,Daylyt                Last Breath  ...                             Im Sick           0.961484
3          !YADNUS,Daylyt            Day Electronica  ...                             12 Bars           0.937335
4  "Elena Of Avalor" Cast     Let Love Light the Way  ...  I Ain't Never Seen No One Like You           0.962872

[5 rows x 39 columns]
2025-12-12 17:25:48 - INFO - Running query: -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
 ...
2025-12-12 17:25:48 - INFO - Transpiled query: from -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
    DISTINCT a1.artist_s AS artists, 
    COUNT(*) AS duplicate_count 
FROM data AS a1 
JOIN data AS a2 
ON a1.artist_s = a2.artist_s
GROUP BY a1.artist_s to /* SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS */ SELECT DISTINCT a1.artist_s AS artists, COUNT(*) AS duplicate_count FROM data AS a1 JOIN data AS a2 ON a1.artist_s = a2.artist_s GROUP BY a1.artist_s
2025-12-12 17:25:52 - INFO - Query executed in 301.72ms, CPU: 0.02%, Memory: 6.32MB (0.04%)
2025-12-12 17:25:52 - INFO - Sample result (127334 rows total):
                       artists  duplicate_count
0                    Thy Light               25
1        Tift Merritt,Sam Beam              121
2              Timbaland,Magoo                1
3  Tom Hutchcraft,Dizzy Wright                4
4      Tom O'Connor,Luke Combs                1
2025-12-12 17:25:52 - INFO - Running query: -- WINDOW FUNCTION (LEAD)
-- find next popular song based on...
2025-12-12 17:25:52 - INFO - Transpiled query: from -- WINDOW FUNCTION (LEAD)
-- find next popular song based on popularity grouped by artists
SELECT 
    artist_s,
    song,
    popularity,
    LEAD(song,1) OVER (
        PARTITION BY artist_s
        ORDER BY popularity DESC) AS next_most_popular_song,
    LEAD(popularity, 1) OVER(
        PARTITION BY artist_s
        ORDER BY popularity DESC) AS next_song_popularity
FROM data
ORDER BY artist_s, popularity DESC to /* WINDOW FUNCTION (LEAD) */ /* find next popular song based on popularity grouped by artists */ SELECT artist_s, song, popularity, LEAD(song, 1) OVER (PARTITION BY artist_s ORDER BY popularity DESC NULLS FIRST) AS next_most_popular_song, LEAD(popularity, 1) OVER (PARTITION BY artist_s ORDER BY popularity DESC NULLS FIRST) AS next_song_popularity FROM data ORDER BY artist_s, popularity DESC NULLS FIRST
2025-12-12 17:25:56 - INFO - Query executed in 1126.19ms, CPU: 0.01%, Memory: 6.32MB (0.04%)
2025-12-12 17:25:56 - INFO - Sample result (551443 rows total):
  artist_s                       song  popularity     next_most_popular_song  next_song_popularity
0      !!!         One Girl / One Boy          42  Even When the Waters Cold                  40.0
1      !!!  Even When the Waters Cold          40                 Myth Takes                  34.0
2      !!!                 Myth Takes          34                       Slyd                  33.0
3      !!!                       Slyd          33                 Freedom 15                  30.0
4      !!!                 Freedom 15          30          Pardon My Freedom                  29.0
2025-12-12 17:25:56 - INFO - Running query: -- WINDOW FUNCTION WITH CTE
-- top 10 songs by popularity pe...
2025-12-12 17:25:56 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE
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
    popularity_rank to /* WINDOW FUNCTION WITH CTE */ /* top 10 songs by popularity per time_signature */ WITH ranked_songs AS (SELECT artist_s, song, time_signature, popularity, ROW_NUMBER() OVER (PARTITION BY time_signature ORDER BY popularity DESC NULLS FIRST) AS popularity_rank FROM data WHERE NOT time_signature IS NULL) SELECT * FROM ranked_songs WHERE popularity_rank <= 10 ORDER BY popularity DESC NULLS FIRST, popularity_rank
2025-12-12 17:26:00 - INFO - Query executed in 95.68ms, CPU: 0.01%, Memory: 6.32MB (0.04%)
2025-12-12 17:26:00 - INFO - Sample result (40 rows total):
            artist_s            song time_signature  popularity  popularity_rank
0      Billie Eilish           H.M.T            4/4         100                1
1  Sabrina Carpenter  Safe and Sound            4/4          99                2
2  Sabrina Carpenter           Alien            4/4          99                3
3  Sabrina Carpenter  I Cant Stop Me            4/4          99                4
4  Sabrina Carpenter        Wildside            4/4          99                5
2025-12-12 17:26:00 - INFO - Running query: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH a...
2025-12-12 17:26:00 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(regexp_replace(release_date, '%d %B %Y'))) AS release_year 
  FROM data
  ),

artist_release_gaps AS (
  SELECT
    artist_s,
    release_year,
    -- Get the release year of the previous song for this artist
    LAG(release_year, 1) OVER (PARTITION BY artist_s ORDER BY release_year) AS previous_release_year
  FROM
    artist_release_years
)

SELECT
  artist_s,
  previous_release_year,
  release_year
FROM artist_release_gaps
ORDER BY artist_s, release_year to /* WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION */ WITH artist_release_years AS (SELECT DISTINCT artist_s, EXTRACT(YEAR FROM STRPTIME(REGEXP_REPLACE(release_date, '%d %B %Y'))) AS release_year FROM data), artist_release_gaps AS (SELECT artist_s, release_year, LAG(release_year, 1) OVER (PARTITION BY artist_s ORDER BY release_year) AS previous_release_year /* Get the release year of the previous song for this artist */ FROM artist_release_years) SELECT artist_s, previous_release_year, release_year FROM artist_release_gaps ORDER BY artist_s, release_year
2025-12-12 17:26:02 - ERROR - Query execution failed: (duckdb.duckdb.BinderException) Binder Error: No function matches the given name and argument types 'regexp_replace(VARCHAR, STRING_LITERAL)'. You might need to add explicit type casts.
	Candidate functions:
	regexp_replace(VARCHAR, VARCHAR, VARCHAR) -> VARCHAR
	regexp_replace(VARCHAR, VARCHAR, VARCHAR, VARCHAR) -> VARCHAR


LINE 5:     EXTRACT(year FROM strptime(regexp_replace(release_date, '%d %B %Y'))) AS release_year 
                                       ^
[SQL: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(regexp_replace(release_date, '%d %B %Y'))) AS release_year 
  FROM data
  ),

artist_release_gaps AS (
  SELECT
    artist_s,
    release_year,
    -- Get the release year of the previous song for this artist
    LAG(release_year, 1) OVER (PARTITION BY artist_s ORDER BY release_year) AS previous_release_year
  FROM
    artist_release_years
)

SELECT
  artist_s,
  previous_release_year,
  release_year
FROM artist_release_gaps
ORDER BY artist_s, release_year]
(Background on this error at: https://sqlalche.me/e/20/f405)
2025-12-12 17:26:04 - INFO - Query FAILED in 7.73ms, CPU: 0.01%, Memory: 6.32MB (0.04%)
2025-12-12 17:26:15 - INFO - Stopped container: test-duckdb_cpu10_mem32G
2025-12-12 17:26:15 - INFO - Removed container: test-duckdb_cpu10_mem32G
2025-12-12 17:26:15 - INFO - Benchmarking clickhouse_cpu10_mem32G...
2025-12-12 17:26:15 - INFO - Started container: test-clickhouse_cpu10_mem32G (e38ae08aa4d4), with memory limit: 32G and cpu limit: 10
2025-12-12 17:26:15 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:16 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:17 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:18 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:19 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:20 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:21 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:22 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:23 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:24 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:25 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-12-12 17:26:26 - INFO - ClickHouseHandler is ready
2025-12-12 17:26:26 - INFO - Loading data to ClickHouseHandler...
2025-12-12 17:26:26 - INFO - <bound method DataFrame.items of                 artist_s                                               song  ...           similar_song_3 similarity_score_3
0                    !!!                          Even When the Waters Cold  ...            Neighbourhood           0.983236
1                    !!!                                 One Girl / One Boy  ...                Everybody           0.984483
2                    !!!                                  Pardon My Freedom  ...               Lovely One           0.956752
3                    !!!                                                Ooo  ...                My Darlin           0.990381
4                    !!!                                         Freedom 15  ...            Its Automatic           0.981415
...                  ...                                                ...  ...                      ...                ...
551438  박혜진 Park Hye Jin                                            Can you  ...          Light in Places           0.923749
551439  심형진 Hyungjin Sim  Lim Han Byul  Lee Hyuk - Prayer English Transl...  ...             Pillar of Na           0.990385
551440               우정하                       Memories Smiling Tears Remix  ...  Life in the Death of Me           0.980171
551441                제노                                    Come Back to Me  ...       Damsel In Distress           0.975935
551442                코케                                I Wanna Be With You  ...  Get Back Single Version           0.984674

[551443 rows x 39 columns]>
2025-12-12 17:26:26 - INFO - artist_s                           object
song                               object
text                               object
length                             object
emotion                            object
genre                              object
album                              object
release_date                       object
key                                object
tempo                               int64
loudness_db                        object
time_signature                     object
explicit                           object
popularity                          int64
energy                              int64
danceability                        int64
positiveness                        int64
speechiness                         int64
liveness                            int64
acousticness                        int64
instrumentalness                    int64
good_for_party                      int64
good_for_work_study                 int64
good_for_relaxation_meditation      int64
good_for_exercise                   int64
good_for_running                    int64
good_for_yoga_stretching            int64
good_for_driving                    int64
good_for_social_gatherings          int64
good_for_morning_routine            int64
similar_artist_1                   object
similar_song_1                     object
similarity_score_1                float64
similar_artist_2                   object
similar_song_2                     object
similarity_score_2                float64
similar_artist_3                   object
similar_song_3                     object
similarity_score_3                float64
dtype: object
2025-12-12 17:26:26 - INFO - `artist_s` String
2025-12-12 17:26:26 - INFO - `song` String
2025-12-12 17:26:26 - INFO - `text` String
2025-12-12 17:26:26 - INFO - `length` String
2025-12-12 17:26:26 - INFO - `emotion` String
2025-12-12 17:26:26 - INFO - `genre` String
2025-12-12 17:26:26 - INFO - `album` String
2025-12-12 17:26:26 - INFO - `release_date` String
2025-12-12 17:26:26 - INFO - `key` String
2025-12-12 17:26:26 - INFO - `tempo` Int64
2025-12-12 17:26:26 - INFO - `loudness_db` String
2025-12-12 17:26:26 - INFO - `time_signature` String
2025-12-12 17:26:26 - INFO - `explicit` String
2025-12-12 17:26:26 - INFO - `popularity` Int64
2025-12-12 17:26:26 - INFO - `energy` Int64
2025-12-12 17:26:26 - INFO - `danceability` Int64
2025-12-12 17:26:26 - INFO - `positiveness` Int64
2025-12-12 17:26:26 - INFO - `speechiness` Int64
2025-12-12 17:26:26 - INFO - `liveness` Int64
2025-12-12 17:26:26 - INFO - `acousticness` Int64
2025-12-12 17:26:26 - INFO - `instrumentalness` Int64
2025-12-12 17:26:26 - INFO - `good_for_party` Int64
2025-12-12 17:26:26 - INFO - `good_for_work_study` Int64
2025-12-12 17:26:26 - INFO - `good_for_relaxation_meditation` Int64
2025-12-12 17:26:26 - INFO - `good_for_exercise` Int64
2025-12-12 17:26:26 - INFO - `good_for_running` Int64
2025-12-12 17:26:26 - INFO - `good_for_yoga_stretching` Int64
2025-12-12 17:26:26 - INFO - `good_for_driving` Int64
2025-12-12 17:26:26 - INFO - `good_for_social_gatherings` Int64
2025-12-12 17:26:26 - INFO - `good_for_morning_routine` Int64
2025-12-12 17:26:26 - INFO - `similar_artist_1` String
2025-12-12 17:26:26 - INFO - `similar_song_1` String
2025-12-12 17:26:26 - INFO - `similarity_score_1` Float64
2025-12-12 17:26:26 - INFO - `similar_artist_2` String
2025-12-12 17:26:26 - INFO - `similar_song_2` String
2025-12-12 17:26:26 - INFO - `similarity_score_2` Float64
2025-12-12 17:26:26 - INFO - `similar_artist_3` String
2025-12-12 17:26:26 - INFO - `similar_song_3` String
2025-12-12 17:26:26 - INFO - `similarity_score_3` Float64
2025-12-12 17:26:26 - INFO - Creating ClickHouse table 'data' with columns: ['`artist_s` String', '`song` String', '`text` String', '`length` String', '`emotion` String', '`genre` String', '`album` String', '`release_date` String', '`key` String', '`tempo` Int64', '`loudness_db` String', '`time_signature` String', '`explicit` String', '`popularity` Int64', '`energy` Int64', '`danceability` Int64', '`positiveness` Int64', '`speechiness` Int64', '`liveness` Int64', '`acousticness` Int64', '`instrumentalness` Int64', '`good_for_party` Int64', '`good_for_work_study` Int64', '`good_for_relaxation_meditation` Int64', '`good_for_exercise` Int64', '`good_for_running` Int64', '`good_for_yoga_stretching` Int64', '`good_for_driving` Int64', '`good_for_social_gatherings` Int64', '`good_for_morning_routine` Int64', '`similar_artist_1` String', '`similar_song_1` String', '`similarity_score_1` Float64', '`similar_artist_2` String', '`similar_song_2` String', '`similarity_score_2` Float64', '`similar_artist_3` String', '`similar_song_3` String', '`similarity_score_3` Float64']
2025-12-12 17:26:26 - INFO - SQL: 
            CREATE TABLE IF NOT EXISTS data (
                `artist_s` String, `song` String, `text` String, `length` String, `emotion` String, `genre` String, `album` String, `release_date` String, `key` String, `tempo` Int64, `loudness_db` String, `time_signature` String, `explicit` String, `popularity` Int64, `energy` Int64, `danceability` Int64, `positiveness` Int64, `speechiness` Int64, `liveness` Int64, `acousticness` Int64, `instrumentalness` Int64, `good_for_party` Int64, `good_for_work_study` Int64, `good_for_relaxation_meditation` Int64, `good_for_exercise` Int64, `good_for_running` Int64, `good_for_yoga_stretching` Int64, `good_for_driving` Int64, `good_for_social_gatherings` Int64, `good_for_morning_routine` Int64, `similar_artist_1` String, `similar_song_1` String, `similarity_score_1` Float64, `similar_artist_2` String, `similar_song_2` String, `similarity_score_2` Float64, `similar_artist_3` String, `similar_song_3` String, `similarity_score_3` Float64
            ) ENGINE = Memory
        
2025-12-12 17:27:43 - INFO - Loaded 551443 rows into the database
2025-12-12 17:27:43 - INFO - Running query: -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000...
2025-12-12 17:27:43 - INFO - Transpiled query: from -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000 to /* TOP 1000 ROWS */ SELECT * FROM data LIMIT 1000
2025-12-12 17:27:46 - INFO - Query executed in 168.08ms, CPU: 12.85%, Memory: 2041.99MB (12.74%)
2025-12-12 17:27:46 - INFO - Sample result (1000 rows total):
  artist_s                       song                                               text length  ... similarity_score_2 similar_artist_3 similar_song_3 similarity_score_3
0      !!!  Even When the Waters Cold  Friends told her she was better off at the bot...  03:47  ...           0.983719            Space  Neighbourhood           0.983236
1      !!!         One Girl / One Boy  Well I heard it, playing soft From a drunken b...  04:03  ...           0.990905     Justice Crew      Everybody           0.984483
2      !!!          Pardon My Freedom  Oh my god, did I just say that out loud? Shoul...  05:51  ...           0.965147     The Jacksons     Lovely One           0.956752
3      !!!                        Ooo  [Verse 1] Remember when I called you on the te...  03:44  ...           0.991494      Tiwa Savage      My Darlin           0.990381
4      !!!                 Freedom 15  [Verse 1] Calling me like I got something to s...  06:00  ...           0.981524        Freestyle  Its Automatic           0.981415

[5 rows x 39 columns]
2025-12-12 17:27:46 - INFO - Running query: -- COUNT ALL
SELECT COUNT(*) FROM data...
2025-12-12 17:27:46 - INFO - Transpiled query: from -- COUNT ALL
SELECT COUNT(*) FROM data to /* COUNT ALL */ SELECT COUNT(*) FROM data
2025-12-12 17:27:50 - INFO - Query executed in 37.46ms, CPU: 9.18%, Memory: 2052.11MB (12.80%)
2025-12-12 17:27:50 - INFO - Sample result (1 rows total):
   COUNT()
0   551443
2025-12-12 17:27:50 - INFO - Running query: -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT g...
2025-12-12 17:27:50 - INFO - Transpiled query: from -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT genre,
    COUNT(genre) AS genre_count 
FROM data 
GROUP BY genre 
ORDER BY genre_count DESC to /* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DISTINCT genre, COUNT(genre) AS genre_count FROM data GROUP BY genre ORDER BY genre_count DESC NULLS FIRST
2025-12-12 17:27:54 - INFO - Query executed in 122.60ms, CPU: 10.47%, Memory: 2040.05MB (12.73%)
2025-12-12 17:27:54 - INFO - Sample result (3097 rows total):
     genre  genre_count
0  hip hop       262070
1      pop        11451
2  country         7392
3     folk         4897
4     jazz         3913
2025-12-12 17:27:54 - INFO - Running query: -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT al...
2025-12-12 17:27:54 - INFO - Transpiled query: from -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT album,
    COUNT(album) AS album_count 
FROM data 
GROUP BY album 
ORDER BY album_count DESC to /* DISTINCT VALUES IN COLUMN 'album' */ SELECT DISTINCT album, COUNT(album) AS album_count FROM data GROUP BY album ORDER BY album_count DESC NULLS FIRST
2025-12-12 17:27:58 - INFO - Query executed in 501.98ms, CPU: 9.50%, Memory: 2063.00MB (12.87%)
2025-12-12 17:27:58 - INFO - Sample result (154682 rows total):
           album  album_count
0    685 (Remix)         1603
1  Greatest Hits          683
2     Everything          602
3   Road From 26          599
4        312 DAY          593
2025-12-12 17:27:58 - INFO - Running query: -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
   ...
2025-12-12 17:27:58 - INFO - Transpiled query: from -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
    AVG(tempo) AS avg_tempo,
    SUM(tempo) AS sum_tempo, 
    MIN(tempo) AS min_tempo, 
    MAX(tempo) AS max_tempo 
FROM data to /* STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo' */ SELECT AVG(tempo) AS avg_tempo, SUM(tempo) AS sum_tempo, MIN(tempo) AS min_tempo, MAX(tempo) AS max_tempo FROM data
2025-12-12 17:28:02 - INFO - Query executed in 36.71ms, CPU: 11.81%, Memory: 2018.91MB (12.59%)
2025-12-12 17:28:02 - INFO - Sample result (1 rows total):
    avg_tempo  sum_tempo  min_tempo  max_tempo
0  120.513567   66456363         31        200
2025-12-12 17:28:02 - INFO - Running query: -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM dat...
2025-12-12 17:28:02 - INFO - Transpiled query: from -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM data 
WHERE text LIKE '%%love%%'
AND tempo < 120 to /* FILTER BY LIKE OPERATOR & 2 CONDITIONS */ SELECT * FROM data WHERE text LIKE '%%love%%' AND tempo < 120
2025-12-12 17:28:17 - INFO - Query executed in 11450.14ms, CPU: 11.51%, Memory: 2057.69MB (12.84%)
2025-12-12 17:28:17 - INFO - Sample result (115044 rows total):
                 artist_s                       song  ...                      similar_song_3 similarity_score_3
0                     !!!  Even When the Waters Cold  ...                       Neighbourhood           0.983236
1                     !!!            Heart of Hearts  ...             The Hero And The Madman           0.992627
2          !YADNUS,Daylyt                Last Breath  ...                             Im Sick           0.961484
3          !YADNUS,Daylyt            Day Electronica  ...                             12 Bars           0.937335
4  "Elena Of Avalor" Cast     Let Love Light the Way  ...  I Ain't Never Seen No One Like You           0.962872

[5 rows x 39 columns]
2025-12-12 17:28:17 - INFO - Running query: -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
 ...
2025-12-12 17:28:17 - INFO - Transpiled query: from -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
    DISTINCT a1.artist_s AS artists, 
    COUNT(*) AS duplicate_count 
FROM data AS a1 
JOIN data AS a2 
ON a1.artist_s = a2.artist_s
GROUP BY a1.artist_s to /* SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS */ SELECT DISTINCT a1.artist_s AS artists, COUNT(*) AS duplicate_count FROM data AS a1 JOIN data AS a2 ON a1.artist_s = a2.artist_s GROUP BY a1.artist_s
2025-12-12 17:28:21 - INFO - Query executed in 832.92ms, CPU: 13.08%, Memory: 2232.77MB (13.93%)
2025-12-12 17:28:21 - INFO - Sample result (127334 rows total):
    artists  duplicate_count
0        Lr                1
1  Bryan El                1
2  Pumarosa               25
3   halberd                1
4      Deno               64
2025-12-12 17:28:21 - INFO - Running query: -- WINDOW FUNCTION (LEAD)
-- find next popular song based on...
2025-12-12 17:28:21 - INFO - Transpiled query: from -- WINDOW FUNCTION (LEAD)
-- find next popular song based on popularity grouped by artists
SELECT 
    artist_s,
    song,
    popularity,
    LEAD(song,1) OVER (
        PARTITION BY artist_s
        ORDER BY popularity DESC) AS next_most_popular_song,
    LEAD(popularity, 1) OVER(
        PARTITION BY artist_s
        ORDER BY popularity DESC) AS next_song_popularity
FROM data
ORDER BY artist_s, popularity DESC to /* WINDOW FUNCTION (LEAD) */ /* find next popular song based on popularity grouped by artists */ SELECT artist_s, song, popularity, leadInFrame(song, 1) OVER (PARTITION BY artist_s ORDER BY popularity DESC NULLS FIRST) AS next_most_popular_song, leadInFrame(popularity, 1) OVER (PARTITION BY artist_s ORDER BY popularity DESC NULLS FIRST) AS next_song_popularity FROM data ORDER BY artist_s, popularity DESC NULLS FIRST
2025-12-12 17:28:23 - ERROR - Query execution failed: Orig exception: Code: 63. DB::Exception: Aggregate function with name 'LEAD' does not exist. In scope SELECT artist_s, song, popularity, LEAD(song, 1) OVER (PARTITION BY artist_s ORDER BY popularity DESC) AS next_most_popular_song, LEAD(popularity, 1) OVER (PARTITION BY artist_s ORDER BY popularity DESC) AS next_song_popularity FROM data ORDER BY artist_s ASC, popularity DESC. Maybe you meant: ['lead','lag']. (UNKNOWN_AGGREGATE_FUNCTION) (version 25.6.4.12 (official build))

2025-12-12 17:28:25 - INFO - Query FAILED in 70.03ms, CPU: 12.41%, Memory: 2087.93MB (13.02%)
2025-12-12 17:28:25 - INFO - Running query: -- WINDOW FUNCTION WITH CTE
-- top 10 songs by popularity pe...
2025-12-12 17:28:25 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE
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
    popularity_rank to /* WINDOW FUNCTION WITH CTE */ /* top 10 songs by popularity per time_signature */ WITH ranked_songs AS (SELECT artist_s, song, time_signature, popularity, ROW_NUMBER() OVER (PARTITION BY time_signature ORDER BY popularity DESC NULLS FIRST) AS popularity_rank FROM data WHERE NOT (time_signature IS NULL)) SELECT * FROM ranked_songs WHERE popularity_rank <= 10 ORDER BY popularity DESC NULLS FIRST, popularity_rank
2025-12-12 17:28:29 - INFO - Query executed in 154.15ms, CPU: 10.48%, Memory: 2164.58MB (13.50%)
2025-12-12 17:28:29 - INFO - Sample result (48 rows total):
            artist_s            song time_signature  popularity  popularity_rank
0      Billie Eilish           H.M.T            4/4         100                1
1  Sabrina Carpenter  Safe and Sound            4/4          99                2
2  Sabrina Carpenter    Swing My Way            4/4          99                3
3  Sabrina Carpenter        Wildside            4/4          99                4
4  Sabrina Carpenter  I Cant Stop Me            4/4          99                5
2025-12-12 17:28:29 - INFO - Running query: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH a...
2025-12-12 17:28:29 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(regexp_replace(release_date, '%d %B %Y'))) AS release_year 
  FROM data
  ),

artist_release_gaps AS (
  SELECT
    artist_s,
    release_year,
    -- Get the release year of the previous song for this artist
    LAG(release_year, 1) OVER (PARTITION BY artist_s ORDER BY release_year) AS previous_release_year
  FROM
    artist_release_years
)

SELECT
  artist_s,
  previous_release_year,
  release_year
FROM artist_release_gaps
ORDER BY artist_s, release_year to /* WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION */ WITH artist_release_years AS (SELECT DISTINCT artist_s, EXTRACT(YEAR FROM strptime(REGEXP_REPLACE(release_date, '%d %B %Y'))) AS release_year FROM data), artist_release_gaps AS (SELECT artist_s, release_year, lagInFrame(release_year, 1) OVER (PARTITION BY artist_s ORDER BY release_year) AS previous_release_year /* Get the release year of the previous song for this artist */ FROM artist_release_years) SELECT artist_s, previous_release_year, release_year FROM artist_release_gaps ORDER BY artist_s, release_year
2025-12-12 17:28:31 - ERROR - Query execution failed: %d format: a real number is required, not dict
2025-12-12 17:28:33 - INFO - Query FAILED in 28.69ms, CPU: 13.90%, Memory: 2101.48MB (13.11%)
2025-12-12 17:28:38 - INFO - Stopped container: test-clickhouse_cpu10_mem32G
2025-12-12 17:28:38 - INFO - Removed container: test-clickhouse_cpu10_mem32G
2025-12-12 17:28:38 - INFO - 
===== BENCHMARK SUMMARY =====
2025-12-12 17:28:38 - INFO - 
Failed Queries by Database Type:
database_type
ClickHouseHandler    2
DuckDBHandler        1
PostgresHandler      1
Name: True, dtype: int64
2025-12-12 17:28:38 - INFO - 
Performance Summary:
                  execution_time_ms                           cpu_usage_percent memory_usage_mb disk_read_mb disk_write_mb
                               mean         min           max              mean            mean          sum           sum
database_type                                                                                                             
ClickHouseHandler       1663.004160   36.709070  11450.138807         11.111381     2083.887207          0.0           0.0
DuckDBHandler            546.392335    9.387970   3134.152889          0.010071        6.832031          0.0           0.0
PostgresHandler         1508.826627  128.393888   4288.167000          1.364088     1240.016059          0.0           0.0
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* TOP 1000 ROWS */ SELECT * FROM data LIMIT 1000...': DuckDBHandler (36.40ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* COUNT ALL */ SELECT COUNT(*) FROM data...': DuckDBHandler (9.39ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DI...': PostgresHandler (242.47ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* DISTINCT VALUES IN COLUMN 'album' */ SELECT DIS...': PostgresHandler (995.85ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo' *...': DuckDBHandler (13.72ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* FILTER BY LIKE OPERATOR & 2 CONDITIONS */ SELEC...': PostgresHandler (3092.28ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS...': DuckDBHandler (301.72ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* WINDOW FUNCTION (LEAD) */ /* find next popular ...': PostgresHandler (2544.45ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* WINDOW FUNCTION WITH CTE */ /* top 10 songs by ...': PostgresHandler (1039.10ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DI...': DuckDBHandler (24.36ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* DISTINCT VALUES IN COLUMN 'album' */ SELECT DIS...': DuckDBHandler (175.92ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* WINDOW FUNCTION (LEAD) */ /* find next popular ...': DuckDBHandler (1126.19ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* WINDOW FUNCTION WITH CTE */ /* top 10 songs by ...': DuckDBHandler (95.68ms)
2025-12-12 17:28:38 - INFO - 
Fastest for query '/* WINDOW FUNCTION WITH CTE */ /* top 10 songs by ...': ClickHouseHandler (154.15ms)
2025-12-12 17:28:38 - INFO - Benchmark results saved to database_benchmark_results3.csv