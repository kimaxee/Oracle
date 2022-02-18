--문3
--.회원 정보를 저장하는 member 테이블을 만들기			필드들:	이름	    나이  	성별  	전화번호
--                                                          문자	    숫자	    문자	    문자
--.회원 정보 3개 입력하기						
								

create table member (
    name varchar2(30),
    age number(10),
    sex varchar2(30),
    tel varchar2(30)
);
insert into member values('�̼���', 51, '��', '010-1111-1111');
insert into member values('�Ż��Ӵ�', 42, '��', '010-2222-2222');
insert into member values('������', 23, '��', '010-3333-3333');


select * from member;
desc member;

drop table member;

