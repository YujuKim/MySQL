-- 회원 내역 테이블 생성 (회원 코드, 회원 이름, 회원 주소, 연락처, 등급, 가입 날짜)
 
 CREATE TABLE member (
	member_code INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    address VARCHAR(50),
	phone_number VARCHAR(11),
    grade INT DEFAULT 3 NOT NULL,
    date DATE NOT NULL
    
 );
 
 INSERT INTO member(member_code,name,address,phone_number,grade,date)
 VALUES
 (200,'전지현','서울시 동작구', 01012345678,DEFAULT,'2021/03/01'),
 (201,'손예진','서울시 강남구',01044556677,DEFAULT,'2022-08-08'),
 (204,'이지은','서울시 성동구',01057579900,1,'2022-05-08'),
 (230,'김태리','서울시 용산구', 01012999081,DEFAULT,'2021/03/19'),
 (209,'서현진','서울시 영등포구', 01052999081,2,'2023/01/19');
 
 select * FROM MEMBER;
 

DROP TABLE member;

CREATE TABLE board (
number INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
writer VARCHAR(10) NOT NULL,
password VARCHAR(20) DEFAULT '*' NOT NULL, 
hits INT,
date_of_write DATE,
date_of_modify DATE

);

INSERT INTO board(writer, password, hits, date_of_write, date_of_modify)
VALUES
('빙봉',DEFAULT,30,'2022-08-15','2022-08-17'),
('엘모',1234,44,'2022-10-10',NULL),
('가필드',10041004,290,'20230110','20230112');

SELECT * FROM board;

DROP TABLE board;









 
 
 