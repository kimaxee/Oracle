--문2
--다음 방명록 테이블에 데이터 3개 입력
--테이블:	필드 3개:                                 
--먼저 아래 코드로 테이블 생성 후                     글번호(primary key(aaa) )	    글내용	      작성자
--CREATE TABLE BOARD_GUEST(					            	1		             안녕	        안
--    NO NUMBER(6), 				                        2		             바이	        가   
--    CON VARCHAR2(255), -			            	    	3		             하이	        나 
--    WRITER VARCHAR2(10),					
--    PRIMARY KEY(NO)		
--);
    
create table board_guest(	
	no number(6), --�۹�ȣ
	con varchar2(255), --�۳���
	writer varchar2(10),
	primary key(no)
);	            

insert into board_guest values(1, '�ȳ�', '��');
insert into board_guest values(2, '����', '��');
insert into board_guest values(3, '����', '��');

select * from board_guest;
desc board_guest;

drop table board_guest;

