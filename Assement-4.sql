use assignment;
select *from trainer_info;
/*Write a query to display trainer IDs for all associates whose names contain the letter 'i'.  */
select trainer_id from trainer_info where trainer_name in( select trainer_name from trainer_info where trainer_name like '%i%');

output:
# trainer_id
F002
F003
F004
F005
F007


/*Write a query to display trainer IDs for all associates whose names not contain the letter 'i'.  */
select trainer_id from trainer_info where trainer_name not in( select trainer_name from trainer_info where trainer_name like '%i%');
output:
# trainer_id
F001
F006
F009


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

/*Write a query to display trainer ID and trainer rating for the trainers who handled J2EE module. Hint: Use trainer_feedback and associate status tables.*/
 select trainer_id, trainer_rating from trainer_feedback where module_id in (select module_id from associate_status where module_id = 'J2EE');
 
 output:
 trainer_id  trainer_rating
 F001         nice
 F006         amazing
 
create table student (registration_number int primary key, name varchar(30), address varchar(40), subject varchar(40),marks int);
desc student;
insert into student(registration_number,name,address,subject,marks) values(300,'hema','varthur','E!061P',80),(301,'anjali','bihar','E105IP',75),
(302,'swapnil','kompalli','E234R',89);
select *from student;

output:
# registration_number	name	address	subject	marks
300	hema	varthur	E!061P	80
301	anjali	bihar	E105IP	75
302	swapnil	kompalli	E234R	89
303	zylina	marthalli	E105IP	60

/* Write a query to display trainer ID and trainer rating for the trainers who handled J2EE module. Hint: Use trainer_feedback and associate status tables.*/
select name,registration_number from student where marks in(select max(marks) from student where subject='E105IP');
ouput:
# name	registration_number
anjali	301

insert into student(registration_number,name,address,subject,marks) values(303,'zylina','marthalli','E105IP',60);

/* Write a query to display the student name and registration number of the student who has secured second highest marks in the subject El05lP subject*/
select name,registration_number from student where marks in(select max(marks) from student where marks < (select max(marks) from student where subject='E105IP'));
ouput:
# name	registration_number
zylina	303

select *from trainer_info;
select *from batch_info;
/* Write a query to display trainer_id and batch_id details in such a way that we get all possible combinations of trainer IDs and batch IDs.*/
select t.trainer_id , b.batch_id from trainer_info as t cross join batch_info as b on t.trainer_id != b.batch_id;
output:
# trainer_id	batch_id
F009	B001
F007	B001
F006	B001
F005	B001
F004	B001
F003	B001
F002	B001
F001	B001
F009	B002
F007	B002
F006	B002
F005	B002
F004	B002
F003	B002
F002	B002
F001	B002
F009	B003
F007	B003
F006	B003
F005	B003
F004	B003
F003	B003
F002	B003
F001	B003
F009	B004
F007	B004
F006	B004
F005	B004
F004	B004
F003	B004
F002	B004
F001	B004
F009	B005
F007	B005
F006	B005
F005	B005
F004	B005
F003	B005
F002	B005
F001	B005
F009	B006
F007	B006
F006	B006
F005	B006
F004	B006
F003	B006
F002	B006
F001	B006
F009	B007
F007	B007
F006	B007
F005	B007
F004	B007
F003	B007
F002	B007
F001	B007
F009	B008
F007	B008
F006	B008
F005	B008
F004	B008
F003	B008
F002	B008
F001	B008
F009	B009
F007	B009
F006	B009
F005	B009
F004	B009
F003	B009
F002	B009
F001	B009


select *from associate_status;
/* Write a query to display the records from all columns of tables associate_status and batch_info, wherever the batch_id in the two tables matches.*/
select associate_id, module_id,trainer_id,start_date,end_date ,batch_owner , Batch_BU_Name  from associate_status as a inner join batch_info as b on
 a.Batch_Id = b.Batch_Id;
 
 output:
 # associate_id	module_id	trainer_id	start_date	end_date	batch_owner	Batch_BU_Name
A001	O10SQL	F001	2000-12-15	2000-12-25	MRS.SWATI ROY	MSP
A002	O10SQL	F001	2000-12-15	2000-12-25	MRS.SWATI ROY	MSP
A001	O10SQL	F001	2000-12-15	2000-12-25	MRS.SWATI ROY	MSP
A002	O10SQL	F001	2000-12-15	2000-12-25	MRS.SWATI ROY	MSP
A001	O10PLSQL	F002	2001-02-01	2001-02-12	MRS.ARURNA K	HEALTHCARE
A002	O10PLSQL	F002	2001-02-01	2001-02-12	MRS.ARURNA K	HEALTHCARE
A001	O10PLSQL	F002	2001-02-01	2001-02-12	MRS.ARURNA K	HEALTHCARE
A002	O10PLSQL	F002	2001-02-01	2001-02-12	MRS.ARURNA K	HEALTHCARE
A001	J2SE	F003	2002-08-20	2002-10-25	MR.RAJESH KRISHNAN	LIFE SCIENCES
A002	J2SE	F003	2002-08-20	2002-10-25	MR.RAJESH KRISHNAN	LIFE SCIENCES
A001	J2SE	F003	2002-08-20	2002-10-25	MR.RAJESH KRISHNAN	LIFE SCIENCES
A002	J2SE	F003	2002-08-20	2002-10-25	MR.RAJESH KRISHNAN	LIFE SCIENCES
A001	J2EE	F004	2005-12-01	2005-12-25	MR.SACHIN SHETTY	BFS
A002	J2EE	F004	2005-12-01	2005-12-25	MR.SACHIN SHETTY	BFS
A004	J2EE	F004	2005-12-01	2005-12-25	MR.SACHIN SHETTY	BFS
A001	J2EE	F004	2005-12-01	2005-12-25	MR.SACHIN SHETTY	BFS
A002	J2EE	F004	2005-12-01	2005-12-25	MR.SACHIN SHETTY	BFS
A004	J2EE	F004	2005-12-01	2005-12-25	MR.SACHIN SHETTY	BFS
A005	JAVAFX	F006	2005-12-04	2005-12-20	MR.RAMESH PATEL	COMMUNICATIONS
A006	JAVAFX	F006	2005-12-04	2005-12-20	MR.RAMESH PATEL	COMMUNICATIONS
A005	JAVAFX	F006	2005-12-04	2005-12-20	MR.RAMESH PATEL	COMMUNICATIONS
A006	JAVAFX	F006	2005-12-04	2005-12-20	MR.RAMESH PATEL	COMMUNICATIONS
A006	SQL2008	F007	2007-06-21	2007-06-28	MRS.SUSAN CHERIAN	RETAIL & HOSPITALITY
A007	SQL2008	F007	2007-06-21	2007-06-28	MRS.SUSAN CHERIAN	RETAIL & HOSPITALITY
A006	SQL2008	F007	2007-06-21	2007-06-28	MRS.SUSAN CHERIAN	RETAIL & HOSPITALITY
A007	SQL2008	F007	2007-06-21	2007-06-28	MRS.SUSAN CHERIAN	RETAIL & HOSPITALITY
A002	MSBI08	F006	2009-06-26	2009-06-29	MRS.SAMPADA JAIN	MSP
A004	MSBI08	F006	2009-06-26	2009-06-29	MRS.SAMPADA JAIN	MSP
A002	MSBI08	F006	2009-06-26	2009-06-29	MRS.SAMPADA JAIN	MSP
A004	MSBI08	F006	2009-06-26	2009-06-29	MRS.SAMPADA JAIN	MSP
A002	ANDRD4	F005	2010-06-05	2010-06-28	MRS.KAVITA REGE	BPO
A005	ANDRD4	F005	2010-06-05	2010-06-28	MRS.KAVITA REGE	BPO
A002	ANDRD4	F005	2010-06-05	2010-06-28	MRS.KAVITA REGE	BPO
A005	ANDRD4	F005	2010-06-05	2010-06-28	MRS.KAVITA REGE	BPO
A006	ANDRD4	F005	2011-08-01	2011-08-20	MR.RAVI SEJPAL	MSP
A006	ANDRD4	F005	2011-08-01	2011-08-20	MR.RAVI SEJPAL	MSP

 
/*Write a query to display the associate IDs of the associates tagged to trainers and all the trainer IDs irrespective of whether there are any associates tagged to them or not. Hint: Use associate_status and trainer_info tables.*/
 select a.associate_id , a.trainer_id  from associate_status as a left outer join trainer_info as t on a.Trainer_Id = t.Trainer_Id;
 output:
 # associate_id	trainer_id
A001	F001
A002	F001
A001	F002
A002	F002
A001	F003
A002	F003
A001	F004
A002	F004
A004	F004
A005	F006
A006	F006
A006	F007
A007	F007
A002	F006
A004	F006
A002	F005
A005	F005
A006	F005
A001	F001
A002	F001
A001	F002
A002	F002
A001	F003
A002	F003
A001	F004
A002	F004
A004	F004
A005	F006
A006	F006
A006	F007
A007	F007
A002	F006
A004	F006
A002	F005
A005	F005
A006	F005

