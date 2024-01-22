select name, time from track
where time = (select max(time) from track) 

SELECT name FROM collection c 
WHERE year_realise BETWEEN '01.01.2018' AND '31.12.2020'

SELECT name FROM executor e 
WHERE name NOT LIKE '% %'

SELECT name_track FROM track t 
WHERE name_track LIKE '%my%'

SELECT year_realise, count(track_id) from album a 
JOIN track t ON t.album_id = a.album_id 
WHERE year_realise BETWEEN '01.01.2019' AND '31.12.2020'
GROUP BY a.year_realise

SELECT g.name_genre, COUNT(e.name) FROM genre g 
LEFT JOIN genre_executor ge ON ge.genre_id  = g.genre_id
LEFT JOIN executor e ON e.executor_id = ge.executor_id
GROUP by g.name_genre;

SELECT year_realise, count(track_id) FROM album a 
JOIN track t ON t.album_id = a.album_id 
WHERE year_realise BETWEEN '01.01.2019' AND '31.12.2020'
GROUP BY a.year_realise;

SELECT name, avg(time) FROM album a 
JOIN track t ON t.album_id = a.album_id 
GROUP BY a.name

SELECT name FROM executor e WHERE e.name NOT IN
	(SELECT e.name FROM executor e 
	LEFT JOIN album_executor ae ON ae.executor_id = e.executor_id 
	LEFT JOIN album a ON a.album_id = ae.album_id
	WHERE a.year_realise BETWEEN '01.01.2020' AND '31.12.2020')

SELECT c.name FROM collection c 
LEFT JOIN track_collection tc ON tc.collection_id = c.collection_id 
LEFT JOIN track t ON tc.track_id = t.track_id
LEFT JOIN album a ON t.album_id = a.album_id
LEFT JOIN album_executor ae ON ae.album_id = a.album_id 
LEFT JOIN executor e ON ae.executor_id = e.executor_id 
WHERE e.name = 'Ispolnitel'





