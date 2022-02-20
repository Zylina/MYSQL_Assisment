use assignment;
select *from trainer_info;
/*Write a query to display trainer IDs for all associates whose names contain the letter 'i'.  */
select trainer_id from trainer_info where trainer_name in( select trainer_name from trainer_info where trainer_name like '%i%');

/*Write a query to display trainer IDs for all associates whose names not contain the letter 'i'.  */
select trainer_id from trainer_info where trainer_name not in( select trainer_name from trainer_info where trainer_name like '%i%');

select *from associate_status;
select *from trainer_feedback;
select *from module_info;
select *from questions;
select *from batch_info;
insert into `trainer_feedback` (`Trainer_id`,`question_id`,`batch_id`,`module_id`,`trainer_rating`) values ('F001','Q001','B001','EM001','5'),
('F002','Q002','B002','EM001','3'),
('F003','Q003','B003','EM002','2'),
('F004','Q004','B004','EM002','6'),
('F005','Q005','B005','EM002','7'),
('F006','Q006','B006','EM002','8'),
('F007','Q007','B007','EM003','9'),
('F008','Q008','B008','EM003','8'),
('F009','Q009','B009','EM004','3');
 select trainer_id, trainer_rating from trainer_feedback where module_id in (select module_id from associate_status where module_id = 'J2EE');
create table student (registration_number int primary key, name varchar(30), address varchar(40), subject varchar(40),marks int);
desc student;
insert into student(registration_number,name,address,subject,marks) values(300,'hema','varthur','E!061P',80),(301,'anjali','bihar','E105IP',75),
(302,'swapnil','kompalli','E234R',89);
select *from student;
select name,registration_number from student where marks in(select max(marks) from student where subject='E105IP');
insert into student(registration_number,name,address,subject,marks) values(303,'zylina','marthalli','E105IP',60);
select name,registration_number from student where marks in(select max(marks) from student where marks <(select max(marks) from student where subject='E105IP'));

select *from trainer_info;
select *from batch_info;
select t.trainer_id , b.batch_id from trainer_info as t cross join batch_info as b on t.trainer_id != b.batch_id;

select *from associate_status;
select associate_id, module_id,trainer_id,start_date,end_date ,batch_owner , Batch_BU_Name  from associate_status as a inner join batch_info as b on
 a.Batch_Id = b.Batch_Id;
 

 select a.associate_id , a.trainer_id  from associate_status as a left outer join trainer_info as t on a.Trainer_Id = t.Trainer_Id;
