-- 7. 사칙연산
-- 문자열에 사칙연산을 가하면 0으로 인식
-- 숫자로 구성된 문자열은 숫자로 자동인식
-- MySQL의 기본 사칙연산자는 대소문자 구분을 하지 않는다.

SELECT 'Apple' + 3;
-->> 3
SELECT '01' + '2' * 3; 
-->> 7
SELECT 'A' = 'a';
-->> True



-- 8. 기타 연산자

--BETWEEN {MIN} AND {MAX}	두 값 사이에 있다.
--NOT BETWEEN {MIN} AND {MAX}	두 값 사이가 아닌 곳에 있다.
SELECT 'banana' BETWEEN 'Apple' AND 'camera'; -- 맨앞 문자 b A c 만 비교, 숫자로 인식하면 A-Z 방향으로 커지는 순서
-->> 1 (True)

SELECT * FROM OrderDetails
WHERE ProductID BETWEEN 1 AND 4;

-- OrderDetails테이블에서 ProductID의 값이 1 이상 4 이하인 데이터를 가져와라
SELECT * FROM Customers
WHERE CustomerName BETWEEN 'b' AND 'c';


-- IN (...)	괄호 안의 값들 가운데 있다.
-- NOT IN (...)	괄호 안의 값들 가운데 없다.
SELECT 1 + 2 IN (2, 3, 4)
-->> 1
SELECT 'Hello' IN (1, TRUE, 'hello') 
-->> 1 (대소문자 구분하지 않음)

SELECT * FROM Customers
WHERE City IN ('Torino', 'Paris', 'Portland', 'Madrid') 
-- Customers테이블에서 City컬럼의 데이터가 괄호안에 해당되는 데이터를 가져와라


-- LIKE '... % ...'	0~N개 문자를 가진 패턴
-- LIKE '... _ ...'	_ 갯수만큼의 문자를 가진 패턴
SELECT
  'HELLO' LIKE 'hel%', --> 1 (hel로 시작하는 문자패턴)
  'HELLO' LIKE 'H%',   --> 1 (H로 시작하는 문자패턴)
  'HELLO' LIKE 'H%O',  --> 1 (H로 시작해서 O로 끝나는 문자패턴)
  'HELLO' LIKE '%O',   --> 1 (O으로 끝나는 문자패턴)
  'HELLO' LIKE '%HELLO%',  --> 1 (HELLO문자열에 앞뒤로 N개의 문자를 가지는 문자패턴)
  'HELLO' LIKE '%H',   --> 0 (H로 끝나는 문자패턴)
  'HELLO' LIKE 'L%'    --> 0 (L로 시작하는 문자패턴)

SELECT
  'HELLO' LIKE 'HEL__',  --> 1 (HEL + 2개 문자를 가지는 문자패턴)
  'HELLO' LIKE 'h___O',  --> 1 (h 와 O 사이에 + 3개 문자를 가지는 문자패턴)
  'HELLO' LIKE 'HE_LO',  --> 1 (HE 와 LO 사이에 + 1개 문자를 가지는 문자패턴)
  'HELLO' LIKE '_____',  --> 1 (5개 문자를 가지는 문자패턴)
  'HELLO' LIKE '_HELLO', --> 0 (hello 앞에 + 1개 문자를 가지는 문자패턴)
  'HELLO' LIKE 'HEL_',   --> 0 (hel 뒤에 + 1개 문자를 가지는 문자패턴)
  'HELLO' LIKE 'H_O'     --> 0 (ho 사이에 + 1개 문자를 가지는 문자패턴)

SELECT * FROM Employees
WHERE Notes LIKE '%economics%'
-- Employees 테이블에서 Notes컬럼의 데이터 중 economics문자를 가지는 모든 데이터를 가져와라














