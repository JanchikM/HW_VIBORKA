INSERT INTO album (name, year_realise)
VALUES ('Moskow', '01.01.2022'), ('Paris', '01.01.2019'), ('London', '01.01.2017')

INSERT INTO track (name_track, time, album_id)
VALUES ('techno', 360, 1), ('moroz', 215, 3), ('dance', 400, 2), ('live', 180, 2), ('smile', 112, 1), ('my_rules', 134, 2)

INSERT INTO collection (name, year_realise)
VALUES ('sbornik_2023', '01.01.2023'), ('sbornik_2019', '01.01.2019'), ('sbornik_2022', '01.01.2022'), ('sbornik_2018', '01.01.2018')

INSERT INTO executor (name)
VALUES ('Super_ispolnitel'), ('My_ispolnitel'), ('Ispolnitel'), ('Popular_ispolnitel')

INSERT INTO genre (name_genre)
VALUES ('Hip-Hop'), ('Rock'), ('Chanson')

INSERT INTO genre_executor (genre_id, executor_id)
VALUES (1, 1), (3, 1), (2, 4), (3, 2)

INSERT INTO album_executor (album_id, executor_id)
VALUES (2, 1), (3, 3), (1, 4), (1, 2)

INSERT INTO track_collection (track_id, collection_id)
VALUES (1, 4), (2, 1), (3, 3), (4, 2), (5, 2), (6, 4)

