"""
JOIN(INNER JOIN) - 내부 조인

양쪽 모두에 값이 있는 행(NOT NULL) 반환
'INNER '는 선택사항
"""
SELECT * FROM Menus C
JOIN Dishes P 
  ON C.MenuID = P.MenuID; 


SELECT C.MenuID, C.MenuName
FROM Menus C
JOIN Dishes P 
  ON C.MenuID = P.MenuID; 


"""
SELF JOIN - 같은 테이블끼리
"""
SELECT
  E1.StudentID, CONCAT_WS(' ', E1.FirstName, E1.LastName) AS Student,
  E2.StudentID, CONCAT_WS(' ', E2.FirstName, E2.LastName) AS NextStudent
FROM Students E1 JOIN Students E2
ON E1.StudentID + 1 = E2.StudentID;


"""
LEFT/RIGHT OUTER JOIN - 외부 조인
반대쪽에 데이터가 있든 없든(NULL), 선택된 방향에 있으면 출력 - 행 수 결정
'OUTER '는 선택사항
"""
SELECT
  E1.StudentID, CONCAT_WS(' ', E1.FirstName, E1.LastName) AS Student,
  E2.StudentID, CONCAT_WS(' ', E2.FirstName, E2.LastName) AS NextStudent
FROM Students E1
LEFT JOIN Students E2
ON E1.StudentID + 1 = E2.StudentID
ORDER BY E1.StudentID;

SELECT
  C.studentName, S.teacherName,
  C.City, C.Country
FROM students C
LEFT JOIN teachers S
ON C.City = S.City AND C.Country = S.Country;


"""
CROSS JOIN - 교차 조인
조건 없이 모든 조합 반환(A * B)
"""
SELECT
  E1.LastName, E2.FirstName
FROM Students E1
CROSS JOIN Students E2
ORDER BY E1.StudentID;



