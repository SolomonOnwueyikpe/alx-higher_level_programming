--  a script that lists all genres from hbtn_0d_tvshows and displays the number of shows linked to each
SELECT tgs.name AS genre, COUNT(tg.genre_id) AS number_shows
FROM tv_shows AS ts
LEFT JOIN tv_show_genres AS tg
ON ts.id = tg.show_id
LEFT JOIN tv_genres AS tgs
ON tg.genre_id = tgs.id
WHERE tg.genre_id IS NOT NULL
GROUP BY tgs.name ORDER BY number_shows DESC;
