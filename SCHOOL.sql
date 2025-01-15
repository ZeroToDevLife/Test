-- 학교 데이터베이

-- 학생 (학번, 이름, 주소, 전화번호)
-- 수업 (수업코드, 수업 이름, 교실, 담당교사)
-- 교실 (교실번호, 층, 좌석)
-- 교사 (교번, 이름, 주소, 전화번호, 직책)

-- 개발자 계정 : school_developer@% / school123

-- 1. 학교 데이터베이스 생성
CREATE DATABASE school;
USE school;
CREATE TABLE student (
	student_number VARCHAR(5),
    name VARCHAR(15),
    address TEXT,
    tel_number VARCHAR(13)
);
CREATE TABLE class (
	class_code VARCHAR(3),
    name VARCHAR(25),
    class_room INT,
    charge_teacher VARCHAR(10)
);

CREATE TABLE class_room (
	class_room_number INT,
    floor INT,
    seats INT
);

CREATE TABLE teacher (
	teacher_number VARCHAR(10),
    name VARCHAR(15),
    address TEXT,
    tel_number VARCHAR(13),
    position VARCHAR(50)
);
CREATE USER 'school_developer'@'%' IDENTIFIED BY 'school123';
CREATE USER 'school_developer'@'localhost' IDENTIFIED BY 'school123';