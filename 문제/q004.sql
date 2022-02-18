--문4
--다음 url 데이터 참고		https://sports.daum.net/team/epl/249/squad	
--.선수단 테이블을 작성하고			필드들:	등번호	이름	포지션		
--.데이터 삽입하기	

create table tottenham_squad (
    position varchar2(10),
    name varchar2(40),
    no number(10)
);
insert into tottenham_squad values('FW', '���� ��Į��', 44);
insert into tottenham_squad values('FW', '�����', 7);
insert into tottenham_squad values('FW', '��Ƽ�� ��������', 23);
insert into tottenham_squad values('FW', '���̴� ���̵� ����', 44);
insert into tottenham_squad values('FW', '�ظ� ����', 10);
insert into tottenham_squad values('MF', '���� ������Ű', 21);
insert into tottenham_squad values('MF', '���̾� ������', 19);
insert into tottenham_squad values('MF', '�ε帮�� ��ź��', 30);
insert into tottenham_squad values('MF', '�θ��� �յ�', 55);
insert into tottenham_squad values('MF', '��ī�� ����', 27);
insert into tottenham_squad values('MF', '����Ŭ ũ����', 52);
insert into tottenham_squad values('MF', '��Ʃ ũ����', 51);
insert into tottenham_squad values('MF', '���� ���̾�', 15);
insert into tottenham_squad values('MF', '�ø��� ��ŵ', 29);
insert into tottenham_squad values('MF', 'Į�� �ü���', 50);
insert into tottenham_squad values('MF', '�ǿ��� ȣ�̺񿡸�', 5);
insert into tottenham_squad values('MF', '�Ϻ� ȭ��Ʈ', 42);
insert into tottenham_squad values('MF', '�ظ� ��ũ��', 8);
insert into tottenham_squad values('DF', '�ٺ�� ��ü��', 6);
insert into tottenham_squad values('DF', '���� �Ľ���ġ', 48);
insert into tottenham_squad values('DF', '����Ű ����', 46);
insert into tottenham_squad values('DF', '�� ����Ƽ', 2);
insert into tottenham_squad values('DF', '�� ���̺�', 33);
insert into tottenham_squad values('DF', '���Ŭ�� ���̾� ������', 53);
insert into tottenham_squad values('DF', '�������� �����', 3);
insert into tottenham_squad values('DF', '�̸޸���', 12);
insert into tottenham_squad values('DF', '���� ������', 25);
insert into tottenham_squad values('DF', '�� �ε�', 14);
insert into tottenham_squad values('DF', 'ũ����Ƽ�� �θ޷�', 4);
insert into tottenham_squad values('DF', '��� ����', 49);
insert into tottenham_squad values('GK', '�귣�� ����ƾ', 40);
insert into tottenham_squad values('GK', '���� ȭ��Ʈ��', 41);
insert into tottenham_squad values('GK', '���� �丮��', 1);
insert into tottenham_squad values('GK', '�ǿ��������� �񸮴�', 22);


select * from tottenham_squad;
desc tottenham_squad;

--drop table tottenham_squad;

