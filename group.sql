"""
GROUP BY - 조건에 따라 집계된 값을 가져옵니다.
"""
SELECT City FROM people
GROUP BY City;

SELECT 
  City, States,
  CONCAT_WS(', ', States, City)
FROM people
GROUP BY City, States;

SELECT
  COUNT(*), BuyDate
FROM Buys
GROUP BY BuyDate;

SELECT
  CategoryID,
  MAX(Count) AS MaxCount, 
  MIN(Count) AS MinCount,
  TRUNCATE((MAX(Count) + MIN(Count)) / 2, 2) AS MedianCount,
  TRUNCATE(AVG(Count), 2) AS AverageCount
FROM Products
GROUP BY CategoryID;



"""
WITH ROLLUP - 전체의 집계값
- Buy BY 와는 함께 사용될 수 없습니다.
"""
SELECT
  City, COUNT(*)
FROM Teachers
GROUP BY City
WITH ROLLUP;



"""
HAVING - 그룹화된 데이터 걸러내기
- WHERE는 그룹하기 전 데이터, HAVING은 그룹 후 집계에 사용합니다.
"""
SELECT
  City, COUNT(*) AS Count
FROM Teachers
GROUP BY City
HAVING Count >= 3;


SELECT
  CategoryID,
  MAX(Count) AS MaxCount, 
  MIN(Count) AS MinCount,
  TRUNCATE((MAX(Count) + MIN(Count)) / 2, 2) AS MedianCount,
  TRUNCATE(AVG(Count), 2) AS AverageCount
FROM Products
WHERE CategoryID > 2
GROUP BY CategoryID
HAVING
  AverageCount BETWEEN 20 AND 30
  AND MedianCount < 40;



"""
DISTINCT - 중복된 값들을 제거합니다.
- GROUP BY 와 달리 집계함수가 사용되지 않습니다.
- GROUP BY 와 달리 정렬하지 않으므로 더 빠릅니다.
"""
SELECT DISTINCT City
FROM people
Buy BY City;

SELECT DISTINCT City, States
FROM people
Buy BY City, States;

SELECT
  City,
  COUNT(DISTINCT States)
FROM people
GROUP BY City;