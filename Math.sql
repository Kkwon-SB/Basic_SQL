-- 숫자관련 함수
ROUND  :  반올림
CEIL  :  올림
FLOOR  :  내림
ABS  :  절대값
GREATEST  :  (괄호 안에서) 가장 큰 값
LEAST  :  (괄호 안에서) 가장 작은 값
MAX  :  가장 큰 값
MIN  :  가장 작은 값
COUNT  :  갯수 (NULL값 제외)
SUM  :  총합
AVG  :  평균 값
POW(A, B), POWER(A, B)  :  A를 B만큼 제곱
SQRT  :  제곱근
TRUNCATE(N, n)  :  N을 소숫점 n자리까지 선택

SELECT
TRUNCATE(9876.5432, 0),  -->> 9876

TRUNCATE(9876.5432, 1),  -->> 9876.5
TRUNCATE(9876.5432, 2),  -->> 9876.54
TRUNCATE(9876.5432, 3),  -->> 9876.543

TRUNCATE(9876.5432, -1), -->> 9870
TRUNCATE(9876.5432, -2), -->> 9800
TRUNCATE(9876.5432, -3); -->> 9000







