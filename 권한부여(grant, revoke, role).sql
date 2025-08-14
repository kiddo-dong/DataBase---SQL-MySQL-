/*
GRANT 권한[(속성)] ON 테이블 TO 사용자 [WITH GRANT OPTION]
*/

grant select on 고객 to hong;

-- public 사용으로 모든 사용자에게 부여
grant update, delete on 고객 to public;

-- 지정 속성에만 부여
grant update(등급, 적립금) on 고객 to Park;

-- 권한을 주는 권한까지 부여
grant select on 고객 to Lee with grant option;

grant create to song;

grant create view to shin;


/*
REVOKE 권한 ON 테이블 FROM 사용자 [CASCADE | RESTRICT]
*/

-- revoke select on 고객 from hong CASCADE;

-- revoke select on 고객 from hong restrict;

revoke create from hong;

/* role(역할) 부여

롤생성
create role 롤이름;

롤에 권한 부여
grant 권한 on 테이블명 to 롤이름

사용자에게 롤 부여
grant 롤이름 to 사용자

*/

create role role_1;

grant select, insert, delete on 고객 to role_1;

grant role_1 to hong;