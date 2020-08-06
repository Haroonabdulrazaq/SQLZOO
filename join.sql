SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

  SELECT id,stadium,team1,team2
  FROM game
WHERE id = 1012

SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
WHERE teamid ='GER'

SELECT team1, team2, player
FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%'