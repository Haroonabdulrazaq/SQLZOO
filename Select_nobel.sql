SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

   SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein'