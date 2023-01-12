-- 1. 테이블의 모든 내용 보기
-- *(asterisk)는 테이블의 모든 컬럼을 의미.
SELECT * FROM Students;

-- 2. 원하는 column(열)만 골라서 보기
SELECT StudentName FROM Students;

SELECT StudentName, ContactName, Country
FROM Students;

-- 테이블의 컬럼이 아닌 값도 선택할 수 있다.
SELECT
  StudentName, 1, 'Apple', NULL
FROM Students;


-- 3. 원하는 조건의 row(행)만 걸러서 보기
-- WHERE 구문 뒤에 조건을 붙여 원하는 데이터만 가져올 수 있다.
SELECT * FROM Orders
WHERE EmployeeID = 3;

SELECT * FROM OrderDetails 
WHERE Quantity < 5;

-- 4. 원하는 순서로 데이터 가져오기
-- ORDER BY 구문을 사용해서 특정 컬럼을 기준으로 데이터를 정렬할 수 있다.
SELECT * FROM Students
ORDER BY ContactName;

SELECT * FROM OrderDetails
ORDER BY ProductID ASC, Quantity DESC;

-- 5. 원하는 만큼만 데이터 가져오기
-- LIMIT {가져올 갯수} 또는 LIMIT {건너뛸 갯수}, {가져올 갯수} 를 사용하여, 원하는 위치에서 원하는 만큼만 데이터를 가져올 수 있습니다.
SELECT * FROM Students
LIMIT 10; -- 처음 10개

SELECT * FROM Students
LIMIT 0, 10; -- 0번째 부터 10개(위랑 같음)

SELECT * FROM Students
LIMIT 30, 10; --30번째 부터 10개


-- 6. 원하는 별명(alias)으로 데이터 가져오기
SELECT
  StudentId AS ID,
  StudentName AS NAME,
  Address AS ADDR
FROM Students;

SELECT
  StudentId AS '아이디',
  StudentName AS '학생명',
  Address AS '주소'
FROM Students;

-- All
SELECT
  StudentID AS '아이디',
  StudentName AS '학생명',
  City AS '도시',
  Country AS '국가'
FROM Students
WHERE
  City = 'Suwon' OR Country = 'Korea'
ORDER BY StudentName
LIMIT 0, 5;