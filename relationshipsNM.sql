CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    major VARCHAR(50) NOT NULL
);

CREATE TABLE subject (
    subject_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    professor VARCHAR(50) NOT NULL
);

-- 중간 테이블
CREATE TABLE enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (student_id)
        REFERENCES student (student_id),
    FOREIGN KEY (subject_id)
        REFERENCES subject (subject_id)
);

-- 학생테이블과 수강테이블의 관계는 1:N
-- 과목과 수강테이블의 관계는 1:N

-- 한 사람이 여러 개의 도시에서 여러 번 여행을 다녀온 경우를 테이블로 구축

CREATE TABLE person (
    person_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE city (
    city_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

-- 중간 테이블 
CREATE TABLE travel (
    person_id INT,
    city_id INT,
    trip_date DATE,
    PRIMARY KEY (person_id , city_id , trip_date),
    FOREIGN KEY (person_id)
        REFERENCES person (person_id),
    FOREIGN KEY (city_id)
        REFERENCES city (city_id)
);

INSERT INTO person VALUES 
	(1,'이재명'),
    (2,'안철수'),
    (3,'이민호'),
    (4,'한지민'),
    (5,'송혜교');
    
INSERT INTO city VALUES 
	(1,'서울'),
    (2,'상하이'),
    (3,'도쿄'),
    (4,'뉴욕'),
    (5,'런던');
    

insert into travel values
	(1, 1, '2022-09-01'),
	(1, 2, '2022-09-05'),
	(2, 5, '2022-10-10'),
	(2, 4, '2022-10-30'),
	(3, 3, '2022-10-17'),
	(5, 1, '2022-11-01');
    
select * from travel;

-- join 구문을 활용해 2문제씩 만들기

    


