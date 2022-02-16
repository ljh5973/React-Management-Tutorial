select * from userInfo;
commit;

CREATE TABLE USERINFO 
(
  USERID VARCHAR2(100 BYTE) primary key
, USERPW VARCHAR2(100 BYTE) 
, USERNAME VARCHAR2(100 BYTE) 
, USERPHONE VARCHAR2(100 BYTE) 
, USEREMAIL VARCHAR2(100 BYTE) 
, USERZIPCODE NUMBER 
, USERADDR VARCHAR2(100 BYTE) 
, USERADDRDETAIL VARCHAR2(100 BYTE) 
, USERBIRTH VARCHAR2(100 BYTE) DEFAULT sysdate );

create table fileupload(
    pno number primary key,
    pCategory varchar2(50 byte) not null,
    pName varchar2(100 byte) not null,
    ptitle varchar2(100 byte) not null,
    pbrand varchar2(100 byte) not null,
    uniquename varchar2(100 byte) not null,
    price varchar2(100 byte) not null,
    pDetail varchar2(1000 byte) not null,
    p_imgAddr varchar2(300 byte) not null,
    regdate DATE default sysdate
);
commit;
select * from fileupload;
drop table fileupload;
