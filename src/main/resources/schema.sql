/* ユーザーマスタ */
CREATE TABLE IF NOT EXISTS m_user(
	user_id varchar(50) PRIMARY KEY,
	password varchar(100),
	user_name varchar(50),
	birthday date,
	age int,
	gender int,
	department_id int,
	ROLE varchar(50)
);

/* 部署マスタ */
CREATE TABLE IF NOT EXISTS m_department(
	department_id int PRIMARY KEY,
	department_name varchar(50)
);

/* 給料テーブル */
CREATE TABLE IF NOT EXISTS t_salary(
	user_id varchar(50),
	year_month varchar(50),
	salary int,
	PRIMARY KEY(user_id, year_month)
);
