SELECT u.usuario AS usuario,
COUNT(h.data_reproducao) AS qtde_musicas_ouvidas,
ROUND(SUM(c.duracao_segundos/60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON SpotifyClone.h.cancao_id = SpotifyClone.c.cancao_id
GROUP BY u.usuario
ORDER BY u.usuario;