SELECT c.cancao AS nome,
COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON h.usuario_id = u.usuario_id
WHERE u.plano_id IN(1, 3)
GROUP BY cancao;