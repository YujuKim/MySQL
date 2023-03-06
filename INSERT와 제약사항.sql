

-- 데이터 저장 (한 줄 주석) 
/*
여러 줄 주석
*/

-- DROP TABLE student;
-- DROP TABLE subject;
-- DROP TABLE product;

CREATE TABLE student(
	student_id INT primary key,
    name VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(50)
);

-- INSERT INTO 테이블명(컬럼명1, 컬럼명2, ..) VALUES (값1, 값2..);
INSERT INTO student(student_id, name, grade, major)
VALUES (1, '홍길동', 3, '컴퓨터공학과');

INSERT INTO student(student_id, name, grade, major)
VALUES(2,'김철수',4,'전자공학과');

INSERT INTO student(student_id, name, grade, major)
VALUES(3,'이영희',2,'경영학과');

INSERT INTO student(student_id, name, grade, major)
VALUE(4,'티모',1,'롤학과');

-- 테이블의 데이터 삭제하는 명령어
DELETE FROM student;

-- 복수형으로 INSERT 쿼리문 작성하기
INSERT INTO student(student_id, name, grade, major)
VALUES 
(1001, '김철수', 2, '컴퓨터공학과'),
(1002, '이영희', 3, '수학과'),
(1003, '박민수', 1, '전자공학과');

-- 복수형으로 데이터 3행을 넣어주기. 단, VALUE 사용해서
INSERT INTO student(student_id, name, grade, major)
VALUE
(1004, '김미미', 1, '철학과'),
(1005, '조충재', 2, '시각디자인학과'),
(1006, '박구미', 2, '국어국문학과');

-- insert 구문에서 복수행 쿼리를 실행할 때 하나라도 오류가 있으면
-- 데이터는 정상 저장되지 않는다.
INSERT INTO student(student_id, name, grade, major)
VALUES
(1007, '김미미1', 1, '철학과'),
(1008, '조충재2', 2, '시각디자인학과'),
(1008, '박구미3', 2, '국어국문학과');


SELECT * FROM student;

-- 직원 테이블과 고객 테이블 스키마(구조) 확인 후 데이터 형식에 맞춰 5행 이상 데이터 입력하기
DESC employee;

INSERT INTO employee(id, name, age, department)
VALUES
(201, '보라돌이', 30, '마케팅'),
(202, '나나', 26, '고객지원'),
(203, '뚜비', 35, '해외영업'),
(204, '뽀', 29, '전산'),
(205, '코난', 30, '마케팅');

SELECT * FROM employee;

 DESC customer;
 INSERT INTO customer(id, name, email, address)
 VALUES
 ('a1234', '미미', 'apple@email.com', '서울시 동작구'),
 ('b3452', '샤샤', 'gold@email.net', '안산시 단원구'),
 ('c6677', '라라', 'pink@email.com', '부산시 진구'),
 ('d5778', '비비', 'banana@email.net', '서울시 영등포구'),
 ('e2345', '키키', 'blue@email.com', '안산시 상록구'),
 ('7777yyy', 'Jennie', '2343','부산시 연제구');
 
 SELECT * FROM customer;
 










