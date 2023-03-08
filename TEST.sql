-- 1. 학생 테이블 생성
CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    grade CHAR(1) NOT NULL,
    address VARCHAR(100),
    phone INT
);

-- 2. 상품 테이블 생성하고 데이터 입력 쿼리 구문 작성
drop table product;
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    price INT
);

INSERT INTO product (name,price)
VALUES 
('새우깡',1500),
('홈런볼',2000),
('오사쯔',1000);

select * from product;

-- 3. 상품 테이블과 1:N 관계를 가지는 구매 테이블을 생성 하고 값 넣기
  CREATE TABLE `order` (
    order_number INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    amount INT NOT NULL,
    product_id INT,
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
);

INSERT INTO `order` (customer_id, product_id, amount)
VALUES('cookie monster',2,4),
('elmo',3,5),
('big bird',1,2);

select * from `order`;


-- 4. inner join 구문을 사용해 결과 집합 출력
SELECT *
FROM product
INNER JOIN `order`
ON product.product_id = `order`.product_id;


  
  

 
