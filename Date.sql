"""
CURDATE	현재 날짜 반환
CURTIME	현재 시간 반환
NOW	현재 시간과 날짜 반환
"""

SELECT CURDATE(), CURTIME(), NOW();
--> 2023-01-13	23:53:49	2023-01-13 23:53:49 


DATE	문자열에 따라 날짜 생성 --> 2023-01-13 23:53:49 => 2023-01-13  
TIME	문자열에 따라 시간 생성 --> 2023-01-13 23:53:49 => 23:53:49

'''
YEAR	주어진 DATETIME값의 년도 반환
MONTHNAME	주어진 DATETIME값의 월(영문) 반환
MONTH	주어진 DATETIME값의 월 반환
WEEKDAY	주어진 DATETIME값의 요일값 반환(월요일: 0)
DAYNAME	주어진 DATETIME값의 요일명 반환
DAYOFMONTH, DAY	주어진 DATETIME값의 날짜(일) 반환

HOUR	주어진 DATETIME의 시 반환
MINUTE	주어진 DATETIME의 분 반환
SECOND	주어진 DATETIME의 초 반환
'''
SELECT
  NOW(),
  YEAR(NOW()) AS YEAR,
  MONTHNAME(NOW()) AS MONTHNAME,
  MONTH(NOW()) AS MONTH,
  WEEKDAY(NOW()) AS WEEKDAY,
  DAYNAME(NOW()) AS DAYNAME,
  DAY(NOW()) AS DAY;
--> 2023-01-13 23:56:56	2023	January	1	4	Friday	13


SELECT
  HOUR(NOW()), MINUTE(NOW()), SECOND(NOW());
-->  23	58	27

'''
ADDDATE, DATE_ADD	시간/날짜 더하기
SUBDATE, DATE_SUB	시간/날짜 빼기
DATE_DIFF	두 시간/날짜 간 일수차
TIME_DIFF	두 시간/날짜 간 시간차
LAST_DAY	해당 달의 마지막 날짜
'''



'''
DATE_FORMAT	시간/날짜를 지정한 형식으로 반환
형식	설명
%Y	년도 4자리
%y	년도 2자리
%M	월 영문
%m	월 숫자
%D	일 영문(1st, 2nd, 3rd...)
%d, %e	일 숫자 (01 ~ 31)
%T	hh:mm:ss
%r	hh:mm:ss AM/PM
%H, %k	시 (~23)
%h, %l	시 (~12)
%i	분
%S, %s	초
%p	AM/PM
'''
SELECT
  DATE_FORMAT(NOW(), '%M %D, %Y %T'), --> January 13th, 2023 23:59:28
  DATE_FORMAT(NOW(), '%y-%m-%d %h:%i:%s %p'), --> 23-01-13 11:59:28 PM	
  DATE_FORMAT(NOW(), '%Y년 %m월 %d일 %p %h시 %i분 %s초'); --> 2023년 01월 13일 PM 11시 59분 28초








