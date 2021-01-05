
--테이블 생성
create table guestbook(
    no number(5),
    name varchar2(80),
    password varchar2(20),
    content varchar2(2000),
    reg_date date,
    PRIMARY KEY(no)
);

--테이블 삭제
drop table guestbook;

--테이블 권한
grant select on guestbook to webdb;

--시퀀스 생성
create sequence seq_no
increment by 1
start with 1;

select seq_no.nextval
from dual;

--시퀀스 삭제
drop sequence seq_no;

--insert문
insert into guestbook
values(seq_no.nextval, '2','2','2','2017-12-12');


--select 문
select  no,
        name,
        password,
        content,
        reg_date
from guestbook;

--delete 문
delete from guestbook
where no = 1;

