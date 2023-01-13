"""
UNION	중복을 제거한 집합
UNION ALL	중복을 제거하지 않은 집합
"""
-- 합집합
SELECT StudentName AS Name, City, Country, 'Student'
FROM Students
UNION
SELECT teacherName AS Name, City, Country, 'teacher'
FROM teachers
ORDER BY Name;

SELECT MenuID AS ID FROM Menus
WHERE MenuID > 4
UNION
SELECT customerID AS ID FROM customers
WHERE customerID % 2 = 0;

-- 교집합
SELECT MenuID AS ID
FROM Menus C, customers E
WHERE 
  C.MenuID > 4
  AND E.customerID % 2 = 0
  AND C.MenuID = E.customerID;

-- 차집합
SELECT MenuID AS ID
FROM Menus
WHERE 
  MenuID > 4
  AND MenuID NOT IN (
    SELECT customerID
    FROM customers
    WHERE customerID % 2 = 0
  );

-- 대칭차집합
SELECT ID FROM (
  SELECT MenuID AS ID FROM Menus
  WHERE MenuID > 4
  UNION ALL
  SELECT customerID AS ID FROM customers
  WHERE customerID % 2 = 0
) AS Temp 
GROUP BY ID HAVING COUNT(*) = 1;






