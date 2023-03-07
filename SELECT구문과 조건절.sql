
-- WHERE 사용해보기
-- student 테이블 이용
-- 학과가 '컴퓨터공학과'인 학생들의 이름과 학번을 조회하고 싶을 때
SELECT * FROM student;
SELECT name, student_id 
FROM student 
WHERE major ='컴퓨터공학과';

-- 1. grade가 3인 학생들 조회
SELECT * FROM student WHERE grade =3; -- 복수행 결과값

-- 2. 이름이 홍길동인 학생 조회
SELECT * FROM student WHERE name ='홍길동'; -- 단일행 결과값

-- 3. 학번이 1부터 10까지인 학생들 조회
SELECT *
FROM student
WHERE student_id BETWEEN 1 AND 10;

-- 4. 학과가 디자인학과이면서 학년이 2학년인 학생들만 조회
SELECT *
FROM student
WHERE major ='디자인학과' and grade=1;

-- 5. 학과가 컴퓨터공학과이거나 학년이 2학년인 학생들 조회
SELECT *
FROM student
WHERE major = '컴퓨터공학과' or grade =2;

-- 6. 학생 이름이 홍길동이 아닌 학생들을 조회
SELECT *
FROM student
WHERE name != '홍길동'; -- '!='대신 '<>'넣어도 됨 

-- 7. 학년이 2학년 이상인 학생들 조회
SELECT *
FROM student
WHERE grade >=2;

-- 8. 학년이 2학년 미만인 학생들 조회
SELECT *
FROM student
WHERE grade < 2;

-- 9. 학년이 1학년이거나 3학년, 4학년인 학생들 조회
SELECT *
FROM student
WHERE grade IN(1,3,4);

SELECT *
FROM student
WHERE grade NOT IN(2);

drop table subject;
drop table customer;

