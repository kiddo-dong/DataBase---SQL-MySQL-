/*
DML 데이터 삭제
즉, 튜플을 제거

DELETE FROM 테이블명 WHERE [조건명]
*/

SET SQL_SAFE_UPDATES = 0;

#7-52
delete
from 주문
where 주문일자 = '2022-05-22';

select * from 주문;

# 7-54 (모든 튜플 삭제)
delete
from 주문;

select * from 주문;