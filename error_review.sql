{'mysql_cpu10_mem32G': <bench.databases.MySQLHandler object at 0x10be6b230>, 'postgres_cpu10_mem32G': <bench.databases.PostgresHandler object at 0x10be6ba10>, 'duckdb_cpu10_mem32G': <bench.databases.DuckDBHandler object at 0x10be6be00>, 'clickhouse_cpu10_mem32G': <bench.databases.ClickHouseHandler object at 0x10be6b8c0>}
Enter your Kaggle username: tbernice
Enter your Kaggle API key (input will not be visible): 
Kaggle credentials set.
Warning: Looks like you're using an outdated `kagglehub` version (installed: 0.3.12), please consider upgrading to the latest version (0.3.13).
Kaggle credentials successfully validated.
Warning: Looks like you're using an outdated `kagglehub` version (installed: 0.3.12), please consider upgrading to the latest version (0.3.13).
2025-10-22 10:28:08 - INFO - Loaded 551443 rows from Kaggle dataset
2025-10-22 10:28:08 - INFO - Data types: artist_s                           object
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
2025-10-22 10:28:08 - INFO - Data sample:   artist_s                       song                                               text length  ... similarity_score_2 similar_artist_3 similar_song_3 similarity_score_3
0      !!!  Even When the Waters Cold  Friends told her she was better off at the bot...  03:47  ...           0.983719            Space  Neighbourhood           0.983236
1      !!!         One Girl / One Boy  Well I heard it, playing soft From a drunken b...  04:03  ...           0.990905     Justice Crew      Everybody           0.984483
2      !!!          Pardon My Freedom  Oh my god, did I just say that out loud? Shoul...  05:51  ...           0.965147     The Jacksons     Lovely One           0.956752
3      !!!                        Ooo  [Verse 1] Remember when I called you on the te...  03:44  ...           0.991494      Tiwa Savage      My Darlin           0.990381
4      !!!                 Freedom 15  [Verse 1] Calling me like I got something to s...  06:00  ...           0.981524        Freestyle  Its Automatic           0.981415

[5 rows x 39 columns]
2025-10-22 10:28:08 - INFO - Benchmarking mysql_cpu10_mem32G...
2025-10-22 10:28:08 - INFO - Started container: test-mysql_cpu10_mem32G (e6e99029bc31), with memory limit: 32G and cpu limit: 10
2025-10-22 10:28:19 - INFO - MySQLHandler is ready
2025-10-22 10:28:19 - INFO - Loading data to MySQLHandler...
2025-10-22 10:28:19 - INFO - Creating table with column types mapping {'artist_s': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'song': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'text': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'length': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'emotion': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'genre': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'album': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'release_date': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'key': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'tempo': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'loudness_db': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'time_signature': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'explicit': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'popularity': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'energy': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'danceability': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'positiveness': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'speechiness': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'liveness': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'acousticness': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'instrumentalness': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'good_for_party': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'good_for_work_study': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'good_for_relaxation_meditation': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'good_for_exercise': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'good_for_running': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'good_for_yoga_stretching': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'good_for_driving': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'good_for_social_gatherings': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'good_for_morning_routine': <class 'sqlalchemy.dialects.mysql.types.INTEGER'>, 'similar_artist_1': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'similar_song_1': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'similarity_score_1': <class 'sqlalchemy.dialects.mysql.types.FLOAT'>, 'similar_artist_2': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'similar_song_2': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'similarity_score_2': <class 'sqlalchemy.dialects.mysql.types.FLOAT'>, 'similar_artist_3': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'similar_song_3': <class 'sqlalchemy.dialects.mysql.types.LONGTEXT'>, 'similarity_score_3': <class 'sqlalchemy.dialects.mysql.types.FLOAT'>}
2025-10-22 10:28:19 - INFO - Table created, now loading data
  0%|                                                                                                                                                   | 0/56 [00:00<?, ?it/s]2025-10-22 10:28:21 - INFO - Loaded rows 0 to 10000
  2%|██▍                                                                                                                                        | 1/56 [00:01<01:16,  1.40s/it]2025-10-22 10:28:22 - INFO - Loaded rows 10000 to 20000
  4%|████▉                                                                                                                                      | 2/56 [00:02<01:03,  1.18s/it]2025-10-22 10:28:23 - INFO - Loaded rows 20000 to 30000
  5%|███████▍                                                                                                                                   | 3/56 [00:03<00:57,  1.09s/it]2025-10-22 10:28:24 - INFO - Loaded rows 30000 to 40000
  7%|█████████▉                                                                                                                                 | 4/56 [00:04<00:56,  1.09s/it]2025-10-22 10:28:25 - INFO - Loaded rows 40000 to 50000
  9%|████████████▍                                                                                                                              | 5/56 [00:05<00:55,  1.08s/it]2025-10-22 10:28:26 - INFO - Loaded rows 50000 to 60000
 11%|██████████████▉                                                                                                                            | 6/56 [00:07<01:01,  1.22s/it]2025-10-22 10:28:28 - INFO - Loaded rows 60000 to 70000
 12%|█████████████████▍                                                                                                                         | 7/56 [00:08<00:57,  1.17s/it]2025-10-22 10:28:29 - INFO - Loaded rows 70000 to 80000
 14%|███████████████████▊                                                                                                                       | 8/56 [00:09<00:55,  1.15s/it]2025-10-22 10:28:30 - INFO - Loaded rows 80000 to 90000
 16%|██████████████████████▎                                                                                                                    | 9/56 [00:10<00:53,  1.13s/it]2025-10-22 10:28:31 - INFO - Loaded rows 90000 to 100000
 18%|████████████████████████▋                                                                                                                 | 10/56 [00:11<00:51,  1.12s/it]2025-10-22 10:28:32 - INFO - Loaded rows 100000 to 110000
 20%|███████████████████████████                                                                                                               | 11/56 [00:12<00:49,  1.10s/it]2025-10-22 10:28:33 - INFO - Loaded rows 110000 to 120000
 21%|█████████████████████████████▌                                                                                                            | 12/56 [00:13<00:47,  1.07s/it]2025-10-22 10:28:34 - INFO - Loaded rows 120000 to 130000
 23%|████████████████████████████████                                                                                                          | 13/56 [00:14<00:47,  1.10s/it]2025-10-22 10:28:35 - INFO - Loaded rows 130000 to 140000
 25%|██████████████████████████████████▌                                                                                                       | 14/56 [00:15<00:46,  1.10s/it]2025-10-22 10:28:36 - INFO - Loaded rows 140000 to 150000
 27%|████████████████████████████████████▉                                                                                                     | 15/56 [00:16<00:44,  1.09s/it]2025-10-22 10:28:37 - INFO - Loaded rows 150000 to 160000
 29%|███████████████████████████████████████▍                                                                                                  | 16/56 [00:17<00:43,  1.09s/it]2025-10-22 10:28:38 - INFO - Loaded rows 160000 to 170000
 30%|█████████████████████████████████████████▉                                                                                                | 17/56 [00:18<00:41,  1.08s/it]2025-10-22 10:28:40 - INFO - Loaded rows 170000 to 180000
 32%|████████████████████████████████████████████▎                                                                                             | 18/56 [00:20<00:42,  1.13s/it]2025-10-22 10:28:41 - INFO - Loaded rows 180000 to 190000
 34%|██████████████████████████████████████████████▊                                                                                           | 19/56 [00:21<00:40,  1.10s/it]2025-10-22 10:28:42 - INFO - Loaded rows 190000 to 200000
 36%|█████████████████████████████████████████████████▎                                                                                        | 20/56 [00:22<00:38,  1.07s/it]2025-10-22 10:28:43 - INFO - Loaded rows 200000 to 210000
 38%|███████████████████████████████████████████████████▊                                                                                      | 21/56 [00:23<00:37,  1.08s/it]2025-10-22 10:28:44 - INFO - Loaded rows 210000 to 220000
 39%|██████████████████████████████████████████████████████▏                                                                                   | 22/56 [00:24<00:36,  1.08s/it]2025-10-22 10:28:45 - INFO - Loaded rows 220000 to 230000
 41%|████████████████████████████████████████████████████████▋                                                                                 | 23/56 [00:25<00:35,  1.08s/it]2025-10-22 10:28:46 - INFO - Loaded rows 230000 to 240000
 43%|███████████████████████████████████████████████████████████▏                                                                              | 24/56 [00:26<00:33,  1.06s/it]2025-10-22 10:28:47 - INFO - Loaded rows 240000 to 250000
 45%|█████████████████████████████████████████████████████████████▌                                                                            | 25/56 [00:27<00:33,  1.07s/it]2025-10-22 10:28:48 - INFO - Loaded rows 250000 to 260000
 46%|████████████████████████████████████████████████████████████████                                                                          | 26/56 [00:28<00:32,  1.07s/it]2025-10-22 10:28:49 - INFO - Loaded rows 260000 to 270000
 48%|██████████████████████████████████████████████████████████████████▌                                                                       | 27/56 [00:29<00:32,  1.12s/it]2025-10-22 10:28:50 - INFO - Loaded rows 270000 to 280000
 50%|█████████████████████████████████████████████████████████████████████                                                                     | 28/56 [00:30<00:30,  1.09s/it]2025-10-22 10:28:52 - INFO - Loaded rows 280000 to 290000
 52%|███████████████████████████████████████████████████████████████████████▍                                                                  | 29/56 [00:32<00:30,  1.12s/it]2025-10-22 10:28:53 - INFO - Loaded rows 290000 to 300000
 54%|█████████████████████████████████████████████████████████████████████████▉                                                                | 30/56 [00:33<00:28,  1.12s/it]2025-10-22 10:28:54 - INFO - Loaded rows 300000 to 310000
 55%|████████████████████████████████████████████████████████████████████████████▍                                                             | 31/56 [00:34<00:27,  1.09s/it]2025-10-22 10:28:55 - INFO - Loaded rows 310000 to 320000
 57%|██████████████████████████████████████████████████████████████████████████████▊                                                           | 32/56 [00:35<00:25,  1.08s/it]2025-10-22 10:28:56 - INFO - Loaded rows 320000 to 330000
 59%|█████████████████████████████████████████████████████████████████████████████████▎                                                        | 33/56 [00:36<00:24,  1.07s/it]2025-10-22 10:28:57 - INFO - Loaded rows 330000 to 340000
 61%|███████████████████████████████████████████████████████████████████████████████████▊                                                      | 34/56 [00:37<00:23,  1.07s/it]2025-10-22 10:28:58 - INFO - Loaded rows 340000 to 350000
 62%|██████████████████████████████████████████████████████████████████████████████████████▎                                                   | 35/56 [00:38<00:22,  1.06s/it]2025-10-22 10:28:59 - INFO - Loaded rows 350000 to 360000
 64%|████████████████████████████████████████████████████████████████████████████████████████▋                                                 | 36/56 [00:39<00:21,  1.05s/it]2025-10-22 10:29:00 - INFO - Loaded rows 360000 to 370000
 66%|███████████████████████████████████████████████████████████████████████████████████████████▏                                              | 37/56 [00:40<00:19,  1.03s/it]2025-10-22 10:29:01 - INFO - Loaded rows 370000 to 380000
 68%|█████████████████████████████████████████████████████████████████████████████████████████████▋                                            | 38/56 [00:41<00:18,  1.05s/it]2025-10-22 10:29:02 - INFO - Loaded rows 380000 to 390000
 70%|████████████████████████████████████████████████████████████████████████████████████████████████                                          | 39/56 [00:42<00:17,  1.05s/it]2025-10-22 10:29:03 - INFO - Loaded rows 390000 to 400000
 71%|██████████████████████████████████████████████████████████████████████████████████████████████████▌                                       | 40/56 [00:43<00:17,  1.07s/it]2025-10-22 10:29:04 - INFO - Loaded rows 400000 to 410000
 73%|█████████████████████████████████████████████████████████████████████████████████████████████████████                                     | 41/56 [00:44<00:16,  1.07s/it]2025-10-22 10:29:05 - INFO - Loaded rows 410000 to 420000
 75%|███████████████████████████████████████████████████████████████████████████████████████████████████████▌                                  | 42/56 [00:45<00:15,  1.08s/it]2025-10-22 10:29:06 - INFO - Loaded rows 420000 to 430000
 77%|█████████████████████████████████████████████████████████████████████████████████████████████████████████▉                                | 43/56 [00:46<00:13,  1.08s/it]2025-10-22 10:29:07 - INFO - Loaded rows 430000 to 440000
 79%|████████████████████████████████████████████████████████████████████████████████████████████████████████████▍                             | 44/56 [00:48<00:12,  1.08s/it]2025-10-22 10:29:09 - INFO - Loaded rows 440000 to 450000
 80%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████▉                           | 45/56 [00:49<00:12,  1.10s/it]2025-10-22 10:29:10 - INFO - Loaded rows 450000 to 460000
 82%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████▎                        | 46/56 [00:50<00:11,  1.13s/it]2025-10-22 10:29:11 - INFO - Loaded rows 460000 to 470000
 84%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████▊                      | 47/56 [00:51<00:09,  1.08s/it]2025-10-22 10:29:12 - INFO - Loaded rows 470000 to 480000
 86%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▎                   | 48/56 [00:52<00:08,  1.05s/it]2025-10-22 10:29:13 - INFO - Loaded rows 480000 to 490000
 88%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▊                 | 49/56 [00:53<00:07,  1.03s/it]2025-10-22 10:29:14 - INFO - Loaded rows 490000 to 500000
 89%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▏              | 50/56 [00:54<00:06,  1.03s/it]2025-10-22 10:29:15 - INFO - Loaded rows 500000 to 510000
 91%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▋            | 51/56 [00:55<00:05,  1.05s/it]2025-10-22 10:29:16 - INFO - Loaded rows 510000 to 520000
 93%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▏         | 52/56 [00:56<00:04,  1.06s/it]2025-10-22 10:29:17 - INFO - Loaded rows 520000 to 530000
 95%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▌       | 53/56 [00:57<00:03,  1.07s/it]2025-10-22 10:29:18 - INFO - Loaded rows 530000 to 540000
 96%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████     | 54/56 [00:58<00:02,  1.07s/it]2025-10-22 10:29:19 - INFO - Loaded rows 540000 to 550000
 98%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▌  | 55/56 [00:59<00:01,  1.10s/it]2025-10-22 10:29:19 - INFO - Loaded rows 550000 to 551443
100%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████| 56/56 [01:00<00:00,  1.07s/it]
2025-10-22 10:29:20 - INFO - Loaded 551443 rows into the database
2025-10-22 10:29:20 - INFO - Running query: -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000...
2025-10-22 10:29:20 - INFO - Transpiled query: from -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000 to /* TOP 1000 ROWS */ SELECT * FROM data LIMIT 1000
2025-10-22 10:29:23 - INFO - Query executed in 38.58ms, CPU: 7.18%, Memory: 640.16MB (3.99%)
2025-10-22 10:29:23 - INFO - Sample result (1000 rows total):
  artist_s                       song                                               text length  ... similarity_score_2 similar_artist_3 similar_song_3 similarity_score_3
0      !!!  Even When the Waters Cold  Friends told her she was better off at the bot...  03:47  ...           0.983719            Space  Neighbourhood           0.983236
1      !!!         One Girl / One Boy  Well I heard it, playing soft From a drunken b...  04:03  ...           0.990905     Justice Crew      Everybody           0.984483
2      !!!          Pardon My Freedom  Oh my god, did I just say that out loud? Shoul...  05:51  ...           0.965147     The Jacksons     Lovely One           0.956752
3      !!!                        Ooo  [Verse 1] Remember when I called you on the te...  03:44  ...           0.991494      Tiwa Savage      My Darlin           0.990381
4      !!!                 Freedom 15  [Verse 1] Calling me like I got something to s...  06:00  ...           0.981524        Freestyle  Its Automatic           0.981415

[5 rows x 39 columns]
2025-10-22 10:29:23 - INFO - Running query: -- COUNT ALL
SELECT COUNT(*) FROM data...
2025-10-22 10:29:23 - INFO - Transpiled query: from -- COUNT ALL
SELECT COUNT(*) FROM data to /* COUNT ALL */ SELECT COUNT(*) FROM data
2025-10-22 10:29:27 - INFO - Query executed in 508.88ms, CPU: 3.03%, Memory: 1896.31MB (11.83%)
2025-10-22 10:29:27 - INFO - Sample result (1 rows total):
   COUNT(*)
0    551443
2025-10-22 10:29:27 - INFO - Running query: -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT g...
2025-10-22 10:29:27 - INFO - Transpiled query: from -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT genre,
    COUNT(genre) AS genre_count 
FROM data 
GROUP BY genre 
ORDER BY genre_count DESC to /* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DISTINCT genre, COUNT(genre) AS genre_count FROM data GROUP BY genre ORDER BY CASE WHEN genre_count IS NULL THEN 1 ELSE 0 END DESC, genre_count DESC
2025-10-22 10:29:32 - INFO - Query executed in 2085.24ms, CPU: 2.02%, Memory: 1927.79MB (12.02%)
2025-10-22 10:29:32 - INFO - Sample result (3097 rows total):
     genre  genre_count
0  hip hop       262070
1      pop        11451
2  country         7392
3     folk         4897
4     jazz         3913
2025-10-22 10:29:32 - INFO - Running query: -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT al...
2025-10-22 10:29:32 - INFO - Transpiled query: from -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT album,
    COUNT(album) AS album_count 
FROM data 
GROUP BY album 
ORDER BY album_count DESC to /* DISTINCT VALUES IN COLUMN 'album' */ SELECT DISTINCT album, COUNT(album) AS album_count FROM data GROUP BY album ORDER BY CASE WHEN album_count IS NULL THEN 1 ELSE 0 END DESC, album_count DESC
2025-10-22 10:29:38 - INFO - Query executed in 3001.79ms, CPU: 5.06%, Memory: 1979.92MB (12.35%)
2025-10-22 10:29:38 - INFO - Sample result (151168 rows total):
           album  album_count
0    685 (Remix)         1603
1  Greatest Hits          685
2     Everything          637
3   Road From 26          599
4        312 DAY          593
2025-10-22 10:29:38 - INFO - Running query: -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
   ...
2025-10-22 10:29:38 - INFO - Transpiled query: from -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
    AVG(tempo) AS avg_tempo,
    SUM(tempo) AS sum_tempo, 
    MIN(tempo) AS min_tempo, 
    MAX(tempo) AS max_tempo 
FROM data to /* STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo' */ SELECT AVG(tempo) AS avg_tempo, SUM(tempo) AS sum_tempo, MIN(tempo) AS min_tempo, MAX(tempo) AS max_tempo FROM data
2025-10-22 10:29:42 - INFO - Query executed in 957.18ms, CPU: 1.47%, Memory: 1980.17MB (12.35%)
2025-10-22 10:29:42 - INFO - Sample result (1 rows total):
   avg_tempo   sum_tempo  min_tempo  max_tempo
0   120.5136  66456363.0         31        200
2025-10-22 10:29:42 - INFO - Running query: -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM dat...
2025-10-22 10:29:42 - INFO - Transpiled query: from -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM data 
WHERE text LIKE '%%love%%'
AND tempo < 120 to /* FILTER BY LIKE OPERATOR & 2 CONDITIONS */ SELECT * FROM data WHERE text LIKE '%%love%%' AND tempo < 120
2025-10-22 10:29:52 - INFO - Query executed in 6994.51ms, CPU: 1.70%, Memory: 1967.51MB (12.27%)
2025-10-22 10:29:52 - INFO - Sample result (119158 rows total):
                 artist_s                       song  ...                      similar_song_3 similarity_score_3
0                     !!!  Even When the Waters Cold  ...                       Neighbourhood           0.983236
1                     !!!            Heart of Hearts  ...             The Hero And The Madman           0.992627
2          !YADNUS,Daylyt                Last Breath  ...                             Im Sick           0.961484
3          !YADNUS,Daylyt            Day Electronica  ...                             12 Bars           0.937335
4  'Elena Of Avalor' Cast     Let Love Light the Way  ...  "I Ain't Never Seen No One Like You"           0.962872

[5 rows x 39 columns]
2025-10-22 10:29:52 - INFO - Running query: -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
 ...
2025-10-22 10:29:52 - INFO - Transpiled query: from -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
    DISTINCT a1.artist_s AS artists, 
    COUNT(*) AS duplicate_count 
FROM data AS a1 
JOIN data AS a2 
ON a1.artist_s = a2.artist_s
GROUP BY a1.artist_s to /* SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS */ SELECT DISTINCT a1.artist_s AS artists, COUNT(*) AS duplicate_count FROM data AS a1 JOIN data AS a2 ON a1.artist_s = a2.artist_s GROUP BY a1.artist_s
2025-10-22 10:31:51 - INFO - Query executed in 116168.28ms, CPU: 1.36%, Memory: 614.23MB (3.83%)
2025-10-22 10:31:52 - INFO - Sample result (127197 rows total):
          artists  duplicate_count
0             !!!              256
1     !!!,Lea Lea                4
2          !Marc¡                1
3  !YADNUS,Daylyt                9
4          !zeesh                1
2025-10-22 10:31:52 - INFO - Running query: -- WINDOW FUNCTION (LEAD)
-- find next popular song based on...
2025-10-22 10:31:52 - INFO - Transpiled query: from -- WINDOW FUNCTION (LEAD)
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
ORDER BY artist_s, popularity DESC to /* WINDOW FUNCTION (LEAD) */ /* find next popular song based on popularity grouped by artists */ SELECT artist_s, song, popularity, LEAD(song, 1) OVER (PARTITION BY artist_s ORDER BY CASE WHEN popularity IS NULL THEN 1 ELSE 0 END DESC, popularity DESC) AS next_most_popular_song, LEAD(popularity, 1) OVER (PARTITION BY artist_s ORDER BY CASE WHEN popularity IS NULL THEN 1 ELSE 0 END DESC, popularity DESC) AS next_song_popularity FROM data ORDER BY CASE WHEN artist_s IS NULL THEN 1 ELSE 0 END, artist_s, CASE WHEN popularity IS NULL THEN 1 ELSE 0 END DESC, popularity DESC
2025-10-22 10:32:06 - INFO - Query executed in 12012.06ms, CPU: 3.39%, Memory: 2042.04MB (12.74%)
2025-10-22 10:32:06 - INFO - Sample result (551443 rows total):
                                            artist_s            song  popularity next_most_popular_song  next_song_popularity
0                            _BY.ALEXANDER,070 Shake        TRUMPETS          41                   None                   NaN
1                     _BY.ALEXANDER,Charles Bukowski  BLOOM IN PARIS          26                   None                   NaN
2                            _BY.ALEXANDER,Rainsford     My Margaret          28                   None                   NaN
3                                             _J1MC!  Another Planet           0                   None                   NaN
4  -M-,Toumani Diabaté,Sidiki Diabaté,Santigold,H...             You          53                   None                   NaN
2025-10-22 10:32:06 - INFO - Running query: -- WINDOW FUNCTION WITH CTE
-- top 10 songs by popularity pe...
2025-10-22 10:32:06 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE
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
    popularity_rank to /* WINDOW FUNCTION WITH CTE */ /* top 10 songs by popularity per time_signature */ WITH ranked_songs AS (SELECT artist_s, song, time_signature, popularity, ROW_NUMBER() OVER (PARTITION BY time_signature ORDER BY CASE WHEN popularity IS NULL THEN 1 ELSE 0 END DESC, popularity DESC) AS popularity_rank FROM data WHERE NOT time_signature IS NULL) SELECT * FROM ranked_songs WHERE popularity_rank <= 10 ORDER BY CASE WHEN popularity IS NULL THEN 1 ELSE 0 END DESC, popularity DESC, CASE WHEN popularity_rank IS NULL THEN 1 ELSE 0 END, popularity_rank
2025-10-22 10:32:18 - INFO - Query executed in 8042.31ms, CPU: 1.47%, Memory: 2139.90MB (13.35%)
2025-10-22 10:32:18 - INFO - Sample result (40 rows total):
        artist_s                        song time_signature  popularity  popularity_rank
0  Billie Eilish                       H.M.T            4/4         100                1
1  Billie Eilish  Slipping Away Original Mix            4/4          99                2
2  Billie Eilish          Birds of a Feather            4/4          99                3
3  Billie Eilish                       So So            4/4          99                4
4  Billie Eilish                          HI            4/4          99                5
2025-10-22 10:32:18 - INFO - Running query: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH a...
2025-10-22 10:32:18 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(
      regexp_replace(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), 
      '%%d %%B %%Y'
    )) AS release_year
  FROM 
    data
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
ORDER BY artist_s, release_year to /* WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION */ WITH artist_release_years AS (SELECT DISTINCT artist_s, EXTRACT(YEAR FROM STRPTIME(REGEXP_REPLACE(release_date, '(\\d+)(st|nd|rd|th)', '\\1', 'g'), '%%d %%B %%Y')) AS release_year FROM data), artist_release_gaps AS (SELECT artist_s, release_year, LAG(release_year, 1) OVER (PARTITION BY artist_s ORDER BY CASE WHEN release_year IS NULL THEN 1 ELSE 0 END, release_year) AS previous_release_year /* Get the release year of the previous song for this artist */ FROM artist_release_years) SELECT artist_s, previous_release_year, release_year FROM artist_release_gaps ORDER BY CASE WHEN artist_s IS NULL THEN 1 ELSE 0 END, artist_s, CASE WHEN release_year IS NULL THEN 1 ELSE 0 END, release_year
2025-10-22 10:32:20 - ERROR - Query execution failed: (pymysql.err.OperationalError) (1305, 'FUNCTION testdb.strptime does not exist')
[SQL: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(
      regexp_replace(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), 
      '%%d %%B %%Y'
    )) AS release_year
  FROM 
    data
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
(Background on this error at: https://sqlalche.me/e/20/e3q8)
2025-10-22 10:32:22 - INFO - Query FAILED in 36.64ms, CPU: 3.06%, Memory: 2155.75MB (13.45%)
2025-10-22 10:32:25 - INFO - Stopped container: test-mysql_cpu10_mem32G
2025-10-22 10:32:25 - INFO - Removed container: test-mysql_cpu10_mem32G
2025-10-22 10:32:25 - INFO - Benchmarking postgres_cpu10_mem32G...
2025-10-22 10:32:25 - INFO - Started container: test-postgres_cpu10_mem32G (9f799b1045a6), with memory limit: 32G and cpu limit: 10
2025-10-22 10:32:30 - INFO - PostgresHandler is ready
2025-10-22 10:32:30 - INFO - Loading data to PostgresHandler...
2025-10-22 10:33:39 - INFO - Loaded 551443 rows into the database
2025-10-22 10:33:39 - INFO - Running query: -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000...
2025-10-22 10:33:39 - INFO - Transpiled query: from -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000 to /* TOP 1000 ROWS */ SELECT * FROM data LIMIT 1000
2025-10-22 10:33:42 - INFO - Query executed in 116.69ms, CPU: 1.21%, Memory: 1656.41MB (10.33%)
2025-10-22 10:33:42 - INFO - Sample result (1000 rows total):
  artist_s                       song                                               text length  ... similarity_score_2 similar_artist_3 similar_song_3 similarity_score_3
0      !!!  Even When the Waters Cold  Friends told her she was better off at the bot...  03:47  ...           0.983719            Space  Neighbourhood           0.983236
1      !!!         One Girl / One Boy  Well I heard it, playing soft From a drunken b...  04:03  ...           0.990905     Justice Crew      Everybody           0.984483
2      !!!          Pardon My Freedom  Oh my god, did I just say that out loud? Shoul...  05:51  ...           0.965147     The Jacksons     Lovely One           0.956752
3      !!!                        Ooo  [Verse 1] Remember when I called you on the te...  03:44  ...           0.991494      Tiwa Savage      My Darlin           0.990381
4      !!!                 Freedom 15  [Verse 1] Calling me like I got something to s...  06:00  ...           0.981524        Freestyle  Its Automatic           0.981415

[5 rows x 39 columns]
2025-10-22 10:33:42 - INFO - Running query: -- COUNT ALL
SELECT COUNT(*) FROM data...
2025-10-22 10:33:42 - INFO - Transpiled query: from -- COUNT ALL
SELECT COUNT(*) FROM data to /* COUNT ALL */ SELECT COUNT(*) FROM data
2025-10-22 10:33:46 - INFO - Query executed in 173.52ms, CPU: 1.08%, Memory: 1663.61MB (10.38%)
2025-10-22 10:33:46 - INFO - Sample result (1 rows total):
    count
0  551443
2025-10-22 10:33:46 - INFO - Running query: -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT g...
2025-10-22 10:33:46 - INFO - Transpiled query: from -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT genre,
    COUNT(genre) AS genre_count 
FROM data 
GROUP BY genre 
ORDER BY genre_count DESC to /* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DISTINCT genre, COUNT(genre) AS genre_count FROM data GROUP BY genre ORDER BY genre_count DESC
2025-10-22 10:33:50 - INFO - Query executed in 222.33ms, CPU: 9.72%, Memory: 1669.12MB (10.41%)
2025-10-22 10:33:50 - INFO - Sample result (3097 rows total):
     genre  genre_count
0  hip hop       262070
1      pop        11451
2  country         7392
3     folk         4897
4     jazz         3913
2025-10-22 10:33:50 - INFO - Running query: -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT al...
2025-10-22 10:33:50 - INFO - Transpiled query: from -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT album,
    COUNT(album) AS album_count 
FROM data 
GROUP BY album 
ORDER BY album_count DESC to /* DISTINCT VALUES IN COLUMN 'album' */ SELECT DISTINCT album, COUNT(album) AS album_count FROM data GROUP BY album ORDER BY album_count DESC
2025-10-22 10:33:54 - INFO - Query executed in 967.60ms, CPU: 13.69%, Memory: 817.88MB (5.10%)
2025-10-22 10:33:54 - INFO - Sample result (154682 rows total):
           album  album_count
0    685 (Remix)         1603
1  Greatest Hits          683
2     Everything          602
3   Road From 26          599
4        312 DAY          593
2025-10-22 10:33:54 - INFO - Running query: -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
   ...
2025-10-22 10:33:54 - INFO - Transpiled query: from -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
    AVG(tempo) AS avg_tempo,
    SUM(tempo) AS sum_tempo, 
    MIN(tempo) AS min_tempo, 
    MAX(tempo) AS max_tempo 
FROM data to /* STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo' */ SELECT AVG(tempo) AS avg_tempo, SUM(tempo) AS sum_tempo, MIN(tempo) AS min_tempo, MAX(tempo) AS max_tempo FROM data
2025-10-22 10:33:58 - INFO - Query executed in 671.70ms, CPU: 12.74%, Memory: 1035.64MB (6.46%)
2025-10-22 10:33:58 - INFO - Sample result (1 rows total):
    avg_tempo   sum_tempo  min_tempo  max_tempo
0  120.513567  66456363.0         31        200
2025-10-22 10:33:58 - INFO - Running query: -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM dat...
2025-10-22 10:33:58 - INFO - Transpiled query: from -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM data 
WHERE text LIKE '%%love%%'
AND tempo < 120 to /* FILTER BY LIKE OPERATOR & 2 CONDITIONS */ SELECT * FROM data WHERE text LIKE '%%love%%' AND tempo < 120
2025-10-22 10:34:04 - INFO - Query executed in 2485.08ms, CPU: 15.01%, Memory: 1305.09MB (8.14%)
2025-10-22 10:34:04 - INFO - Sample result (115044 rows total):
  artist_s                             song                                               text  ...         similar_artist_3        similar_song_3 similarity_score_3
0   *NSYNC  For The Girl Who Has Everything  You drive a pretty car, you know how fine you ...  ...                    Modjo           What I Mean           0.988229
1   *NSYNC            Forever In Your Heart  You know    That I love you    In every way   ...  ...       Japanese Breakfast          Pure Handjob           0.984858
2   *NSYNC          Just Don't Tell Me That  Oh oh, no no, all right    You got to be seen ...  ...   TobyMac,Ryan Stevenson           Lift You Up           0.985144
3   *NSYNC              Kiss Me At Midnight  Kiss me at midnight    5...4...3...2...1    Ki...  ...  Sammy Porter,Liv Dawson  Talking Like Friends           0.987187
4     2Pac                     No More Pain  [Intro] Hey, DeVante Nigga, don't you know we'...  ...                  Dr. Dre     Bitches Aint Shit           0.933160

[5 rows x 39 columns]
2025-10-22 10:34:04 - INFO - Running query: -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
 ...
2025-10-22 10:34:04 - INFO - Transpiled query: from -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
    DISTINCT a1.artist_s AS artists, 
    COUNT(*) AS duplicate_count 
FROM data AS a1 
JOIN data AS a2 
ON a1.artist_s = a2.artist_s
GROUP BY a1.artist_s to /* SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS */ SELECT DISTINCT a1.artist_s AS artists, COUNT(*) AS duplicate_count FROM data AS a1 JOIN data AS a2 ON a1.artist_s = a2.artist_s GROUP BY a1.artist_s
2025-10-22 10:41:15 - INFO - Query executed in 428222.45ms, CPU: 10.37%, Memory: 1389.76MB (8.67%)                                                                             2025-10-22 10:41:15 - INFO - Sample result (127334 rows total):
  artists  duplicate_count
0      제노                1
1      코케                1
2     박진석                1
3     우정하                1
4     !!!              256
2025-10-22 10:41:15 - INFO - Running query: -- WINDOW FUNCTION (LEAD)
-- find next popular song based on...
2025-10-22 10:41:15 - INFO - Transpiled query: from -- WINDOW FUNCTION (LEAD)
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
2025-10-22 10:41:20 - INFO - Query executed in 2188.09ms, CPU: 14.28%, Memory: 1345.11MB (8.39%)
2025-10-22 10:41:20 - INFO - Sample result (551443 rows total):
  artist_s                                              song  popularity     next_most_popular_song  next_song_popularity
0       제노                                   Come Back to Me           5                       None                   NaN
1       코케                               I Wanna Be With You           0                       None                   NaN
2      박진석  Jung Seung Hwan - Day  Night English Translation           0                       None                   NaN
3      우정하                      Memories Smiling Tears Remix          21                       None                   NaN
4      !!!                                One Girl / One Boy          42  Even When the Waters Cold                  40.0
2025-10-22 10:41:20 - INFO - Running query: -- WINDOW FUNCTION WITH CTE
-- top 10 songs by popularity pe...
2025-10-22 10:41:20 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE
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
2025-10-22 10:41:24 - INFO - Query executed in 800.47ms, CPU: 16.51%, Memory: 1424.62MB (8.89%)
2025-10-22 10:41:25 - INFO - Sample result (40 rows total):
        artist_s                        song time_signature  popularity  popularity_rank
0  Billie Eilish                       H.M.T            4/4         100                1
1  Billie Eilish                       So So            4/4          99                2
2  Billie Eilish  Slipping Away Original Mix            4/4          99                3
3  Billie Eilish          Birds of a Feather            4/4          99                4
4  Billie Eilish                        E.T.            4/4          99                5
2025-10-22 10:41:25 - INFO - Running query: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH a...
2025-10-22 10:41:25 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(
      regexp_replace(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), 
      '%%d %%B %%Y'
    )) AS release_year
  FROM 
    data
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
ORDER BY artist_s, release_year to /* WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION */ WITH artist_release_years AS (SELECT DISTINCT artist_s, EXTRACT(YEAR FROM STRPTIME(REGEXP_REPLACE(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), '%%d %%B %%Y')) AS release_year FROM data), artist_release_gaps AS (SELECT artist_s, release_year, LAG(release_year, 1) OVER (PARTITION BY artist_s ORDER BY release_year) AS previous_release_year /* Get the release year of the previous song for this artist */ FROM artist_release_years) SELECT artist_s, previous_release_year, release_year FROM artist_release_gaps ORDER BY artist_s, release_year
2025-10-22 10:41:27 - ERROR - Query execution failed: (psycopg2.errors.UndefinedFunction) function strptime(text, unknown) does not exist
LINE 5:     EXTRACT(year FROM strptime(
                              ^
HINT:  No function matches the given name and argument types. You might need to add explicit type casts.

[SQL: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(
      regexp_replace(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), 
      '%%d %%B %%Y'
    )) AS release_year
  FROM 
    data
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
2025-10-22 10:41:28 - INFO - Query FAILED in 76.80ms, CPU: 15.44%, Memory: 1396.27MB (8.71%)
2025-10-22 10:41:29 - INFO - Stopped container: test-postgres_cpu10_mem32G
2025-10-22 10:41:29 - INFO - Removed container: test-postgres_cpu10_mem32G
2025-10-22 10:41:29 - INFO - Benchmarking duckdb_cpu10_mem32G...
2025-10-22 10:41:29 - INFO - Started container: test-duckdb_cpu10_mem32G (988bbf804747)
2025-10-22 10:41:32 - INFO - DuckDBHandler is ready
2025-10-22 10:41:32 - INFO - Loading data to DuckDBHandler...
/Users/macbook/Development/database_crash_test/.venv/lib/python3.13/site-packages/duckdb_engine/__init__.py:184: DuckDBEngineWarning: duckdb-engine doesn't yet support reflection on indices
  warnings.warn(
2025-10-22 10:43:03 - INFO - Loaded 551443 rows into the database
2025-10-22 10:43:03 - INFO - Running query: -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000...
2025-10-22 10:43:03 - INFO - Transpiled query: from -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000 to /* TOP 1000 ROWS */ SELECT * FROM data LIMIT 1000
2025-10-22 10:43:06 - INFO - Query executed in 32.26ms, CPU: 0.01%, Memory: 9.02MB (0.06%)
2025-10-22 10:43:06 - INFO - Sample result (1000 rows total):
  artist_s                       song                                               text length  ... similarity_score_2 similar_artist_3 similar_song_3 similarity_score_3
0      !!!  Even When the Waters Cold  Friends told her she was better off at the bot...  03:47  ...           0.983719            Space  Neighbourhood           0.983236
1      !!!         One Girl / One Boy  Well I heard it, playing soft From a drunken b...  04:03  ...           0.990905     Justice Crew      Everybody           0.984483
2      !!!          Pardon My Freedom  Oh my god, did I just say that out loud? Shoul...  05:51  ...           0.965147     The Jacksons     Lovely One           0.956752
3      !!!                        Ooo  [Verse 1] Remember when I called you on the te...  03:44  ...           0.991494      Tiwa Savage      My Darlin           0.990381
4      !!!                 Freedom 15  [Verse 1] Calling me like I got something to s...  06:00  ...           0.981524        Freestyle  Its Automatic           0.981415

[5 rows x 39 columns]
2025-10-22 10:43:06 - INFO - Running query: -- COUNT ALL
SELECT COUNT(*) FROM data...
2025-10-22 10:43:06 - INFO - Transpiled query: from -- COUNT ALL
SELECT COUNT(*) FROM data to /* COUNT ALL */ SELECT COUNT(*) FROM data
2025-10-22 10:43:10 - INFO - Query executed in 4.27ms, CPU: 0.01%, Memory: 9.02MB (0.06%)
2025-10-22 10:43:10 - INFO - Sample result (1 rows total):
   count_star()
0        551443
2025-10-22 10:43:10 - INFO - Running query: -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT g...
2025-10-22 10:43:10 - INFO - Transpiled query: from -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT genre,
    COUNT(genre) AS genre_count 
FROM data 
GROUP BY genre 
ORDER BY genre_count DESC to /* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DISTINCT genre, COUNT(genre) AS genre_count FROM data GROUP BY genre ORDER BY genre_count DESC NULLS FIRST
2025-10-22 10:43:14 - INFO - Query executed in 16.17ms, CPU: 0.01%, Memory: 9.02MB (0.06%)
2025-10-22 10:43:14 - INFO - Sample result (3097 rows total):
     genre  genre_count
0  hip hop       262070
1      pop        11451
2  country         7392
3     folk         4897
4     jazz         3913
2025-10-22 10:43:14 - INFO - Running query: -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT al...
2025-10-22 10:43:14 - INFO - Transpiled query: from -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT album,
    COUNT(album) AS album_count 
FROM data 
GROUP BY album 
ORDER BY album_count DESC to /* DISTINCT VALUES IN COLUMN 'album' */ SELECT DISTINCT album, COUNT(album) AS album_count FROM data GROUP BY album ORDER BY album_count DESC NULLS FIRST
2025-10-22 10:43:18 - INFO - Query executed in 162.70ms, CPU: 0.02%, Memory: 9.02MB (0.06%)
2025-10-22 10:43:18 - INFO - Sample result (154682 rows total):
           album  album_count
0    685 (Remix)         1603
1  Greatest Hits          683
2     Everything          602
3   Road From 26          599
4        312 DAY          593
2025-10-22 10:43:18 - INFO - Running query: -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
   ...
2025-10-22 10:43:18 - INFO - Transpiled query: from -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
    AVG(tempo) AS avg_tempo,
    SUM(tempo) AS sum_tempo, 
    MIN(tempo) AS min_tempo, 
    MAX(tempo) AS max_tempo 
FROM data to /* STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo' */ SELECT AVG(tempo) AS avg_tempo, SUM(tempo) AS sum_tempo, MIN(tempo) AS min_tempo, MAX(tempo) AS max_tempo FROM data
2025-10-22 10:43:22 - INFO - Query executed in 7.48ms, CPU: 0.00%, Memory: 9.02MB (0.06%)
2025-10-22 10:43:22 - INFO - Sample result (1 rows total):
    avg_tempo  sum_tempo  min_tempo  max_tempo
0  120.513567   66456363         31        200
2025-10-22 10:43:22 - INFO - Running query: -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM dat...
2025-10-22 10:43:22 - INFO - Transpiled query: from -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM data 
WHERE text LIKE '%%love%%'
AND tempo < 120 to /* FILTER BY LIKE OPERATOR & 2 CONDITIONS */ SELECT * FROM data WHERE text LIKE '%%love%%' AND tempo < 120
2025-10-22 10:43:27 - INFO - Query executed in 2187.67ms, CPU: 0.01%, Memory: 9.02MB (0.06%)
2025-10-22 10:43:27 - INFO - Sample result (115044 rows total):
                 artist_s                       song  ...                      similar_song_3 similarity_score_3
0                     !!!  Even When the Waters Cold  ...                       Neighbourhood           0.983236
1                     !!!            Heart of Hearts  ...             The Hero And The Madman           0.992627
2          !YADNUS,Daylyt                Last Breath  ...                             Im Sick           0.961484
3          !YADNUS,Daylyt            Day Electronica  ...                             12 Bars           0.937335
4  "Elena Of Avalor" Cast     Let Love Light the Way  ...  I Ain't Never Seen No One Like You           0.962872

[5 rows x 39 columns]
2025-10-22 10:43:27 - INFO - Running query: -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
 ...
2025-10-22 10:43:27 - INFO - Transpiled query: from -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
    DISTINCT a1.artist_s AS artists, 
    COUNT(*) AS duplicate_count 
FROM data AS a1 
JOIN data AS a2 
ON a1.artist_s = a2.artist_s
GROUP BY a1.artist_s to /* SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS */ SELECT DISTINCT a1.artist_s AS artists, COUNT(*) AS duplicate_count FROM data AS a1 JOIN data AS a2 ON a1.artist_s = a2.artist_s GROUP BY a1.artist_s
2025-10-22 10:43:31 - INFO - Query executed in 219.19ms, CPU: 0.01%, Memory: 9.02MB (0.06%)
2025-10-22 10:43:32 - INFO - Sample result (127334 rows total):
                                            artists  duplicate_count
0  Thea Van Seijen,Black Knights,RZA,Dexter Wiggles                1
1                                  Them Dirty Roses                1
2                                       Then Jerico                1
3                                         THEREEZAA                1
4                                      Tim Cappello                1
2025-10-22 10:43:32 - INFO - Running query: -- WINDOW FUNCTION (LEAD)
-- find next popular song based on...
2025-10-22 10:43:32 - INFO - Transpiled query: from -- WINDOW FUNCTION (LEAD)
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
2025-10-22 10:43:36 - INFO - Query executed in 1011.48ms, CPU: 0.01%, Memory: 9.02MB (0.06%)
2025-10-22 10:43:36 - INFO - Sample result (551443 rows total):
  artist_s                       song  popularity     next_most_popular_song  next_song_popularity
0      !!!         One Girl / One Boy          42  Even When the Waters Cold                  40.0
1      !!!  Even When the Waters Cold          40                 Myth Takes                  34.0
2      !!!                 Myth Takes          34                       Slyd                  33.0
3      !!!                       Slyd          33                 Freedom 15                  30.0
4      !!!                 Freedom 15          30          Pardon My Freedom                  29.0
2025-10-22 10:43:36 - INFO - Running query: -- WINDOW FUNCTION WITH CTE
-- top 10 songs by popularity pe...
2025-10-22 10:43:36 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE
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
2025-10-22 10:43:40 - INFO - Query executed in 54.12ms, CPU: 0.01%, Memory: 9.02MB (0.06%)
2025-10-22 10:43:40 - INFO - Sample result (40 rows total):
            artist_s            song time_signature  popularity  popularity_rank
0      Billie Eilish           H.M.T            4/4         100                1
1  Sabrina Carpenter    Swing My Way            4/4          99                2
2  Sabrina Carpenter  Safe and Sound            4/4          99                3
3  Sabrina Carpenter           Alien            4/4          99                4
4  Sabrina Carpenter        Wildside            4/4          99                5
2025-10-22 10:43:40 - INFO - Running query: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH a...
2025-10-22 10:43:40 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(
      regexp_replace(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), 
      '%%d %%B %%Y'
    )) AS release_year
  FROM 
    data
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
ORDER BY artist_s, release_year to /* WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION */ WITH artist_release_years AS (SELECT DISTINCT artist_s, EXTRACT(YEAR FROM STRPTIME(REGEXP_REPLACE(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), '%%d %%B %%Y')) AS release_year FROM data), artist_release_gaps AS (SELECT artist_s, release_year, LAG(release_year, 1) OVER (PARTITION BY artist_s ORDER BY release_year) AS previous_release_year /* Get the release year of the previous song for this artist */ FROM artist_release_years) SELECT artist_s, previous_release_year, release_year FROM artist_release_gaps ORDER BY artist_s, release_year
2025-10-22 10:43:42 - ERROR - Query execution failed: (duckdb.duckdb.InvalidInputException) Invalid Input Error: Could not parse string "10 August 1979" according to format specifier "%%d %%B %%Y"
10 August 1979
 ^
Error: Literal does not match, expected %d %B %Y
[SQL: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(
      regexp_replace(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), 
      '%%d %%B %%Y'
    )) AS release_year
  FROM 
    data
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
2025-10-22 10:43:44 - INFO - Query FAILED in 11.43ms, CPU: 0.01%, Memory: 9.02MB (0.06%)
2025-10-22 10:43:54 - INFO - Stopped container: test-duckdb_cpu10_mem32G
2025-10-22 10:43:54 - INFO - Removed container: test-duckdb_cpu10_mem32G
2025-10-22 10:43:54 - INFO - Benchmarking clickhouse_cpu10_mem32G...
2025-10-22 10:43:54 - INFO - Started container: test-clickhouse_cpu10_mem32G (2f368f23264b), with memory limit: 32G and cpu limit: 10
2025-10-22 10:43:54 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-10-22 10:43:55 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-10-22 10:43:56 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-10-22 10:43:57 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-10-22 10:43:58 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-10-22 10:43:59 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-10-22 10:44:00 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-10-22 10:44:01 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-10-22 10:44:02 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-10-22 10:44:03 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))
2025-10-22 10:44:04 - INFO - ClickHouse readiness check error: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response'))'
2025-10-22 10:44:05 - INFO - ClickHouseHandler is ready
2025-10-22 10:44:05 - INFO - Loading data to ClickHouseHandler...
2025-10-22 10:44:05 - INFO - <bound method DataFrame.items of                 artist_s                                               song  ...           similar_song_3 similarity_score_3
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
2025-10-22 10:44:05 - INFO - artist_s                           object
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
2025-10-22 10:44:05 - INFO - `artist_s` String
2025-10-22 10:44:05 - INFO - `song` String
2025-10-22 10:44:05 - INFO - `text` String
2025-10-22 10:44:05 - INFO - `length` String
2025-10-22 10:44:05 - INFO - `emotion` String
2025-10-22 10:44:05 - INFO - `genre` String
2025-10-22 10:44:05 - INFO - `album` String
2025-10-22 10:44:05 - INFO - `release_date` String
2025-10-22 10:44:05 - INFO - `key` String
2025-10-22 10:44:05 - INFO - `tempo` Int64
2025-10-22 10:44:05 - INFO - `loudness_db` String
2025-10-22 10:44:05 - INFO - `time_signature` String
2025-10-22 10:44:05 - INFO - `explicit` String
2025-10-22 10:44:05 - INFO - `popularity` Int64
2025-10-22 10:44:05 - INFO - `energy` Int64
2025-10-22 10:44:05 - INFO - `danceability` Int64
2025-10-22 10:44:05 - INFO - `positiveness` Int64
2025-10-22 10:44:05 - INFO - `speechiness` Int64
2025-10-22 10:44:05 - INFO - `liveness` Int64
2025-10-22 10:44:05 - INFO - `acousticness` Int64
2025-10-22 10:44:05 - INFO - `instrumentalness` Int64
2025-10-22 10:44:05 - INFO - `good_for_party` Int64
2025-10-22 10:44:05 - INFO - `good_for_work_study` Int64
2025-10-22 10:44:05 - INFO - `good_for_relaxation_meditation` Int64
2025-10-22 10:44:05 - INFO - `good_for_exercise` Int64
2025-10-22 10:44:05 - INFO - `good_for_running` Int64
2025-10-22 10:44:05 - INFO - `good_for_yoga_stretching` Int64
2025-10-22 10:44:05 - INFO - `good_for_driving` Int64
2025-10-22 10:44:05 - INFO - `good_for_social_gatherings` Int64
2025-10-22 10:44:05 - INFO - `good_for_morning_routine` Int64
2025-10-22 10:44:05 - INFO - `similar_artist_1` String
2025-10-22 10:44:05 - INFO - `similar_song_1` String
2025-10-22 10:44:05 - INFO - `similarity_score_1` Float64
2025-10-22 10:44:05 - INFO - `similar_artist_2` String
2025-10-22 10:44:05 - INFO - `similar_song_2` String
2025-10-22 10:44:05 - INFO - `similarity_score_2` Float64
2025-10-22 10:44:05 - INFO - `similar_artist_3` String
2025-10-22 10:44:05 - INFO - `similar_song_3` String
2025-10-22 10:44:05 - INFO - `similarity_score_3` Float64
2025-10-22 10:44:05 - INFO - Creating ClickHouse table 'data' with columns: ['`artist_s` String', '`song` String', '`text` String', '`length` String', '`emotion` String', '`genre` String', '`album` String', '`release_date` String', '`key` String', '`tempo` Int64', '`loudness_db` String', '`time_signature` String', '`explicit` String', '`popularity` Int64', '`energy` Int64', '`danceability` Int64', '`positiveness` Int64', '`speechiness` Int64', '`liveness` Int64', '`acousticness` Int64', '`instrumentalness` Int64', '`good_for_party` Int64', '`good_for_work_study` Int64', '`good_for_relaxation_meditation` Int64', '`good_for_exercise` Int64', '`good_for_running` Int64', '`good_for_yoga_stretching` Int64', '`good_for_driving` Int64', '`good_for_social_gatherings` Int64', '`good_for_morning_routine` Int64', '`similar_artist_1` String', '`similar_song_1` String', '`similarity_score_1` Float64', '`similar_artist_2` String', '`similar_song_2` String', '`similarity_score_2` Float64', '`similar_artist_3` String', '`similar_song_3` String', '`similarity_score_3` Float64']
2025-10-22 10:44:05 - INFO - SQL: 
            CREATE TABLE IF NOT EXISTS data (
                `artist_s` String, `song` String, `text` String, `length` String, `emotion` String, `genre` String, `album` String, `release_date` String, `key` String, `tempo` Int64, `loudness_db` String, `time_signature` String, `explicit` String, `popularity` Int64, `energy` Int64, `danceability` Int64, `positiveness` Int64, `speechiness` Int64, `liveness` Int64, `acousticness` Int64, `instrumentalness` Int64, `good_for_party` Int64, `good_for_work_study` Int64, `good_for_relaxation_meditation` Int64, `good_for_exercise` Int64, `good_for_running` Int64, `good_for_yoga_stretching` Int64, `good_for_driving` Int64, `good_for_social_gatherings` Int64, `good_for_morning_routine` Int64, `similar_artist_1` String, `similar_song_1` String, `similarity_score_1` Float64, `similar_artist_2` String, `similar_song_2` String, `similarity_score_2` Float64, `similar_artist_3` String, `similar_song_3` String, `similarity_score_3` Float64
            ) ENGINE = Memory
        
2025-10-22 10:45:18 - INFO - Loaded 551443 rows into the database
2025-10-22 10:45:18 - INFO - Running query: -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000...
2025-10-22 10:45:18 - INFO - Transpiled query: from -- TOP 1000 ROWS
SELECT * FROM data LIMIT 1000 to /* TOP 1000 ROWS */ SELECT * FROM data LIMIT 1000
2025-10-22 10:45:21 - INFO - Query executed in 149.04ms, CPU: 17.63%, Memory: 2121.98MB (13.24%)
2025-10-22 10:45:21 - INFO - Sample result (1000 rows total):
  artist_s                       song                                               text length  ... similarity_score_2 similar_artist_3 similar_song_3 similarity_score_3
0      !!!  Even When the Waters Cold  Friends told her she was better off at the bot...  03:47  ...           0.983719            Space  Neighbourhood           0.983236
1      !!!         One Girl / One Boy  Well I heard it, playing soft From a drunken b...  04:03  ...           0.990905     Justice Crew      Everybody           0.984483
2      !!!          Pardon My Freedom  Oh my god, did I just say that out loud? Shoul...  05:51  ...           0.965147     The Jacksons     Lovely One           0.956752
3      !!!                        Ooo  [Verse 1] Remember when I called you on the te...  03:44  ...           0.991494      Tiwa Savage      My Darlin           0.990381
4      !!!                 Freedom 15  [Verse 1] Calling me like I got something to s...  06:00  ...           0.981524        Freestyle  Its Automatic           0.981415

[5 rows x 39 columns]
2025-10-22 10:45:21 - INFO - Running query: -- COUNT ALL
SELECT COUNT(*) FROM data...
2025-10-22 10:45:21 - INFO - Transpiled query: from -- COUNT ALL
SELECT COUNT(*) FROM data to /* COUNT ALL */ SELECT COUNT(*) FROM data
2025-10-22 10:45:25 - INFO - Query executed in 35.26ms, CPU: 5.06%, Memory: 2064.88MB (12.88%)
2025-10-22 10:45:25 - INFO - Sample result (1 rows total):
   COUNT()
0   551443
2025-10-22 10:45:25 - INFO - Running query: -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT g...
2025-10-22 10:45:25 - INFO - Transpiled query: from -- DISTINCT VALUES & COUNT OF 'genre'
SELECT 
    DISTINCT genre,
    COUNT(genre) AS genre_count 
FROM data 
GROUP BY genre 
ORDER BY genre_count DESC to /* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DISTINCT genre, COUNT(genre) AS genre_count FROM data GROUP BY genre ORDER BY genre_count DESC NULLS FIRST
2025-10-22 10:45:29 - INFO - Query executed in 112.88ms, CPU: 8.14%, Memory: 2022.69MB (12.62%)
2025-10-22 10:45:29 - INFO - Sample result (3097 rows total):
     genre  genre_count
0  hip hop       262070
1      pop        11451
2  country         7392
3     folk         4897
4     jazz         3913
2025-10-22 10:45:29 - INFO - Running query: -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT al...
2025-10-22 10:45:29 - INFO - Transpiled query: from -- DISTINCT VALUES IN COLUMN 'album'
SELECT 
    DISTINCT album,
    COUNT(album) AS album_count 
FROM data 
GROUP BY album 
ORDER BY album_count DESC to /* DISTINCT VALUES IN COLUMN 'album' */ SELECT DISTINCT album, COUNT(album) AS album_count FROM data GROUP BY album ORDER BY album_count DESC NULLS FIRST
2025-10-22 10:45:33 - INFO - Query executed in 459.26ms, CPU: 4.65%, Memory: 2057.11MB (12.83%)
2025-10-22 10:45:34 - INFO - Sample result (154682 rows total):
           album  album_count
0    685 (Remix)         1603
1  Greatest Hits          683
2     Everything          602
3   Road From 26          599
4        312 DAY          593
2025-10-22 10:45:34 - INFO - Running query: -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
   ...
2025-10-22 10:45:34 - INFO - Transpiled query: from -- STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo'
SELECT 
    AVG(tempo) AS avg_tempo,
    SUM(tempo) AS sum_tempo, 
    MIN(tempo) AS min_tempo, 
    MAX(tempo) AS max_tempo 
FROM data to /* STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo' */ SELECT AVG(tempo) AS avg_tempo, SUM(tempo) AS sum_tempo, MIN(tempo) AS min_tempo, MAX(tempo) AS max_tempo FROM data
2025-10-22 10:45:37 - INFO - Query executed in 20.26ms, CPU: 6.64%, Memory: 2055.64MB (12.82%)
2025-10-22 10:45:38 - INFO - Sample result (1 rows total):
    avg_tempo  sum_tempo  min_tempo  max_tempo
0  120.513567   66456363         31        200
2025-10-22 10:45:38 - INFO - Running query: -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM dat...
2025-10-22 10:45:38 - INFO - Transpiled query: from -- FILTER BY LIKE OPERATOR & 2 CONDITIONS
SELECT * 
FROM data 
WHERE text LIKE '%%love%%'
AND tempo < 120 to /* FILTER BY LIKE OPERATOR & 2 CONDITIONS */ SELECT * FROM data WHERE text LIKE '%%love%%' AND tempo < 120
2025-10-22 10:45:52 - INFO - Query executed in 11078.89ms, CPU: 15.13%, Memory: 2405.58MB (15.00%)
2025-10-22 10:45:52 - INFO - Sample result (115044 rows total):
                 artist_s                       song  ...                      similar_song_3 similarity_score_3
0                     !!!  Even When the Waters Cold  ...                       Neighbourhood           0.983236
1                     !!!            Heart of Hearts  ...             The Hero And The Madman           0.992627
2          !YADNUS,Daylyt                Last Breath  ...                             Im Sick           0.961484
3          !YADNUS,Daylyt            Day Electronica  ...                             12 Bars           0.937335
4  "Elena Of Avalor" Cast     Let Love Light the Way  ...  I Ain't Never Seen No One Like You           0.962872

[5 rows x 39 columns]
2025-10-22 10:45:52 - INFO - Running query: -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
 ...
2025-10-22 10:45:52 - INFO - Transpiled query: from -- SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS
SELECT 
    DISTINCT a1.artist_s AS artists, 
    COUNT(*) AS duplicate_count 
FROM data AS a1 
JOIN data AS a2 
ON a1.artist_s = a2.artist_s
GROUP BY a1.artist_s to /* SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS */ SELECT DISTINCT a1.artist_s AS artists, COUNT(*) AS duplicate_count FROM data AS a1 JOIN data AS a2 ON a1.artist_s = a2.artist_s GROUP BY a1.artist_s
2025-10-22 10:45:56 - INFO - Query executed in 794.66ms, CPU: 9.03%, Memory: 2167.23MB (13.52%)
2025-10-22 10:45:56 - INFO - Sample result (127334 rows total):
    artists  duplicate_count
0        Lr                1
1  Bryan El                1
2  Pumarosa               25
3   halberd                1
4      Deno               64
2025-10-22 10:45:56 - INFO - Running query: -- WINDOW FUNCTION (LEAD)
-- find next popular song based on...
2025-10-22 10:45:56 - INFO - Transpiled query: from -- WINDOW FUNCTION (LEAD)
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
2025-10-22 10:45:58 - ERROR - Query execution failed: Orig exception: Code: 63. DB::Exception: Aggregate function with name 'LEAD' does not exist. In scope SELECT artist_s, song, popularity, LEAD(song, 1) OVER (PARTITION BY artist_s ORDER BY popularity DESC) AS next_most_popular_song, LEAD(popularity, 1) OVER (PARTITION BY artist_s ORDER BY popularity DESC) AS next_song_popularity FROM data ORDER BY artist_s ASC, popularity DESC. Maybe you meant: ['lead','lag']. (UNKNOWN_AGGREGATE_FUNCTION) (version 25.6.4.12 (official build))

2025-10-22 10:46:00 - INFO - Query FAILED in 49.71ms, CPU: 6.88%, Memory: 2153.53MB (13.43%)
2025-10-22 10:46:00 - INFO - Running query: -- WINDOW FUNCTION WITH CTE
-- top 10 songs by popularity pe...
2025-10-22 10:46:00 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE
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
2025-10-22 10:46:04 - INFO - Query executed in 126.25ms, CPU: 6.12%, Memory: 2142.88MB (13.37%)
2025-10-22 10:46:04 - INFO - Sample result (48 rows total):
            artist_s            song time_signature  popularity  popularity_rank
0      Billie Eilish           H.M.T            4/4         100                1
1  Sabrina Carpenter  Safe and Sound            4/4          99                2
2  Sabrina Carpenter    Swing My Way            4/4          99                3
3  Sabrina Carpenter        Wildside            4/4          99                4
4  Sabrina Carpenter  I Cant Stop Me            4/4          99                5
2025-10-22 10:46:04 - INFO - Running query: -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH a...
2025-10-22 10:46:04 - INFO - Transpiled query: from -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(
      regexp_replace(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), 
      '%%d %%B %%Y'
    )) AS release_year
  FROM 
    data
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
ORDER BY artist_s, release_year to /* WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION */ WITH artist_release_years AS (SELECT DISTINCT artist_s, EXTRACT(YEAR FROM strptime(REGEXP_REPLACE(release_date, '(\\d+)(st|nd|rd|th)', '\\1', 'g'), '%%d %%B %%Y')) AS release_year FROM data), artist_release_gaps AS (SELECT artist_s, release_year, lagInFrame(release_year, 1) OVER (PARTITION BY artist_s ORDER BY release_year) AS previous_release_year /* Get the release year of the previous song for this artist */ FROM artist_release_years) SELECT artist_s, previous_release_year, release_year FROM artist_release_gaps ORDER BY artist_s, release_year
2025-10-22 10:46:06 - ERROR - Query execution failed: Orig exception: Code: 42. DB::Exception: Number of arguments for function replaceRegexpAll doesn't match: passed 4, should be 3: In scope artist_release_years AS (SELECT DISTINCT artist_s, toYear(strptime(regexp_replace(release_date, '(\\d+)(st|nd|rd|th)', '\\1', 'g'), '%d %B %Y')) AS release_year FROM data). (NUMBER_OF_ARGUMENTS_DOESNT_MATCH) (version 25.6.4.12 (official build))

2025-10-22 10:46:08 - INFO - Query FAILED in 34.22ms, CPU: 7.08%, Memory: 2124.06MB (13.25%)
2025-10-22 10:46:13 - INFO - Stopped container: test-clickhouse_cpu10_mem32G
2025-10-22 10:46:13 - INFO - Removed container: test-clickhouse_cpu10_mem32G
2025-10-22 10:46:13 - INFO - 
===== BENCHMARK SUMMARY =====
2025-10-22 10:46:13 - INFO - 
Failed Queries by Database Type:
database_type
ClickHouseHandler    2
DuckDBHandler        1
MySQLHandler         1
PostgresHandler      1
Name: True, dtype: int64
2025-10-22 10:46:13 - INFO - 
Performance Summary:
                  execution_time_ms                            cpu_usage_percent memory_usage_mb disk_read_mb disk_write_mb
                               mean         min            max              mean            mean          sum           sum
database_type                                                                                                              
ClickHouseHandler       1597.063661   20.261049   11078.889132          9.050974     2129.747070          0.0           0.0
DuckDBHandler            410.592556    4.271984    2187.669992          0.008608        9.019531          0.0           0.0
MySQLHandler           16645.424922   38.580894  116168.283939          2.964082     1687.559896          0.0           0.0
PostgresHandler        48427.546872  116.693974  428222.448826         10.513842     1367.471354          0.0           0.0
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* TOP 1000 ROWS */ SELECT * FROM data LIMIT 1000...': DuckDBHandler (32.26ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* COUNT ALL */ SELECT COUNT(*) FROM data...': DuckDBHandler (4.27ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DI...': MySQLHandler (2085.24ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* DISTINCT VALUES IN COLUMN 'album' */ SELECT DIS...': MySQLHandler (3001.79ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* STATS (AVG, SUM, MIN, MAX) FOR COLUMN 'tempo' *...': DuckDBHandler (7.48ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* FILTER BY LIKE OPERATOR & 2 CONDITIONS */ SELEC...': DuckDBHandler (2187.67ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* SELF-JOIN ON 'artist' TO FIND DUPLICATE ARTISTS...': DuckDBHandler (219.19ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* WINDOW FUNCTION (LEAD) */ /* find next popular ...': MySQLHandler (12012.06ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* WINDOW FUNCTION WITH CTE */ /* top 10 songs by ...': MySQLHandler (8042.31ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DI...': PostgresHandler (222.33ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* DISTINCT VALUES IN COLUMN 'album' */ SELECT DIS...': PostgresHandler (967.60ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* WINDOW FUNCTION (LEAD) */ /* find next popular ...': PostgresHandler (2188.09ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* WINDOW FUNCTION WITH CTE */ /* top 10 songs by ...': PostgresHandler (800.47ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* DISTINCT VALUES & COUNT OF 'genre' */ SELECT DI...': DuckDBHandler (16.17ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* DISTINCT VALUES IN COLUMN 'album' */ SELECT DIS...': DuckDBHandler (162.70ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* WINDOW FUNCTION (LEAD) */ /* find next popular ...': DuckDBHandler (1011.48ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* WINDOW FUNCTION WITH CTE */ /* top 10 songs by ...': DuckDBHandler (54.12ms)
2025-10-22 10:46:13 - INFO - 
Fastest for query '/* WINDOW FUNCTION WITH CTE */ /* top 10 songs by ...': ClickHouseHandler (126.25ms)
2025-10-22 10:46:13 - INFO - 
Queries that failed across all database types:
2025-10-22 10:46:13 - INFO - - -- WINDOW FUNCTION WITH CTE, STRING DATE MANIPULATION
WITH artist_release_years AS (
  SELECT DISTINCT
    artist_s,
    EXTRACT(year FROM strptime(
      regexp_replace(release_date, '(\d+)(st|nd|rd|th)', '\1', 'g'), 
      '%%d %%B %%Y'
    )) AS release_year
  FROM 
    data
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
ORDER BY artist_s, release_year
2025-10-22 10:46:13 - INFO - Benchmark results saved to database_benchmark_results3.csv