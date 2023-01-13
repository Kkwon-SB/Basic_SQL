UPPER	모두 대문자로
LOWER	모두 소문자로
LEFT	왼쪽부터 N글자
RIGHT	오른쪽부터 N글자
TRIM	양쪽 공백 제거
LTRIM	왼쪽 공백 제거
RTRIM	오른쪽 공백 제거
REPLACE(Q, A, B)	Q중 A를 B로 변경
INSTR(Q, s)	Q중 s의 첫 위치 반환, 없을 시 0
CAST(Q, T)	Q를 T 자료형으로 변환


CONCAT(...)	괄호 안의 내용 이어붙임
SELECT CONCAT('My', ' ', 'name is ', 'Robin')
-->> My name is Robin

CONCAT_WS(S, ...)	괄호 안의 내용 S로 이어붙임
SELECT CONCAT_WS(':', 11, 34, 47, 'AM')
-->> 11:34:47:AM


SUBSTR	주어진 값에 따라 문자열 자름
SELECT
SUBSTR('123456789', 3),     -->> 3456789
SUBSTR('123456789', 3, 2),  -->> 34
SUBSTR('123456789', -4),    -->> 6789
SUBSTR('123456789', -4, 2); -->> 67


LENGTH	문자열의 바이트 길이
CHAR_LENGTH	문자열의 문자 길이
SELECT
LENGTH('apple'),      -->> 5
LENGTH('안녕'),       -- 6
CHAR_LENGTH('apple'); -->> 5
CHAR_LENGTH('안녕'),  -- 2


LPAD(Q, N, P) : Q가 N글자가 될 때까지 P를 이어붙임
RPAD(Q, N, P) : Q가 N글자가 될 때까지 P를 이어붙임
SELECT
  RPAD('car', 10, '+'), --> car+++++++
  LPAD('car', 10, '+'), --> +++++++car
  RPAD('banana', 7, '-'), --> banana-
  LPAD('banana', 7, '-'); --> -banana
















