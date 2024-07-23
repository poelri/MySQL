/*
 Author : 박은화
 Date : 2024.07.20
 Objective : Basic SELECT
 Environment:  Windows 10 22H2(OS Build 19045.4651), MySQL WorkBench 8.0.38, MySQL 8.0.93
           
*/
SELECT *
FROM EMP;

select concat(ename, '의 봉급은' , sal , '입니다') 
from emp;

select 'aaa'
FROM dept;

SELECT distinct deptno
FROM emp;

SELECT *
FROM emp
WHERE ename = UPPER('SMITH');

-- 1980년 입사한 직원
SELECT empno, ename, hiredate
FROM emp
WHERE hiredate >= '1980-01-01' AND hiredate <= '1980-12-31';

select * from mycompany.emp;

select ename, sal, hiredate
from emp
where hiredate between '1987-01-01' and '1987-12-31';
/* where hiredate >='1987-01-01' and hiredate <='1987-12-31'; */

-- 우리 회사 사원중에서 직무가 회사원이거나 분석가인 사원의 사원이름, 사원의 직무를 출력하시오 -- 
SELECT ename, job
from emp
WHERE job IN('CLERK','ANALYST'); -- job='clerk' or job =b 'analyst'


SELECT ename
FROM emp
WHERE ename LIKE 'SMIT_';

SELECT ename
FROM emp
WHERE ename LIKE '%I%';

-- 1987년에 입사한 사원의 이름과 봉급과 입사날짜를 출력하세요
SELECT ename, sal,hiredate
FROM emp
WHERE hiredate LIKE'1987%';

-- 우리회사 직원 중에 보너스를 받는 사람은?
SELECT empno, ename, comm, deptno
FROM emp
WHERE comm IS NOT NULL;


-- 입사일 기준 내림차순
SELECT empno, ename, hiredate, sal
FROM emp
ORDER BY hiredate desc, sal asc;

-- 우리 회사 직원 중 20번 부서 또는 30번 부소의 연봉 내림차순으로 출력하시오 
SELECT deptno, ename, (sal + IFNULL(comm,0)) *12 AS Annual
FROM emp 
where deptno IN(20,30)
ORDER BY Annual DESC;

select ename, sal, comm, sal + comm
from emp
where ename = 'SMITH';

select ename, sal, comm, sal + ifnull(comm ,0)
from emp
where ename = 'SMITH';

SELECT ename "Name" , sal AS "Salary", sal * 12 + IFNULL(comm, 0) AS "Annual Salary"
FROM emp;

select empno AS "사원번호", ename AS "사원이름" , (sal +ifnull(comm,0))*12 AS "Annual Salary"
from emp;

select concat(ename, '의 봉급은' , sal , '입니다')  
from emp;


SELECT /*ALL*/ distinct job
FROM emp;

SELECT distinct deptno
FROM emp;



