
/*Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками
*/


create table employees
(
id serial primary key,
employee_name VARCHAR(50) not null
);

select * from employees;

insert into employees
(employee_name)
values
('Ivan'),
('Petr'),
('Olga'),
('Anastasiya'),
('Andrey'),
('Vladimir'),
('Ekaterina'),
('Maksim'),
('Konstantin'),
('Kirill'),
('Zhanna_'),
('Veniamin'),
('Oleg'),
('Alyona'),
('Veronika'),
('Dariya'),
('Svetlana'),
('Valentana'),
('Tomara'),
('Alina'),
('Nataliya'),
('Angelina'),
('Juliya'),
('Ilya'),
('Roman'),
('Anatoliy'),
('Platon'),
('Alevtina'),
('Evgeniy'),
('Alekseya'),
('Aleksandr'),
('Irina'),
('Zhasmin'),
('Lola'),
('Oksana'),
('Zoya'),
('Vadim'),
('Andrey'),
('Pavel'),
('Katya'),
('Mariya'),
('Samira'),
('Vitaliy'),
('Dmitriy'),
('Egor'),
('Valentin'),
('Konstantin'),
('Artem'),
('Boris'),
('Vasily'),
('Georgy'),
('Denis'),
('Leonid'),
('Mikhail'),
('Nikita'),
('Nikolay'),
('Ruslan'),
('Sergey'),
('Stepan'),
('Timur'),
('Fedor'),
('Eduard'),
('Yuri'),
('Alisa'),
('Anastasia'),
('Anna'),
('Antonina'),
('Valeria'),
('Vera'),
('Viktoria');



/*Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:*/

create table salary
(
id serial primary key,
monthly_salary Integer not null
);

select * from salary;

insert INTO salary
(monthly_salary)
values 
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);


/*Таблица employee_salary
Создать таблицу employee_salary
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/

create table employee_salary
(
id Serial primary key,
employee_id Int not null unique,
salary_id Int not null
);

select * from employee_salary;

/*Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/

insert into employee_salary
(employee_id, salary_id)
values
(1,1),
(5,5),
(2,3),
(6,2),
(3,4),
(10,11),
(8,10),
(4,6),
(7,7),
(9,9),
(77,12),
(12,8),
(71,13),
(72,14),
(75,15),
(78,16),
(76,1),
(80,2),
(85,3),
(13,14),
(14,15),
(15,16),
(81,11),
(99,10),
(16,5),
(17,6),
(18,2),
(19,13),
(20,7),
(21,12),
(22,11),
(23,1),
(24,9),
(35,12),
(36,3),
(37,4),
(38,6),
(39,11),
(40,12),
(41,19);


/*Таблица roles

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:*/

create table roles (
id serial primary key,
role_name int not null
);

alter table roles 
alter column role_name type varchar (30);

select * from roles;

insert into roles 
(role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
  		('Senior Automation QA engineer');


/*Таблица roles_employee
Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:*/
  	
  	create table roles_employee(
  	id serial primary key,
  	employee_id int not null unique,
  	role_id int not null,
  	 foreign key (employee_id)
  		references employees (id),
  	 foreign key (role_id)
  		references roles (id)
  	);


select * from roles_employee;


insert into roles_employee (employee_id, role_id)
values  (3,1),
		(1,2),
		(4,5),
		(5,8),
		(7,2),
		(9,1),
		(11,10),
		(13,11),
		(22,13),
		(32,12),
		(65,14),
		(36,12),
		(28,14),
		(10,15),
		(20,3),
		(30,3),
		(40,1),
		(50,4),
		(60,17),
		(70,18),
		(35,15),
		(37,11),
		(47,13),
		(48,17),
		(51,14),
		(52,16),
		(53,19),
		(54,20),
		(56,15),
		(57,12),
		(43,14),
		(8,15),
		(68,9),
		(21,7),
		(55,16),
		(49,3),
		(46,6),
		(38,7),
		(64,8),
		(19,14); 



