SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Romania')

      SELECT name FROM world
WHERE continent='Europe' AND gdp/population >(
SELECT gdp/population FROM world
WHERE name = 'United Kingdo