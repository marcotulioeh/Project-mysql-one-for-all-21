SELECT COUNT(DISTINCT c.cancao) AS cancoes,
COUNT(DISTINCT a.artista) AS artistas,
COUNT(DISTINCT b.album) AS albuns
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS b;