SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Romania')
      