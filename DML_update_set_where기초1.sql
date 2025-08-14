/* DML 데이터의 수정
저장된 튜플의 값을 수정

 UPDATE 테이블명 SET [수정할값] 속성1 = 인스턴스1, 속성2 = 인스턴스2..... where [조건]
*/
 

#7-49
update 제품
set 제품명 = '통큰파이'
where 제품번호 ='p03';
 
select * from 제품;
 
 
SET SQL_SAFE_UPDATES = 0;

UPDATE 제품
SET 단가 = 단가 * 1.1
WHERE 제품번호 IS NOT NULL;  -- 또는 기본키 기준

select * from 제품;

update 주문
set 수량 = 5
where 주문고객 in (
	select 고객아이디
    from 고객
    where 고객이름 = '정소화'
);
select * from 주문;