CREATE TABLE IF NOT EXISTS album (
Album_ID SERIAL PRIMARY KEY, 
Name VARCHAR(60) NOT NULL, 
Year_realise date
);

CREATE TABLE IF NOT EXISTS track (
Track_ID SERIAL PRIMARY KEY, 
name_track VARCHAR(60) NOT NULL, 
Time INTEGER,
Album_ID INTEGER REFERENCES album (Album_ID)
);

CREATE TABLE IF NOT EXISTS genre (
Genre_ID SERIAL PRIMARY KEY, 
name_genre VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS collection (
Collection_ID SERIAL PRIMARY KEY, 
Name VARCHAR(60) NOT NULL,
Year_realise date
);

CREATE TABLE IF NOT EXISTS track_collection (
Track_ID INTEGER REFERENCES track(Track_ID),
Collection_ID INTEGER REFERENCES collection (Collection_ID),
CONSTRAINT pk PRIMARY KEY (Track_ID, Collection_ID)
);

CREATE TABLE IF NOT EXISTS executor (
Executor_ID SERIAL PRIMARY KEY, 
Name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS album_executor (
Album_ID INTEGER REFERENCES album(Album_ID),
Executor_ID INTEGER REFERENCES executor(Executor_ID),
CONSTRAINT pk1 PRIMARY KEY (Album_ID, Executor_ID)
);

CREATE TABLE IF NOT EXISTS genre_executor (
Genre_ID INTEGER REFERENCES genre(Genre_ID),
Executor_ID INTEGER REFERENCES executor(Executor_ID),
CONSTRAINT pk2 PRIMARY KEY (Executor_ID,  Genre_ID)
);








 