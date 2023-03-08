DROP TABLE IF EXISTS member;

-- 회원 정보
CREATE TABLE member(
	id 	INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    address VARCHAR(100)
      
);

create table member_grade(
	member_id INT primary key,
    grade varchar(10),
    point int,
    foreign key (member_id) references member(id)
);

desc member_grade;

-- 직원 정보와 직위 정보
drop table if exists employee;

CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    hire_date DATE
);

CREATE TABLE employee_position (
    id INT PRIMARY KEY,
    changes VARCHAR(50),
    FOREIGN KEY (id)
        REFERENCES employee (id)
);

CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price INT
);

CREATE TABLE product_detail (
    product_id INT PRIMARY KEY,
    description TEXT,
    FOREIGN KEY (product_id)
        REFERENCES product (id)
);



