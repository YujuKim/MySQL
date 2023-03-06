
-- NOT NULL과 디폴트값 사용

DROP TABLE student;

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(50) DEFAULT '미정' NOT NULL
);
DESC student;

-- 디폴트 제약을 사용했을 때 값을 넣는 방법
INSERT INTO student(student_id, name, grade, major)
VALUES 
(1,'John',3,'경영학과'),
(2,'Jennie',2,'경영학과'),
(3,'Max',1,DEFAULT),
(4,'Sarah',2,DEFAULT);

SELECT * FROM student;

-- 디폴트 제약을 사용했을 때 값을 넣는 방법2
INSERT INTO student(student_id, name, grade)
VALUES
(5,'홍길동1',2),
(6,'홍길동2',3),
(7,'홍길동3',1),
(8,'홍길동4',3);

SELECT * FROM student;

CREATE TABLE subject (
  subject_id INT PRIMARY KEY,
  subject_name VARCHAR(50) NOT NULL,
  credit INT NOT NULL,
  department VARCHAR(50) NOT NULL,
  professor VARCHAR(50) NOT NULL
);

-- professor 컬럼 제약 사항을 default로 추가하고 값을 빈 문자열('')로 만들어 주기
ALTER TABLE subject MODIFY professor VARCHAR(30) DEFAULT'' NOT NULL;
-- DEFAULT와 NOT NULL의 순서는 상관 없음

DESC subject;


