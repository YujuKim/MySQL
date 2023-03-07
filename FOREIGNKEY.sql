
CREATE TABLE school (
    school_id INT PRIMARY KEY,
    school_name VARCHAR(20) NOT NULL,
    city VARCHAR(20)
);


CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    grade VARCHAR(3) NOT NULL,
    school_id INT,
    FOREIGN KEY (school_id)
        REFERENCES school (school_id)
);

insert into school(school_id, school_name,city)
values	 (1, '서울대학교','서울'),
		 (2, '고려대학교','서울'),
		 (3, '연세대학교','서울'),
		 (4, '한양대학교','서울');

select * from school;

insert into student(student_id, student_name, grade, school_id)
values 
(1,'홍길동','1학년',1),
(2,'김유신','1학년',2),
(3,'안중근','2학년',3),
(4,'허균','3학년',2),
(5,'심봉사','4학년',4);

-- 제약키 FK사용하게 된다면 여러 가지 제약 사항이 생기게 된다
select * from student;
desc student;

insert into student(student_id,student_name,grade,school_id)
values (6,'야수오','1학년',10); -- foreign key 제약 때문에 생성 불가(school_id 를 1~4중에서 선택)

CREATE TABLE team (
    id INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(50) NOT NULL
); 
    
CREATE TABLE player (
    player_id INT PRIMARY KEY AUTO_INCREMENT,
    player_name VARCHAR(50) NOT NULL,
    team_id INT,
    FOREIGN KEY (team_id)
        REFERENCES team (id)
);

desc player;

insert into team (team_name)
values ('LG 트윈스'),
('NC 다이노스'),
('두산 베어스');

select * from team;

insert into player(player_name,team_id)
values('허경민',1),
('김하성',2),
('최원준',3);

select * from player;



