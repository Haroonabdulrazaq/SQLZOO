SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Romania')

SELECT name FROM world
WHERE continent='Europe' AND gdp/population >(
SELECT gdp/population FROM world
WHERE name = 'United Kingdom')

SELECT name, continent
FROM world
WHERE 
continent IN (SELECT continent 
      FROM world
      WHERE name = 'Australia' OR name = 'Argentina') ORDER BY name

 SELECT name,population
FROM world
WHERE population > (
                   SELECT population
                   FROM world
                   WHERE name='Canada') AND
       population < (
                   SELECT population
                   FROM world
                   WHERE name='Poland')

   SELECT name, concat(ROUND(100*population/(SELECT population FROM world WHERE name= 'Germany'),0),'%') As 'percentage'
FROM world WHERE continent ='Europe'

SELECT name
FROM world
WHERE gdp > ALL (SELECT gdp
 FROM world

 SELECT continent, name, population FROM world x
  WHERE population >= ALL
    (SELECT population FROM world y
        WHERE y.continent=x.continent
          AND population>0)
 WHERE continent= 'Europe' AND gdp > 0 )  
               