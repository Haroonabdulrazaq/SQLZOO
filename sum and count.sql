SELECT SUM(population)
FROM world

SELECT DISTINCT continent
FROM world

SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa'

SELECT COUNT(name)
FROM world
WHERE area >= 1000000

SELECT SUM(population)
FROM world
WHERE name IN ('Estonia','Latvia','Lithuania')