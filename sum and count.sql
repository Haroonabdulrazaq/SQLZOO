SELECT SUM(population)
FROM world

SELECT DISTINCT continent
FROM world

SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa'