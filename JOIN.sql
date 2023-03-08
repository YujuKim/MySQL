
CREATE DATABASE shopdb;
USE shopdb;

CREATE TABLE userTBL(
	username CHAR(3) NOT NULL,
    birthYear INT NOT NULL,
    addr CHAR(2) NOT NULL,
    mobile CHAR(13) NOT NULL,
    PRIMARY KEY (username)
);

CREATE TABLE buyTBL(
	username CHAR(3) NOT NULL,
    prodName CHAR(3) NOT NULL,
    price INT NOT NULL,
    amount INT NOT NULL,
    FOREIGN KEY(username) REFERENCES userTBL(username)
);


insert into userTBL values('이승기', 1987, '서울', '010-1234-1234');
insert into userTBL values('홍길동', 1911, '부산', '010-2222-3333');
insert into userTBL values('이순신', 1999, '대구', '010-3333-4444');

insert into buyTBL values('이승기', '운동화', 50, 1);
insert into buyTBL values('이승기', '노트북', 150, 1);
insert into buyTBL values('홍길동', '책', 10, 5);
insert into buyTBL values('홍길동', '모니터', 200, 2);
insert into buyTBL values('이순신', '청바지', 40, 1);
insert into buyTBL values('이순신', '책', 10, 3);

-- 부모 테이블userTBL에 현재 야스오는 없는 사람이기에 오류
insert into buyTBL values('야스오', '책', 10, 3);

select * from userTBL;
select * from buyTBL;

-- inner join
select *
from userTBL
inner join buyTBL
on userTBL.username = buyTBL.username;

-- left join
select *
from userTBL
left join buyTBL
on userTBL.username = buyTBL.username;

-- 야스오 회원 가입
insert into userTBL(username, birthYear, addr, mobile)
values('야스오',2020,'부산','010-1234-1234');

select *
from userTBL
left join buyTBL
on userTBL.username = buyTBL.username
where buyTBL.username is not null;

-- AS(별칭) 사용해 다시 inner join
select *
from userTBL as U
inner join buyTBL as B
on U.username = B.username;

-- AS(별칭) 사용해 left join, left join is not null 작성해보기
select *
from userTBL as U
left join buyTBL as B
on U.username = B.username;

select *
from userTBL as U
left join buyTBL as B
on U.username = B.username
where B.username is not null;

-- 기준 테이블 선정
-- 기준 테이블을 무엇으로 하냐에 따라 결과 집합이 다를 수 있다.
-- 기준 테이블 선정 기준은 작은 데이터를 기준으로 하는 것이 좋다.
select *
from buyTBL as b
left join userTBL as u
on b.username = u.username;

-- right join 
select u.username, b.prodName, b.price, b.amount
from userTBL as u
right join buyTBL as b
on u.username = b.username;


select 'aaaa';

-- 함수 사용해 보기 
select u.username, b.prodName, 
	b.price, b.amount, (b.price * b.amount) as '총구입금액'
from userTBL as u
right join buyTBL as b
on u.username = b.username;

-- 문제1. 성이 이씨이면서 태어난 년도가 1999년인 회원의 총 구입금액 조회
select prodname, (b.price * b.amount) as '총 구입금액'
from buyTBL as b
right join userTBL as u
on u.username = b.username
where u.username like '이%' and u.birthYear=1999;

-- 문제2. 기준 테이블은 userTBL로 하고 LEFT JOIN을 사용하여 
-- 주문자 이름과, 주소, 전화번호, 상품 이름, 가격, 주문 수량 조회 (단, 주문 정보가 없는 경우 출력하지 않음)
select u.username, u.addr, u.mobile, b.prodname, b.price, b.amount
from userTBL as u
left join buyTBL as b
on u.username = b.username
where b.username is not null;

-- 문제3. LEFT JOIN 을 사용하여 NULL 값도 확인할 수 있게 출력 
select *
from userTBL as u
left join buyTBL as b
on u.username = b.username;

-- 문제4. userTBL 기준으로 INNER JOIN하고 buyTBL에서 수량이 3개 이상인 데이터만 조회해라
select *
from userTBL as u
inner join buyTBL as b
on u.username = b.username
where b.amount >=3;

-- 5. buyTBL 기준으로 RIGHT JOIN하고 username이 '이승기'이거나 '야스오'이면서 
-- userTBL의 username이 null이 아닌 데이터를 조회해라
select *
from buyTBL as b
right join userTBL as u
on b.username = u.username
where (b.username ='이승기' or '야스오')
and u.username is not null;

-- 6. 기준 테이블로 buyTBL을 사용해서 LEFT JOIN을 수행하고, 1999년에 태어난 사람은 총 몇 개의 물품을 구매했는지 조회
select b.amount
from buyTBL as b
left join userTBL as u
on b.username = u.username
where u.birthyear = 1999;

-- 7. 기준 테이블로 userTBL을 사용해서 INNER JOIN을 수행하고, 책을 구매한 사람들의 이름과 전화번호를 조회
select u.username, u.mobile
from userTBL as u
inner join buyTBL as b
on u.username = b.username
where b.prodname ='책';

-- 8. 기준 테이블로 buyTBL을 사용해서 RIGHT JOIN을 수행하고, '대구'에 사는 사람이 구매한 물품들을 출력하시오.
select b.prodname
from buyTBL as b
right join userTBL as u
on b.username = u.username
where u.addr ='대구';
