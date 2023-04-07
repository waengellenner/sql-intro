-- What are the first and last names of the players who 
-- played for the 2020 Chicago Cubs?

-- Hint: combine WHERE clauses using AND, e.g.
-- WHERE column1 = expression1
-- AND column2 = expression2

-- Expected result: 47 rows starting with
--
-- +------------+-----------+
-- | Jason      | Adam      |
-- | Albert     | Almora    |
-- | Adbert     | Alzolay   |
-- | Javier     | Baez      |
-- | David      | Bote      |
-- | Rex        | Brothers  |
-- | Kris       | Bryant    |
-- | Victor     | Caratini  |
-- | Andrew     | Chafin    |
-- | Tyler      | Chatwood  |
-- | Willson    | Contreras |
-- | Yu         | Darvish   |
-- | Matt       | Dermody   |
-- | Billy      | Hamilton  |
-- | Ian        | Happ      |

SELECT players.first_name, players.last_name
from players inner join stats inner join teams
where players.id = stats.player_id AND stats.team_id = teams.id
and teams.name = "Chicago Cubs" AND year = 2020
ORDER BY players.last_name;
