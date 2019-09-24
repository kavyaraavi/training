SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH:MI:SS') "NOW"
   FROM DUAL;
   
   
   
   
   select TO_CHAR (sysdate, 'mm-dd-yyyy') "now"
   from DUAl;
   
   
   SELECT TO_CHAR(SYSDATE, 'SS:mm:hh') "now"
    FROM DUAL;
    SELECT TO_CHAR(SYSDAy, 'MM-DD-YYYY') "NOW"
        FROM DUAL;
   SELECT TO_CHAR(SYSDATE+10, 'MM-DD-YYYY') "NOW"
        FROM DUAL;
        select to_char(sysdate, 'day') from dual;
        
        
        create table Employee(mpfname varchar(20), 
        empmname varchar(20), 
        emplastname varchar(20),
        empage int check(empage between 0 and 50),
         empcity varchar(5) check(empcity like 'B%'),
        empdesignation varchar(20) check( empdesignation like '%Manager'),
        empid varchar(5),
        empdob date);
        
        insert into Employee values('ka','cha','raki','5','Bang','systemManager','emp08','01-sep-2019');
            insert into Employee values('kavya','deep','rak','50','B','hrManager','emp04','01-sep-2019');
                insert into Employee values('kav','ki','rai','23','Bang','foodManager','emp09','01-sep-2019');
                    insert into Employee values('kara','sush','raj','45','Bang','Manager','emp06','01-sep-2019');
                        insert into Employee values('kaju','mou','rao','7','Bang','gossipManager','emp03','01-sep-2019');
        drop table Employee;
        purge table Employee;
        select *from Employee;
        
        
        update Employee set empcity='Bnkok' where empid='emp09';
        delete Employee where empid='emp04';
        
        rollback table Employee to before delete;
select * from Employee;        
drop table Employee;

flashback table Employee to before drop;

 SELECT mpmname,TO_CHAR(empdob,'DD-MM-YYYY')  from Employee;
 select to_char(substr(mpfname,1,1) || '.' || substr(empmname,1,1) || '.' || (emplastname)) from Employee where empid='emp04';
       
        
        
      create procedure prcMyFstProc
as
begin
dbms_output.put_line('hello proc');
end;


exec prcMyFstProc;
   
   
   create table testPrc(col1 varchar(20));

create or replace procedure prcMyProc(val varchar2)
as
begin
dbms_output.put_line('hello proc '||val);
end;
exec prcMyProc('world');
select *from testPrc;