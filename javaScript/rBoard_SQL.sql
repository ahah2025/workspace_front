/*******************************************
 web 계정에서 사용 - user
*******************************************/

-- web_db 사용
use web_db;

-- 테이블 목록 조회
show tables;

-- 유저(회원)테이블 생성
create table rboard(
	no 			int 		  primary key 	auto_increment,
    title 		varchar(500),
    content 	text,
    hit 		int,
    reg_date 	datetime,
    group_no 	int,
    order_no 	int,
    depth 		int
);
select *
from rboard
;
-- 조회
select  no,
		title,
        content,
        hit,
        reg_date,
        group_no,
        order_no,
        depth
from rboard
;

select *
from user;

select  u.no,
		rd.title,
        rd.group_no,
        rd.order_no,
        rd.depth
from rboard rd, user u
;

-- 아이디사용유무체크(회원가입) user.xml
select 	no,
		id,
		name,
		gender
from user
where id= ?
;

-- 계층형 게시판 만들기
select * 
from rboard
order by group_no desc,
order_no asc;

-- 추가
insert into rboard
values(null, '안녕하세요. 세번째 게시글 입니다.', '세번째 게시글 내용', 1, now(), 3, 3, 0)
;

insert into rboard
values(null, '안녕하세요. 두번째 게시글 입니다.', '두번째 게시글 내용', 1, now(), 2, 2, 0)
;