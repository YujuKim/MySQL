
CREATE TABLE `order` (
  id INT PRIMARY KEY,
  customer_order VARCHAR(50) NOT NULL,
  product_name VARCHAR(20) NOT NULL,
  quantity INT NOT NULL,
  order_date DATE NOT NULL
);

DESC `order`;

-- 데이터 입력하는 쿼리 구문 작성
-- DATE 타입에 값을 넣을 땐 작은따옴표나 큰따옴표를 사용해도 되고 정수값을 입력해도 된다.
-- 단, 날짜 형식에 맞는 값이어야 한다. ex) 1년은 12개월인데 13이란 값을 넣으면 안 됨
INSERT INTO `order` (id,customer_order,product_name,quantity,order_date)
VALUES(4,'빠른 배송','홈런볼',6,'2023-02-01'),
(5,'쿠폰 적용','침구세트',1,'20230202');

SELECT * FROM `order`;

DROP TABLE customer;


-- AUTO_INCREMENT 사용하기

CREATE TABLE customer(
	id 	INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    address VARCHAR(100) NOT NULL
);

INSERT INTO customer(name, email,address)
VALUES
('김철수','aaa@naver.com','서울시 강남구 역삼동'),
('박영희','bbb@naver.com','서울시 동작구 상도동'),
('최영진','ccc@naver.com','서울시 강서구 화곡동'),
('정진희','eee@naver.com','서울시 서대문구 창천동');
SELECT * FROM customer;

INSERT INTO customer(name, email, address)
VALUE ('김민지','yyy@naver.com','서울시 용산구 남영동');











