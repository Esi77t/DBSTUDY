# 컨트롤 엔터
SHOW DATABASES;
CREATE DATABASE booktest;
USE booktest;
CREATE TABLE Reservation(ID INT, Name VARCHAR(30), ReserveDate DATE, RoomNum INT);
CREATE TABLE Customer(ID INT, Name VARCHAR(30), Age INT, Address VARCHAR(20));

DESC Reservation;

SELECT * FROM Reservation;
SELECT * FROM Customer;

# 내용 삽입
INSERT INTO Reservation(ID, Name, ReserveDate, RoomNum)
VALUES(1, '홍길동', '2016-01-05', 2014);
INSERT INTO Reservation(ID, Name, ReserveDate, RoomNum)
VALUES(3, '장길산', '2016-01-16', 1208);
INSERT INTO Reservation(ID, Name, ReserveDate, RoomNum)
VALUES(111, '이태현', '2025-03-17', 504);

INSERT INTO Customer(ID, Name, Age, Address)
VALUES(1, '홍길동', 17, '서울');
INSERT INTO Customer(ID, Name, Age, Address)
VALUES(2, '임꺽정', 11, '인천');
INSERT INTO Customer(ID, Name, Age, Address)
VALUES(3, '장길산', 13, '서울');

INSERT INTO CUSTOMER VALUES(4, '이태현', 88, '도쿄');

UPDATE Customer
SET Address = '경기'
WHERE ID = 4;

# 안전모드 설정 = 1 / 해제 = 0
SET SQL_SAFE_UPDATES = 0;

# 삭제
DELETE FROM CUSTOMER
WHERE ID = 4;

# WHERE절
SELECT *
FROM RESERVATION
WHERE RESERVEDATE < '2025-01-01';

SELECT * FROM RESERVATION
WHERE NAME = '홍길동';

SELECT distinct NAME FROM RESERVATION;

SELECT * FROM RESERVATION
ORDER BY NAME DESC;

