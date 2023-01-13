-- 비상관 서브쿼리
SELECT
    StudentID, StudentName, Descript,
    (SELECT className FROM Student WHERE PersonID = 1)
FROM Classes;

SELECT * FROM Student
WHERE Price < (
    SELECT AVG(Price) FROM Student
);

SELECT
    StudentID, StudentName, Descript
FROM Classes
WHERE
    StudentID IN
    (SELECT StudentID FROM Student
    WHERE Price > 50);


'''
~ ALL : 서브쿼리의 모든 결과에 대해 ~하다
~ ANY : 서브쿼리의 하나 이상의 결과에 대해 ~하다
'''
SELECT * FROM Student
WHERE Price > ALL (
    SELECT Price FROM Student
    WHERE StudentID = 2
);

SELECT
    StudentID, StudentName, Descript
FROM Classes
WHERE
    StudentID = ANY
    (SELECT StudentID FROM Student
    WHERE Price > 50);


-- 상관 서브쿼리
SELECT
    PersonID, ProductName,
    (
        SELECT Studentries C
        WHERE C.StudentID = P.StudentID
    ) AS Studentucts P;

SELECT
  teacherName, Country, City,
  (
    SELECT COUNT(*) FROM Customers C
    WHERE C.Country = S.Country
  ) AS CustomersInTheCountry,
  (
    SELECT COUNT(*) FROM Customers C
    WHERE C.Country = S.Country 
      AND C.City = S.City
  ) AS CustomersInTheCity
FROM Suppliers S;










