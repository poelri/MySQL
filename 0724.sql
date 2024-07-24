/*
Date : 07 - 24
Objective : Basic Insert
Environment : Windows 11 ,MySQL Workbench 8.0, MySQL Community Server 8.0.33
*/

use mycompany;

SELECT * FROM dept;

#INSERT
INSERT INTO dept
VALUES (50, 'Design', 'Busan');

INSERT INTO dept(deptno, dname, loc)
VALUES(60, 'Development', 'Taejeon');

#명시적 NULL
INSERT INTO dept(deptno, dname,loc)
VALUES(70, NULL, 'Inchon');

#암시적 NULL
INSERT INTO dept(deptno, loc)
VALUES(80,'Seoul');

INSERT INTO dept(dname, loc)
VALUES('Account', 'Yongin');

INSERT INTO  emp(empno, deptno)
VALUES(9999, 90);

INSERT INTO  emp(empno, ename, hiredate,deptno)
VALUES(9998,'Jimin',CURDATE(),80);


CREATE TABLE  emp_copy1
AS
SELECT *
from emp
WHERE 0 = 1;

SELECT * FROm emp_copy1;

INSERT INTO emp_copy1(empno, ename)
VALUES(1111, '포에루');

SELECT * FROM dept;

UPDATE dept
SET dname ='FINANCE'
WHERE deptno = 70;

UPDATE dept
SET dname = 'HR', loc = 'Busan'
WHERE deptno = 70;

CREATE TABLE Student(
    hakbun CHAR(4) PRIMARY KEY ,
    name VARCHAR(20) NOT NULL ,
    kor TINYINT  NOT NULL ,
    eng TINYINT  NOT NULL ,
    mat TINYINT  NOT NULL ,
    edp TINYINT  NOT NULL ,
    tot SMALLINT ,
    avg FLOAT(5,2),
    grade CHAR(1)
);

SELECT * FROM student;


select version();








