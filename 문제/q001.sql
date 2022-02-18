--문1	
--홈페이지의 방문자 수를 저장할 테이블과 데이터 만들기
--(방문카운터)방문자 수:		0			
--답
--create table visitor_counter (
--    vcount number(8)
--);
--insert into visitor_counter values(100);
--select * from visitor_counter;
    
create table visitor_counter (
    vcount number(8)
);
insert into visitor_counter values(100);
select * from visitor_counter;
