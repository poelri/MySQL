/* 1987년에 입사한 사원 정보를 출력하시오. 4가지 */
SELECT empno,ename,hiredate
FROM emp
/*
WHERE hiredate >= '1897-01-01' AND hiredate <= '1987-12-31'
WHERE hiredate BETWEEN '1987-01-01' AND '1987-12-31';
WHERE hiredate LIKE '1987%';
*/
WHERE YEAR(hiredate) = 1987;

CREATE TABLE Patient (
     number INT PRIMARY KEY,
     code VARCHAR(45) NOT NULL,
     days INT NOT NULL,
     age INT NOT NULL,
     dept VARCHAR(45),
     operfee INT,
     hospitalfee INT,
     money INT
) COLLATE = utf8mb4_general_ci; -- 테이블의 기본 문자 집합 및 정렬 순서 설정


select * from patient;



start transaction ;

select * from emp
WHERE empno = 7782;

UPDATE emp
SET deptno = 30
WHERE empno =7782;

savepoint aaa;

INSERT INTO emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES( 7999,'TOM','SALESMAN',7782,CURDATE(),2000,2000,10);

ROLLBACK to aaa;

SELECT * FROM emp;

CREATE TABLE emp20
AS
SELECT empno, ename, sal
FROM emp
WHERE deptno = 20;

SELECT * FROM emp20;

DROP TABLE emp20;

ALTER TABLE emp20
ADD age Tinyint AFTER ename;

ALTER TABLE emp20
DROP COLUMN sal;


ALTER TABLE emp20
MODIFY ename VARCHAR(20);


SELECT * FROM Jusorok;

CREATE TABLE Jusorok
(
    bunho SMALLINT,
    gender CHAR(6) DEFAULT 'male'
);

INSERT INTO Jusorok VALUE(1, 'FEMALE');
INSERT INTO Jusorok VALUEs(2, DEFAULT);

CREATE TABLE dept
(deptno TINYINT(2) ,
 dname VARCHAR(14) ,
 loc VARCHAR(13) ) ;

ALTER TABLE dept
    ADD CONSTRAINT pk_dept PRIMARY KEY(deptno);

CREATE TABLE emp
(empno SMALLINT(4),
 ename VARCHAR(10),
 job VARCHAR(9),
 mgr SMALLINT(4),
 hiredate DATE,
 sal FLOAT(7,2),
 comm FLOAT(7,2),
 deptno TINYINT(2));

ALTER TABLE emp
    ADD  CONSTRAINT pk_emp PRIMARY KEY(empno),
    ADD  CONSTRAINT fk_deptno FOREIGN KEY(deptno)
        REFERENCES dept(deptno);

INSERT INTO dept VALUES
    (10,'ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES (20,'RESEARCH','DALLAS');
INSERT INTO dept VALUES
    (30,'salES','CHICAGO');
INSERT INTO dept VALUES
    (40,'OPERATIONS','BOSTON');
INSERT INTO emp VALUES
    (7369,'SMITH','CLERK',7902, CAST('1980-12-17' AS DATE),800,NULL,20);
INSERT INTO emp VALUES
    (7499,'ALLEN','salESMAN',7698,CAST('1981-2-20' AS DATE),1600,300,30);
INSERT INTO emp VALUES
    (7521,'WARD','salESMAN',7698,CAST('1981-2-22' AS DATE),1250,500,30);
INSERT INTO emp VALUES
    (7566,'JONES','MANAGER',7839,CAST('1981-4-2' AS DATE),2975,NULL,20);
INSERT INTO emp VALUES
    (7654,'MARTIN','salESMAN',7698,CAST('1981-9-28' AS DATE),1250,1400,30);
INSERT INTO emp VALUES
    (7698,'BLAKE','MANAGER',7839,CAST('1981-5-1' AS DATE),2850,NULL,30);
INSERT INTO emp VALUES
    (7782,'CLARK','MANAGER',7839,CAST('1981-6-9' AS DATE),2450,NULL,10);
INSERT INTO emp VALUES
    (7788,'SCOTT','ANALYST',7566,CAST('1987-7-13' AS DATE),3000,NULL,20);
INSERT INTO emp VALUES
    (7839,'KING','PRESIDENT',NULL,CAST('1981-11-17' AS DATE),5000,NULL,10);
INSERT INTO emp VALUES
    (7844,'TURNER','salESMAN',7698,CAST('1981-9-8' AS DATE),1500,0,30);
INSERT INTO emp VALUES
    (7876,'ADAMS','CLERK',7788,CAST('1987-7-13' AS DATE),1100,NULL,20);
INSERT INTO emp VALUES
    (7900,'JAMES','CLERK',7698,CAST('1981-12-3' AS DATE),950,NULL,30);
INSERT INTO emp VALUES
    (7902,'FORD','ANALYST',7566,CAST('1981-12-3' AS DATE),3000,NULL,20);
INSERT INTO emp VALUES
    (7934,'MILLER','CLERK',7782,CAST('1982-1-23' AS DATE),1300,NULL,10);

CREATE TABLE salgrade
(grade TINYINT(1),
 losal SMALLINT(4),
 hisal SMALLINT(4));
INSERT INTO salgrade VALUES (1,700,1200);
INSERT INTO salgrade VALUES (2,1201,1400);
INSERT INTO salgrade VALUES (3,1401,2000);
INSERT INTO salgrade VALUES (4,2001,3000);
INSERT INTO salgrade VALUES (5,3001,9999);

commit;

SELECT * FROM student;

CREATE TABLE Student(
    hakbun char(4),
    name VARCHAR(20) NOT NULL,
    kor TINYINT NOT NULL CHECK ( kor BETWEEN  0 AND 100),
    eng TINYINT NOT NULL,
    mat TINYINT NOT NULL DEFAULT 0,
    edp TINYINT,
    tot SMALLINT,
    avg FLOAT(5,2),
    grade CHAR(1),
    deptno TINYINT,
    CONSTRAINT student_hakbun_pk primary key(hakbun),
    CONSTRAINT student_name_uk UNIQUE(name),
    CONSTRAINT student_grade_ck CHECK (grade IN('A','B','C','D','F')),
    CONSTRAINT student_deptno_fk FOREIGN KEY(deptno)
    REFERENCES dept(deptno)
 )DEFAULT CHARSET utf8;

-- Student라는 이름의 테이블의 edp 열의 데이터 타입과 속성을 변경
ALTER TABLE Student
MODIFY edp Tinyint NOT NULL ;

-- Student 테이블에 새로운 제약 조건을 추가
ALTER TABLE Student
ADD CONSTRAINT student_tot_ck CHECK(tot BETWEEN 0 AND 400);

-- Student 테이블의 eng 열의 데이터 타입을 변경
-- MODIFY는 SQL의 ALTER TABLE 명령어에서 사용하는 키워드로, 테이블의 기존 열(column)의 속성을 변경하는 데 사용
-- CONSTRAINT는 SQL에서 테이블의 데이터 무결성을 보장하기 위해 사용하는 키워드

ALTER TABLE Student
MODIFY eng TINYINT;

ALTER TABLE Student
DROP CONSTRAINT student_name_uk;

















