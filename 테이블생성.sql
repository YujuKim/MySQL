-- 데이터베이스 생성
CREATE DATABASE mydb1;

-- 테이블 생성시, SQL 작성시 어떤 DB를 사용할지 먼저 선택

-- DB를 사용하려면 사용한다고 명령어를 실행해야 한다
USE mydb;

-- 학생 테이블 생성
CREATE TABLE student(
	student_id INT,
    name VARCHAR(50) NOT NULL, 
    grade INT NOT NULL,
    major VARCHAR(50) NOT NULL
); 

SELECT * FROM student;
desc student;

-- 과목 테이블 생성
CREATE TABLE subject(
	subject_id INT,
    subject_name VARCHAR(50) NOT NULL,
    credit INT NOT NULL,
    department VARCHAR(50),
    professor CHAR(50) NOT NULL
);

SELECT * FROM subject;
DESC subject;

-- 생성된 테이블에 PK(기본키) 추가하기
DESC student;
ALTER TABLE student ADD primary key(student_id);

-- subject 테이블에 PK추가 대상 -subject_id
DESC subject;
ALTER TABLE subject ADD primary key(subject_id);

-- 생성될 시점의 테이블 생성 명령어 보기
SHOW CREATE TABLE student;

-- 테이블 삭제
DROP TABLE student;
DROP TABLE subject;

-- 테이블 생성 시 PK 추가하기
CREATE TABLE student(
	stuent_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	grade INT NOT NULL,
    major VARCHAR(50) NOT NULL
);

DESC student;

CREATE TABLE subject(
subject_id INT 	PRIMARY KEY,
subject_name VARCHAR(50) NOT NULL,
credit INT NOT NULL,
department VARCHAR(10) NOT NULL,
professor VARCHAR(20) NOT NULL
);

DESC subject;

-- 과제1
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
age INT,
department VARCHAR(20)
);

DESC employee;

-- 과제2
CREATE TABLE customer(
id VARCHAR(10) PRIMARY KEY,
name VARCHAR(30),
email VARCHAR(30),
address VARCHAR(100)
);

DESC customer;

CREATE TABLE product(
	id INT PRIMARY KEY,
    name VARCHAR(50)  NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    description TEXT
);

DESC product;

-- 예약어를 테이블 이름으로 지정할 수 없다. 하지만 ``를 붙여 강제적으로 지정 가능
CREATE TABLE `order`(
	id INT PRIMARY KEY,
    customer_order VARCHAR(50),
    product_name VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    order_date DATE NOT NULL
);

DESC `order`;

-- 과제 3
CREATE TABLE enrollment (
	student_id INT PRIMARY KEY,
    student_name VARCHAR(30) NOT NULL,
    class_name varchar(20) NOT NULL,
    classroom INT,
    enroll_date DATE
);

DESC enrollment;
















