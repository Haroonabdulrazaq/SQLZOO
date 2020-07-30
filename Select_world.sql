SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population >=200000000

SELECT name, gdp/population
 FROM world
 WHERE population >= 200000000

 SELECT name, population/1000000  
FROM world
WHERE continent = 'South America'