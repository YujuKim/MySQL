
SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();

-- -- -- -- String Function -- -- -- --
SELECT ASCII('Z');
SELECT CHAR_LENGTH('my sql test');
SELECT CONCAT('green', 'class', ' 100') AS title;
SELECT CONCAT_WS('✋', 'class', 'mysql', '홍길동');
SELECT FIND_IN_SET('q', 's,q,l'); -- q가 몇 번째 위치에 있는지 알려줌
SELECT FORMAT(2500.123, 0); -- 소수점 몇 번째 자리까지 출력할 건지 
SELECT LCASE('HELLO');
SELECT UCASE('hello');
SELECT TRIM(' my s q l '); -- 양 끝의 공백 제거
SELECT REPLACE(' my s q l ', ' ', ''); -- 값의 공백을 대체

-- -- -- -- Numberic Function -- -- -- --
select * from buyTBL;

-- sum
select *, sum(price) as '상품가격의 총합' from buyTBL;

select *, (select sum(price) from buytbl) as 총합계
from buytbl;

-- avg
select *, avg(price) as '상품평균가격'
from buyTBL;

select *, (select avg(price) from buytbl) as 상품평균가격
from buytbl;

-- 올림
select ceil(25.12);
-- 반올림
select round(135.78,1);
-- 버림
select floor(25.76);
-- max
select prodName, max(price)
from buytbl;
-- min
select prodName, min(price)
from buytbl;







