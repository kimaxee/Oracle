--문23
--//	칼럼 추가                   alter table tottenham_squad add injury char(1)
--      몇명을 부상으로 체크하기

create table tottenham_squad (
    position varchar2(10),
    name varchar2(40),
    no number(10)
);
insert into tottenham_squad values('FW', '손흥민', 7);
insert into tottenham_squad values('MF', '로드리고 벤탄쿠르', 30);
insert into tottenham_squad values('DF', '다빈손 산체스', 6);
insert into tottenham_squad values('GK', '위고 요리스', 1);


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
update tottenham_squad set id = 2 where name = '로드리고 벤탄쿠르';                --      하나하나 업데이트
update tottenham_squad set id = 3 where name = '다빈손 산체스';                   --      하나하나 업데이트
update tottenham_squad set id = 4 where name = '위고 요리스';                     --      하나하나 업데이트

alter table tottenham_squad modify id number(5) primary key;                    --문14  primary key 설정 추가하기 (기본 키)  // not null로 바뀜

alter table tottenham_squad add weeklywage number(9) default 0 not null;        --문15  칼럼 추가 WeeklyWage	number(9) 주급
alter table tottenham_squad add yearlysalary number(9) default 0 not null;      --      칼럼 추가 YearlySalary	 number(9) 연봉
update tottenham_squad set weeklywage = 3000000 where id = 1;                   --      하나하나 업데이트
update tottenham_squad set weeklywage = 2300000 where id = 2;                   --      하나하나 업데이트
update tottenham_squad set weeklywage = 2300000 where id = 3;                   --      하나하나 업데이트
update tottenham_squad set weeklywage = 2600000 where id = 4;                   --      하나하나 업데이트
update tottenham_squad set yearlysalary = 156000000 where id = 1;               --      하나하나 업데이트
update tottenham_squad set yearlysalary = 119600000 where id = 2;               --      하나하나 업데이트
update tottenham_squad set yearlysalary = 119600000 where id = 3;               --      하나하나 업데이트
update tottenham_squad set yearlysalary = 135200000 where id = 4;               --      하나하나 업데이트

--select no,name from tottenham_squad;                                            --문16  선수단 정보 중 등번호, 이름만 뽑아보기

--select weeklywage from tottenham_squad;                                         --문17 동일한 주급을 받는 선수가 있게 수정해두기 (id 3번)  .선수단 정보 중 주급만 뽑아보기
--select distinct weeklywage from tottenham_squad;                                --     위 결과에서 중복행은 제거하기   참고. p82

--select no,name,weeklywage as "주급" from tottenham_squad;                        --문18 선수단 정보 중 등번호, 이름, 주급만 뽑아보기. 주급 칼럼명은 한글로 표시  (세가지 방식 모두 같음)
--select no,name,weeklywage as 주급 from tottenham_squad;                          --     선수단 정보 중 등번호, 이름, 주급만 뽑아보기. 주급 칼럼명은 한글로 표시
--select no,name,weeklywage 주급 from tottenham_squad;                             --     선수단 정보 중 등번호, 이름, 주급만 뽑아보기. 주급 칼럼명은 한글로 표시  (as, "" 생략가능)

--select no, name, weeklywage/7 일급 from tottenham_squad;                         --문19 선수단 정보 중 등번호, 이름, 일급 표시 (일급은 주급을 7로 나누면 됨)

--select no,name,round(weeklywage/7) 주급 from tottenham_squad;                    --문20  문19의 소수점을 반올림 처리
--select no,name,trunc(weeklywage/7) 주급 from tottenham_squad;                    --      문19의 소수점을 버림 처리

--select no, name from tottenham_squad where weeklywage >= 2500000 and yearlysalary >= 120000000;   --문21  선수단 정보 중 등번호,이름을 출력 - 조건은 주급이 얼마 이상이고 연봉이 얼마 이상인 선수만 출력

--select no, name from tottenham_squad where weeklywage != 2800000 and yearlysalary >= 120000000;   --문22  선수단 정보 중 등번호,이름을 출력 - 조건은 주급이 얼마는 아니고 연봉이 얼마 이상인 선수만 출력

 alter table tottenham_squad add injury char(1);                                -- 칼럼 추가 // 부상
 update tottenham_squad set injury = 'y' where id = 2;                          -- 몇명을 부상으로 체크하기
 select * from tottenham_squad where injury is null;                            -- 부상이 아닌 선수들 출력하기  select * from tottenham_squad where injury=null; --이거 안됨	참고. p.115 
                                                                                --                          select * from tottenham_squad where injury is null;		--이걸로 해야함
 select * from tottenham_squad where injury = 'y';                              --부상인 선수들 출력하기   select * from tottenham_squad where injury is not null;    참고. p.116
                                                                                --                      select * from tottenham_squad where injury='y';
desc tottenham_squad;
select * from tottenham_squad;                                                     -- ttotenham_squad 조회 <전체 칼럼과 행(데이터) 보기>                            

--drop table tottenham_squad;                                                      -- ttoenham_squad 테이블 삭제

