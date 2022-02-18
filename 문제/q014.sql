--문14
--계속	id 칼럼 수정	primary key 설정 추가하기            ex.   ALTER TABLE tottenham_squad MODIFY id number(5) PRIMARY KEY;      
--                                                              desc tottenham_squad;

create table tottenham_squad (
    position varchar2(10),
    name varchar2(40),
    no number(10)
);
insert into tottenham_squad values('FW', '손흥민', 7);
insert into tottenham_squad values('FW', '해리 케인', 10);
insert into tottenham_squad values('MF', '로드리고 벤탄쿠르', 30);
insert into tottenham_squad values('MF', '해리 윙크스', 8);
insert into tottenham_squad values('DF', '다빈손 산체스', 6);
insert into tottenham_squad values('DF', '토비 오몰', 49);
insert into tottenham_squad values('GK', '위고 요리스', 1);
insert into tottenham_squad values('GK', '피에를루이지 골리니', 22);


--select * from tottenham_squad where position = 'FW';                             --문5 토트넘 공격수만 select 해서 보기	
--delete from tottenham_squad where no = 7;                                        --문6 토트넘 7번 선수 삭제하기 // 손흥민
--update tottenham_squad set name = '로드리고밴탄쿠르' where no=30;                  --문7 특정 번호의 선수의 이름을 수정하기 // ※where no=30 조건을 넣지 않으면 전체 선수이름이 변경됨
--select * from tottenham_squad where no >= 7;                                     --문8 번호가 7이상인 선수들만 출력	
--select * from tottenham_squad where no >= 6 and name like '%손%';                --문9 번호가 6이상이면서 이름에 '손' 이 들어간 선수들만 출력	
--ALTER TABLE tottenham_squad ADD birth date;                                      --문10 선수단 테이블에 생일을 추가
--update tottenham_squad set birth = '1992.07.08' where no = 7;                    --     손흥민 선수의 생일 정보를 입력
--select * from tottenham_squad order by no;                                       --문11 선수단 선수 목록을 no 순으로 정렬해서 보기 (기본 default 값)
--select * from tottenham_squad order by no asc;                                   --     선수단 선수 목록을 no 순으로 오름차순 정렬해서 보기  (기본 defalut 값 // 안적어도 무방)
--select * from tottenham_squad order by no desc;                                  --     선수단 선수 목록을 no 순으로 내림차순 정렬해서 보기 
--alter table tottenham_squad add birth date;                                      --문12 선수단 테이블에 생일을 추가
--update tottenham_squad set birth = '1993.07.28' where no = 10;                   --     해리캐인 데이터에 생일 정보 추가
--select * from tottenham_squad order by birth desc;                               --     선수단 선수 목록을 생일 내림차순으로 정렬해서 보기(desc)
--select * from tottenham_squad order by birth asc;                                --     선수단 선수 목록을 생일 오름차순으로 정렬해서 보기(asc)
alter table tottenham_squad add id number(5) default 0;                          --문13  .id 칼럼 추가	number(5)
/*--alter table tottenham_squad drop column id;    */                            --      .id 칼럼 삭제         
update tottenham_squad set id = 1 where name = '손흥민';                          --      중복안되게 id에 번호 부여하기
update tottenham_squad set id = 2 where name = '해리 케인';                       --      하나하나 업데이트
update tottenham_squad set id = 3 where name = '로드리고 벤탄쿠르';                --      하나하나 업데이트
update tottenham_squad set id = 4 where name = '해리 윙크스';                     --      하나하나 업데이트
update tottenham_squad set id = 5 where name = '다빈손 산체스';                   --      하나하나 업데이트
update tottenham_squad set id = 6 where name = '토비 오몰';                       --      하나하나 업데이트
update tottenham_squad set id = 7 where name = '위고 요리스';                     --      하나하나 업데이트
update tottenham_squad set id = 8 where name = '피에를루이지 골리니';              --      하나하나 업데이트
alter table tottenham_squad modify id number(5) primary key;                    -- primary key 설정 추가하기 (기본 키)  // not null로 바뀜


desc tottenham_squad;
select * from tottenham_squad;                                                     -- ttotenham_squad 조회 <전체 칼럼과 행(데이터) 보기>                            

--drop table tottenham_squad;                                                      -- ttoenham_squad 테이블 삭제

