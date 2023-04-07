-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT players.id, players.first_name, players.last_name, sum(stats.hits)
FROM players INNER JOIN stats ON players.id = stats.player_id
--WHERE players.last_name = "Bonds" and players.first_name = "Barry"
group by players.id, players.first_name, players.last_name
order by sum(stats.hits) asc
;
