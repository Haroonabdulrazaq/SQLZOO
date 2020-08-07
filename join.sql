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

SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON (teamid=id)
 WHERE gtime<=10

 SELECT mdate,teamname
FROM game JOIN eteam ON (team1= eteam.id)
WHERE coach ='Fernando Santos'

SELECT player 
FROM game JOIN goal ON(id=matchid)
WHERE stadium = 'National Stadium, Warsaw'

SELECT DISTINCT player 
  FROM game JOIN goal ON id=matchid
    WHERE teamid!='GER' AND (team1='GER' XOR team2='GER')

SELECT teamname, COUNT(gtime)
FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname