SELECT id, title
 FROM movie
 WHERE yr=1962

 SELECT yr
 FROM movie
 WHERE title = 'Citizen Kane'

 SELECT id,title,yr
 FROM movie
 WHERE title LIKE 'Star Trek%'
ORDER BY yr

SELECT id
 FROM actor
 WHERE name='Glenn Close' 

 SELECT id
 FROM movie
 WHERE title = 'Casablanca' 

 SELECT name 
FROM actor
INNER JOIN casting 
ON actor.id = actorid
INNER JOIN movie
ON movie.id = movieid
WHERE movieid = 11768

SELECT name 
FROM actor
INNER JOIN casting 
ON actor.id = actorid
INNER JOIN movie
ON movie.id = movieid
WHERE title = 'Alien'

SELECT title 
FROM movie
INNER JOIN casting 
ON movie.id = movieid
INNER JOIN actor
ON actor.id = actorid
WHERE name = 'Harrison Ford' 

SELECT title 
FROM movie
INNER JOIN casting 
ON movie.id = movieid
INNER JOIN actor
ON actor.id = actorid
WHERE name = 'Harrison Ford' AND ord !=1

SELECT title,name FROM casting
JOIN actor
ON actor.id = actorid
INNER JOIN movie
ON movie.id = movieid
WHERE yr = 1962 AND ord =1

SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2

SELECT title, name 
FROM movie JOIN casting 
ON (movie.id = movieid AND ord=1)
JOIN actor ON (actor.id = actorid)
WHERE movie.id IN(SELECT movieid 
FROM casting WHERE actorid IN(
SELECT actor.id FROM actor
WHERE name ='Julie Andrews'
))

SELECT name FROM
actor JOIN casting ON(actor.id= actorid)
WHERE ord=1
GROUP BY name
HAVING COUNT(actorid)>=15
ORDER BY name

SELECT title, COUNT(actorid)
FROM casting
JOIN movie ON movie.id=movieid
JOIN actor   ON actorid=actor.id
WHERE yr = 1978
GROUP BY title
ORDER BY COUNT(actorid) DESC, title