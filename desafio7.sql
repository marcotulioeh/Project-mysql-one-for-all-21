SELECT a.artista AS artista,
b.album AS album,
COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS b
ON a.artista_id = b.artista_id
INNER JOIN SpotifyClone.seguidores AS s
ON a.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;