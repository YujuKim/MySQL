DESC student;

SHOW CREATE TABLE student;

CREATE TABLE student (
   student_id int NOT NULL,
   name varchar(50) NOT NULL,
   grade int NOT NULL,
   major varchar(50) DEFAULT NULL,
   PRIMARY KEY (student_id)
 ) ;
 
 -- 이미 생성된 테이블 제약 사항 변경하기
 ALTER TABLE student MODIFY grade INT NULL;
  DESC student;
  
  INSERT INTO student(student_id, name, major)
  VALUES (1,'홍길동','검술학과');

-- grade 제약을 NOT NULL로 변경해보기
ALTER TABLE student MODIFY grade INT NOT NULL;

-- 하나의 행을 삭제하는 쿼리 (WHERE절)
DELETE FROM student WHERE student_id =1;
DESC student;
SELECT * FROM student;

-- major 컬럼 제약을 NOT NULL로 변경해 주세요
ALTER TABLE student MODIFY major VARCHAR(50) NOT NULL;
DESC student;

-- 컬럼 선언 부분 생략 가능. 단, 전부 값을 넣으려고 하는 상황일 때만
INSERT INTO student VALUES(2,'홍길동', 3, '검술학과');
SELECT * FROM student;


