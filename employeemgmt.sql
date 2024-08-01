create database employeemgmt;
use employeemgmt;
create table empmgmt
(
    empno varchar(30) UNIQUE,
    ename varchar(30),
    dname varchar(30),
    sal   int,
    rsal bigint,
    fsal bigint,
    nsal bigint,
    total bigint,
    real_total bigint
);

DELIMITER $$
CREATE PROCEDURE sp_create_employee
(
    IN v_empno varchar(30),
    IN v_ename varchar(30),
    IN v_dname varchar(30),
    IN v_sal int,
    IN v_rsal bigint,
    IN v_fsal bigint,
    IN v_nsal bigint,
    IN v_total bigint,
    in v_real_total bigint
)
BEGIN
    INSERT INTO empmgmt
    VALUES(v_empno, v_ename, v_dname, v_sal, v_rsal, v_fsal, v_nsal, v_total, v_real_total);
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE sp_select_all_employee()
BEGIN
    SELECT * FROM empmgmt
    ORDER BY empno ASC;
END $$
DELIMITER ;


select * from employeemgmt.empmgmt;