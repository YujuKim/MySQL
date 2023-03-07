CREATE TABLE subject (
  subject_id INT AUTO_INCREMENT PRIMARY KEY,
  subject_name VARCHAR(50) NOT NULL,
  credit INT NOT NULL,
  department VARCHAR(50) NOT NULL,
  professor VARCHAR(50) NOT NULL
);


CREATE TABLE customer (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50),
  address VARCHAR(100) NOT NULL
);

-- subject 테이블 샘플 데이터 

INSERT INTO subject (subject_id, subject_name, credit, department, professor)
VALUES
(1, '영어회화', 3, '외국어학과', '김영희'),
(2, '프로그래밍 기초', 3, '컴퓨터공학과', '박철수'),
(3, '데이터베이스 개론', 3, '컴퓨터공학과', '이승호'),
(4, '컴퓨터 시스템 개론', 3, '컴퓨터공학과', '홍길동'),
(5, '선형대수학', 3, '수학과', '김영수'),
(6, '미적분학', 3, '수학과', '박순영'),
(7, '국어문학사', 3, '국어국문학과', '최지혜'),
(8, '국어문법론', 3, '국어국문학과', '이상호'),
(9, '일본어회화', 3, '외국어학과', '김현진'),
(10, '중국어학', 3, '외국어학과', '최영식'),
(11, '미국사', 3, '사학과', '박영진');


-- customer 샘플 데이터 

INSERT INTO customer (id, name, email, address) VALUES
(1, '김철수', 'kim@example.com', '서울시 강남구'),
(2, '박영희', 'park@example.com', '서울시 서초구'),
(3, '이민수', NULL, '경기도 성남시 분당구'),
(4, '최영진', 'choi@example.com', '서울시 송파구'),
(5, '한미영', 'han@example.com', '경기도 수원시 장안구'),
(6, '강종현', 'kang@example.com', '서울시 강서구'),
(7, '신영수', 'shin@example.com', '경기도 의정부시'),
(8, '유승환', 'yoo@example.com', '경기도 부천시'),
(9, '서민지', 'seo@example.com', '서울시 종로구'),
(10, '임진우', 'lim@example.com', '경기도 안양시 동안구');

SELECT * FROM subject;
-- subject 테이블에서

-- 1. 과목 이름이 '미국사'인 데이터를 조회
SELECT * 
FROM subject
WHERE subject_name = '미국사';

-- 2. 학점이 3점인 과목 데이터를 조회
SELECT * 
FROM subject
WHERE credit = 3;

-- 3. 국어국문학과에서 개설된 과목 데이터를 조회
SELECT *
FROM subject
WHERE department = '국어국문학과';

-- 4. 과목 이름이 '영어회화'이거나 교수명이 '이승호'인 과목 데이터를 조회
SELECT *
FROM subject
WHERE subject_name = '영어회화' or profeSSor = '이승호';

-- 5. 과목 번호가 5보다 큰 데이터를 조회
SELECT *
FROM subject
WHERE subject_id >5;

-- 6. 과목 이름이 '데이터베이스 개론'이 아닌 데이터를 조회
SELECT *
FROM subject
WHERE subject_name <> '데이터베이스 개론';

-- 7. 학과가 '컴퓨터공학과' 이고 교수명이 '박철수'인 과목 데이터를 조회
SELECT *
FROM subject
WHERE department = '컴퓨터공학과' and professor ='박철수';

-- 8. 교수명이 '김현진'이거나 '최영식'이면서 학과가 '외국어학과'인 과목 데이터를 조회
SELECT *
FROM subject
WHERE (professor ='김현진' or '최영식') 
	AND depaRtmeNT = '외국어학과';
    
SELECT * FROM customer;
-- customer 테이블에서

-- 1. 한미영 고객 정보 조회
SELECT * 
FROM customer
WHERE name = '한미영';

-- 2. 서울에 살지 않는 고객 정보 조회
SELECT *
FROM customer
WHERE address NOT LIKE ('%서울%');

-- 3. id가 5번 이상인 고객의 이메일 조회
SELECT email
FROM customer
WHERE id >=5;

-- 4. id가 5번 미만이면서 경기도에 사는 고객 정보 조회
SELECT *
FROM customer
WHERE id<5 AND address LIKE('%경기도%');

-- 5. 이메일 정보가 없는 고객의 이름 조회
SELECT name
FROM customer
WHERE email IS NULL;

-- 6. 강남 3구 사는 사람들 조회 (서초구, 송파구, 강남구)
SELECT *
FROM customer
WHERE address IN('서울시 강남구', '서울시 송파구', '서울시 서초구');

-- 7. id가 5이상이면서 서울에 거주하는 사람 이름 검색
SELECT name
FROM customer
WHERE id >=5 AND address LIKE('%서울%');

-- 8. 이메일이 null이 아니면서 주문번호가 2번이 넘으며 종로구에 사는 고객 조회
SELECT *
FROM customer
WHERE email IS NOT NULL AND id>2 AND address = '서울시 종로구';

-- 9. 아이디가 3에서 8까지인 사람들 중 '경기도 의정부'에 거주하는 사람의 이메일 정보 조회 (단, 이메일 값이 null이 아니어야함)
SELECT email
FROM customer
WHERE id BETWEEN 3 AND 8 AND address = '경기도 의정부시' AND email IS NOT NULL;





