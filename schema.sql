drop database if exists employeetrackdb;

create database employeetrackdb;

use employeetrackdb;

create table department (
    id int not null auto_increment,
	`name` varchar(30) not null,
    primary key (id)
);

create table `role` (
    id int not null auto_increment,
    title varchar(30) not null,
    salary decimal (10, 4) not null,
    department_id integer(10) not null,
    primary key (id)
);

create table employee (
    id int not null auto_increment,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    role_id integer(10) not null,
    manager_id integer(10),
    primary key (id)
);

INSERT INTO
    employee (first_Name, last_name, role_id, manager_id)
VALUES
    ("john", "doe", 10, "20"),
    ("mike", "chan", 11, "10"),
    ("ashley", "rodriguez", 20, null),
    ("kevin", "tupik", 21, "20"),
    ("malia", "brown", 31, null),
    ("sarah", "lourd", 40, null),
    ("tom", "allen", 41, "40"),
    ("christian", "eckenrode", 20, "11");

INSERT INTO
    department (`name`)
VALUES
    ("sales"),
    ("engineering"),
    ("finance"),
    ("legal");

INSERT INTO
    `role` (id, title, salary, department_id)
VALUES
    (10, "sales lead", 100000, 1),
    (11, "salesperson", 80000, 1),
    (20, "lead engineer", 150000, 2),
    (21, "software engineer", 120000, 2),
    (31, "accountant", 125000, 3),
    (40, "leagal team lead", 250000, 4),
    (41, "lawyer", 190000, 4);