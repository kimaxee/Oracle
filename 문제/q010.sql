--문10
--계속	.선수단 테이블에 생일을 추가         ex.     ALTER TABLE tottenham_squad ADD birth date;
--      .손흥민 선수의 생일 정보를 입력       ex.     update tottenham_squad set birth = '1992.07.08' where no = 7;

create table tottenham_squad (
    position varchar2(10),
    name varchar2(40),
    no number(10)
);
insert into tottenham_squad values('FW', '데인 스칼렛', 44);
insert into tottenham_squad values('FW', '손흥민', 7);
insert into tottenham_squad values('FW', '스티븐 베르바인', 23);
insert into tottenham_squad values('FW', '제이닐 로이드 베넷', 44);
insert into tottenham_squad values('FW', '해리 케인', 10);
insert into tottenham_squad values('MF', '데얀 쿨루셉스키', 21);
insert into tottenham_squad values('MF', '라이언 세세뇽', 19);
insert into tottenham_squad values('MF', '로드리고 벤탄쿠르', 30);
insert into tottenham_squad values('MF', '로메인 먼들', 55);
insert into tottenham_squad values('MF', '루카스 모우라', 27);
insert into tottenham_squad values('MF', '마이클 크레익', 52);
insert into tottenham_squad values('MF', '매튜 크레익', 51);
insert into tottenham_squad values('MF', '에릭 다이어', 15);
insert into tottenham_squad values('MF', '올리버 스킵', 29);
insert into tottenham_squad values('MF', '칼럼 시세이', 50);
insert into tottenham_squad values('MF', '피에르 호이비에르', 5);
insert into tottenham_squad values('MF', '하비 화이트', 42);
insert into tottenham_squad values('MF', '해리 윙크스', 8);
insert into tottenham_squad values('DF', '다빈손 산체스', 6);
insert into tottenham_squad values('DF', '막심 파스코치', 48);
insert into tottenham_squad values('DF', '말라키 월콧', 46);
insert into tottenham_squad values('DF', '맷 도허티', 2);
insert into tottenham_squad values('DF', '벤 데이비스', 33);
insert into tottenham_squad values('DF', '브루클린 라이언 포스터', 53);
insert into tottenham_squad values('DF', '세르히오 레길론', 3);
insert into tottenham_squad values('DF', '이메르송', 12);
insert into tottenham_squad values('DF', '자페 탕강가', 25);
insert into tottenham_squad values('DF', '조 로돈', 14);
insert into tottenham_squad values('DF', '크리스티안 로메로', 4);
insert into tottenham_squad values('DF', '토비 오몰', 49);
insert into tottenham_squad values('GK', '브랜든 오스틴', 40);
insert into tottenham_squad values('GK', '알피 화이트맨', 41);
insert into tottenham_squad values('GK', '위고 요리스', 1);
insert into tottenham_squad values('GK', '피에를루이지 골리니', 22);


--select * from tottenham_squad where position = 'FW';                             --문5 토트넘 공격수만 select 해서 보기	
--delete from tottenham_squad where no = 7;                                        --문6 토트넘 7번 선수 삭제하기 // 손흥민
--update tottenham_squad set name = '로드리고밴탄쿠르' where no=30;                  --문7 특정 번호의 선수의 이름을 수정하기 // ※where no=30 조건을 넣지 않으면 전체 선수이름이 변경됨
--select * from tottenham_squad where no >= 7;                                     --문8 번호가 7이상인 선수들만 출력	
--select * from tottenham_squad where no >= 6 and name like '%손%';                --문9 번호가 6이상이면서 이름에 '손' 이 들어간 선수들만 출력	
ALTER TABLE tottenham_squad ADD birth date;                                      --.선수단 테이블에 생일을 추가
update tottenham_squad set birth = '1992.07.08' where no = 7;                    --.손흥민 선수의 생일 정보를 입력
select * from tottenham_squad;

--drop table tottenham_squad;

