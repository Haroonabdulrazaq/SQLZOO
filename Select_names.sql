  SELECT name FROM world
  WHERE name LIKE 'Y%'

  SELECT name FROM world
  WHERE name LIKE '%y'


  SELECT name FROM world
  WHERE name LIKE '%x%'

  SELECT name FROM world
  WHERE name LIKE '%land'

  SELECT name FROM world
  WHERE name LIKE 'C%ia'

  SELECT name FROM world
  WHERE name LIKE '%oo%'

  SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

  SELECT name FROM world
 WHERE name LIKE '_t%'
 ORDER BY name

 SELECT name FROM world
 WHERE name LIKE '%o__o%'

 SELECT name FROM world
 WHERE name LIKE '____'

/*HARD ASPECT OF THE TEST OPTIONAL*/

-- return where country is spelled the same as capital
 SELECT name
  FROM world
 WHERE name LIKE capital

-- return where capital is spelled the same as  countryname + City 
 SELECT name
  FROM world
 WHERE capital LIKE concat(name,' City')