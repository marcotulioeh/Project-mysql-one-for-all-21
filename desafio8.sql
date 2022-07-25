SELECT a.artista AS artista,
b.album AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS b
ON a.artista_id = b.artista_id
LIMIT 2;