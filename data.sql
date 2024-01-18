-- 데이터 삽입
-- member 테이블 데이터
INSERT INTO `member` (`member_id`, `member_name`, `member_pw`, `subscription_YN`)
VALUES
    ('user001', '홍길동', 'password123', TRUE),
    ('user002', '김철수', 'securePW', TRUE),
    ('user003', '이영희', 'mySecretPW', FALSE),
    ('user004', '박민지', 'strongPassword', TRUE),
    ('user005', '정수민', 'topSecret', FALSE),
    ('user006', '송재호', '123456', TRUE),
    ('user007', '김지연', 'password123', FALSE),
    ('user008', '오승희', 'qwerty', TRUE),
    ('user009', '이상현', 'abcdefg', TRUE),
    ('user010', '황인호', 'ilovecoding', FALSE);

-- subscription 테이블 데이터
INSERT INTO `subscription` (`member_id`, `subscription_plan`, `subscription_s_date`, `subscription_f_date`)
VALUES
    ('user001', 'premium', '2023-01-01', '2023-12-31'),
    ('user002', 'standard', '2023-02-15', '2023-05-15'),
    ('user003', 'basic', '2023-03-10', '2023-04-10'),
    ('user004', 'premium', '2023-02-20', '2023-11-30'),
    ('user005', 'basic', '2023-04-05', '2023-05-05'),
    ('user006', 'standard', '2023-01-10', '2023-08-10'),
    ('user007', 'basic', '2023-02-01', '2023-03-01'),
    ('user008', 'premium', '2023-01-05', '2023-12-05'),
    ('user009', 'premium', '2023-03-15', '2023-09-15'),
    ('user010', 'standard', '2023-02-25', '2023-05-25');

-- contents 테이블 데이터
INSERT INTO `contents` (`contents_code`, `contents_title`, `contents_director`, `contents_p_year`, `contents_genre`, `contents_p_actor`, `contents_explanation`, `genre_code`)
VALUES
    ('movie001', '인터스텔라', '크리스토퍼 놀란', '2014-11-05', 'SF', '매튜 맥커너히', '우주 여행을 다룬 영화', 'genre001'),
    ('movie002', '어바웃 타임', '리차드 커티스', '2013-11-07', '로맨스', '돔놀 글리슨', '시간 여행 로맨스 영화', 'genre002'),
    ('movie003', '포레스트 검프', '로버트 저메키스', '1994-07-06', '드라마', '톰 행크스', '머리 좋은 바보의 이야기', 'genre003'),
    ('movie004', '레옹', '뤽 베송', '1994-09-14', '액션', '장 르뎅', '킬러와 소녀의 이야기', 'genre004'),
    ('movie005', '위대한 쇼맨', '마이클 그레이시', '2017-12-20', '뮤지컬', '휴 잭맨', '서커스를 주제로 한 뮤지컬', 'genre005'),
    ('movie006', '라라랜드', '데이미언 셔젤', '2016-12-07', '뮤지컬', '라이언 고슬링', '음악을 통한 사랑 이야기', 'genre005'),
    ('movie007', '인셉션', '크리스토퍼 놀란', '2010-07-21', 'SF', '레오나르도 디카프리오', '꿈과 현실의 경계', 'genre001'),
    ('movie008', '어벤져스: 엔드게임', '안소니 루소, 조 루소', '2019-04-24', '액션', '로버트 다우니 주니어', '마블 슈퍼히어로 영화', 'genre004'),
    ('movie009', '타이타닉', '제임스 카메론', '1997-12-19', '로맨스', '레오나르도 디카프리오', '타이타닉호 비극의 사랑 이야기', 'genre002'),
    ('movie010', '쇼생크 탈출', '프랭크 다라본트', '1994-10-14', '드라마', '팀 로빈스', '감옥에서의 탈출 이야기', 'genre003');

-- profile 테이블 데이터
INSERT INTO `profile` (`member_id`, `profile_image`, `nickname`)
VALUES
    ('user001', NULL, '홍길동의 프로필'),
    ('user002', NULL, '철수의 프로필'),
    ('user003', NULL, '영희의 프로필'),
    ('user004', NULL, '민지의 프로필'),
    ('user005', NULL, '수민의 프로필'),
    ('user006', NULL, '재호의 프로필'),
    ('user007', NULL, '지연의 프로필'),
    ('user008', NULL, '승희의 프로필'),
    ('user009', NULL, '상현의 프로필'),
    ('user010', NULL, '인호의 프로필');

-- genre 테이블 데이터
INSERT INTO `genre` (`genre_code`, `genre_name`)
VALUES
    ('genre001', 'SF'),
    ('genre002', '로맨스'),
    ('genre003', '드라마'),
    ('genre004', '액션'),
    ('genre005', '뮤지컬');

-- pay 테이블 데이터
INSERT INTO `pay` (`member_id`, `payment`, `paydate`, `price`)
VALUES
    ('user001', '신용카드', '2023-09-01', 10.99),
    ('user002', '페이팔', '2023-09-02', 9.99),
    ('user003', '신용카드', '2023-09-03', 7.99),
    ('user004', '페이팔', '2023-09-04', 12.99),
    ('user005', '신용카드', '2023-09-05', 8.99),
    ('user006', '페이팔', '2023-09-06', 11.99),
    ('user007', '신용카드', '2023-09-07', 10.99),
    ('user008', '페이팔', '2023-09-08', 9.99),
    ('user009', '신용카드', '2023-09-09', 12.99),
    ('user010', '페이팔', '2023-09-10', 8.99);

-- review 테이블 데이터
INSERT INTO `review` (`comment_time`, `member_id`, `comment_id`, `comment_detail`, `score`, `contents_code`)
VALUES
    ('2023-09-01 14:30:00', 'user001', 'review001', '인터스텔라는 정말 대단한 영화입니다.', 5, 'movie001'),
    ('2023-09-02 15:45:00', 'user002', 'review002', '어바웃 타임의 시간 여행이 멋져요.', 4, 'movie002'),
    ('2023-09-03 16:20:00', 'user003', 'review003', '포레스트 검프는 감동 그 자체입니다.', 5, 'movie003'),
    ('2023-09-04 18:10:00', 'user004', 'review004', '레옹의 액션은 명작입니다.', 4, 'movie004'),
    ('2023-09-05 20:05:00', 'user005', 'review005', '위대한 쇼맨은 음악과 무용이 최고에요.', 5, 'movie005'),
    ('2023-09-06 22:15:00', 'user006', 'review006', '라라랜드의 노래가 잊혀지지 않아요.', 4, 'movie006'),
    ('2023-09-07 23:40:00', 'user007', 'review007', '인셉션의 스토리는 머리 아프지만 재미있어요.', 4, 'movie007'),
    ('2023-09-08 10:25:00', 'user008', 'review008', '어벤져스: 엔드게임은 화려한 액션의 연속이에요.', 5, 'movie008'),
    ('2023-09-09 12:50:00', 'user009', 'review009', '타이타닉은 영화 역사상의 걸작입니다.', 5, 'movie009'),
    ('2023-09-10 14:55:00', 'user010', 'review010', '쇼생크 탈출은 꼭 봐야 할 영화입니다.', 5, 'movie010');

-- watch 테이블 데이터
INSERT INTO `watch` (`play_date`, `member_id`, `contents_code`, `play_start`, `play_finish`)
VALUES
    ('2023-09-01', 'user001', 'movie001', '20:00:00', '22:30:00'),
    ('2023-09-02', 'user002', 'movie002', '19:45:00', '21:30:00'),
    ('2023-09-03', 'user003', 'movie003', '18:30:00', '21:00:00'),
    ('2023-09-04', 'user004', 'movie004', '21:15:00', '23:00:00'),
    ('2023-09-05', 'user005', 'movie005', '20:30:00', '22:15:00'),
    ('2023-09-06', 'user006', 'movie006', '19:20:00', '21:10:00'),
    ('2023-09-07', 'user007', 'movie007', '22:00:00', '24:00:00'),
    ('2023-09-08', 'user008', 'movie008', '19:00:00', '21:45:00'),
    ('2023-09-09', 'user009', 'movie009', '18:45:00', '21:30:00'),
    ('2023-09-10', 'user010', 'movie010', '20:10:00', '22:45:00');

-- recommend 테이블 데이터
INSERT INTO `recommend` (`member_id`, `contents_code`, `contents_title`, `genre_code`)
VALUES
    ('user001', 'movie002', '어바웃 타임', 'genre002'),
    ('user002', 'movie003', '포레스트 검프', 'genre003'),
    ('user003', 'movie004', '레옹', 'genre004'),
    ('user004', 'movie005', '위대한 쇼맨', 'genre005'),
    ('user005', 'movie006', '라라랜드', 'genre005'),
    ('user006', 'movie007', '인셉션', 'genre001'),
    ('user007', 'movie008', '어벤져스: 엔드게임', 'genre004'),
    ('user008', 'movie009', '타이타닉', 'genre002'),
    ('user009', 'movie010', '쇼생크 탈출', 'genre003'),
    ('user010', 'movie001', '인터스텔라', 'genre001');

-- search 테이블 데이터
INSERT INTO `search` (`member_id`, `search_date`, `detail`)
VALUES
    ('user001', '2023-09-01', 'SF 영화'),
    ('user002', '2023-09-02', '로맨스 영화'),
    ('user003', '2023-09-03', '드라마 영화'),
    ('user004', '2023-09-04', '액션 영화'),
    ('user005', '2023-09-05', '뮤지컬 영화'),
    ('user006', '2023-09-06', '뮤지컬 영화'),
    ('user007', '2023-09-07', 'SF 영화'),
    ('user008', '2023-09-08', '액션 영화'),
    ('user009', '2023-09-09', '드라마 영화'),
    ('user010', '2023-09-10', 'SF 영화');

-- wishlist 테이블 데이터
INSERT INTO `wishlist` (`member_id`, `contents_code`)
VALUES
    ('user001', 'movie002'),
    ('user002', 'movie003'),
    ('user003', 'movie004'),
    ('user004', 'movie005'),
    ('user005', 'movie006'),
    ('user006', 'movie007'),
    ('user007', 'movie008'),
    ('user008', 'movie009'),
    ('user009', 'movie010'),
    ('user010', 'movie001');

-- save 테이블 데이터
INSERT INTO `save` (`member_id`, `contents_code`)
VALUES
    ('user001', 'movie003'),
    ('user002', 'movie004'),
    ('user003', 'movie005'),
    ('user004', 'movie006'),
    ('user005', 'movie007'),
    ('user006', 'movie008'),
    ('user007', 'movie009'),
    ('user008', 'movie010'),
    ('user009', 'movie001'),
    ('user010', 'movie002');

-- party 테이블 데이터
INSERT INTO `party` (`party_code`, `party_name`, `p_maker_id`, `p_member_id`, `party_date`, `contents_code`, `member_id`)
VALUES
    ('party001', '파티 1', 'user001', 'user002', '2023-09-05', 'movie001', 'user003'),
    ('party002', '파티 2', 'user004', 'user005', '2023-09-06', 'movie002', 'user006'),
    ('party003', '파티 3', 'user007', 'user008', '2023-09-07', 'movie003', 'user009'),
    ('party004', '파티 4', 'user010', 'user001', '2023-09-08', 'movie004', 'user002'),
    ('party005', '파티 5', 'user003', 'user004', '2023-09-09', 'movie005', 'user005'),
    ('party006', '파티 6', 'user006', 'user007', '2023-09-10', 'movie006', 'user008');

-- livechat 테이블 데이터
INSERT INTO `livechat` (`chat_id`, `detail`, `date`, `member_id`, `party_code`)
VALUES
    ('chat001', '파티 1의 대화 내용입니다.', '2023-09-05 19:30:00', 'user001', 'party001'),
    ('chat002', '파티 1의 대화 내용입니다.', '2023-09-05 19:45:00', 'user002', 'party001'),
    ('chat003', '파티 1의 대화 내용입니다.', '2023-09-05 20:00:00', 'user003', 'party001'),
    ('chat004', '파티 2의 대화 내용입니다.', '2023-09-06 20:30:00', 'user004', 'party002'),
    ('chat005', '파티 2의 대화 내용입니다.', '2023-09-06 21:00:00', 'user005', 'party002'),
    ('chat006', '파티 3의 대화 내용입니다.', '2023-09-07 21:30:00', 'user007', 'party003'),
    ('chat007', '파티 3의 대화 내용입니다.', '2023-09-07 21:45:00', 'user008', 'party003'),
    ('chat008', '파티 4의 대화 내용입니다.', '2023-09-08 22:00:00', 'user010', 'party004'),
    ('chat009', '파티 4의 대화 내용입니다.', '2023-09-08 22:30:00', 'user001', 'party004'),
    ('chat010', '파티 5의 대화 내용입니다.', '2023-09-09 22:45:00', 'user003', 'party005');

-- purchase 테이블 데이터
INSERT INTO `purchase` (`purchase_id`, `purchase_date`, `contents_code`, `member_id`)
VALUES
    ('purchase001', '2023-09-01', 'movie001', 'user001'),
    ('purchase002', '2023-09-02', 'movie002', 'user002'),
    ('purchase003', '2023-09-03', 'movie003', 'user003'),
    ('purchase004', '2023-09-04', 'movie004', 'user004'),
    ('purchase005', '2023-09-05', 'movie005', 'user005'),
    ('purchase006', '2023-09-06', 'movie006', 'user006'),
    ('purchase007', '2023-09-07', 'movie007', 'user007'),
    ('purchase008', '2023-09-08', 'movie008', 'user008'),
    ('purchase009', '2023-09-09', 'movie009', 'user009'),
    ('purchase010', '2023-09-10', 'movie010', 'user010');
