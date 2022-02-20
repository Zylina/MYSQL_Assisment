use assignment;
select *from trainer_info;
insert into trainer_info values('F0011','Mrs.','Fara Akahtar' , 'Manglore' , 'Core Java' , 'Master of Computer Applications' , 13 , null, 'fara@209');
select trainer_name from trainer_info where trainer_email is  NULL;

output:
# trainer_name
Fara Akahtar


select trainer_id,trainer_name,trainer_track,trainer_location from trainer_info where trainer_experiance>4;
output:
# trainer_id	trainer_name	trainer_track	trainer_location
F001	PANKAJ GHOSH	Java	Pune
F0011	Fara Akahtar	Core Java	Manglore
F002	SANJAY RADHAKRISHNAN	DotNet	Bangalore
F003	VIJAY MATHUR	Mainframe	Chennai
F004	NANDINI NAIR	Java	Kolkata
F005	ANITHA PAREKH	Testing	Hyderabad
F006	MANOJ AGRAWAL	Mainframe	Mumbai
F007	MEENA KULKARNI	Testing	Coimbatore
F009	SAGAR MENON	Java	Mumbai


select *from module_info where module_duration>200;
output:
# Module_Id	module_name	Module_Duration	base_fees
J2SE	Core Java SE 1.6	288	


select trainer_id, trainer_name from trainer_info where trainer_qualification <> 'Bachelor of Technology';
output:
# trainer_id	trainer_name
F0011	Fara Akahtar
F004	NANDINI NAIR
F005	ANITHA PAREKH
F009	SAGAR MENON

select module_name from module_info where module_duration  between 200 and 300;
output:
# module_name
Android 4.0
Core Java SE 1.6

select trainer_id,trainer_name from trainer_info where trainer_name like 'M%';
output:
# trainer_id	trainer_name
F006	MANOJ AGRAWAL
F007	MEENA KULKARNI

select trainer_id,trainer_name from trainer_info where trainer_name like '%O%';
output:
# trainer_id	trainer_name
F001	PANKAJ GHOSH
F006	MANOJ AGRAWAL
F009	SAGAR MENON

select module_name from module_info where module_name is not null;
output:
# module_name
Android 4.0
.Net Framework 4.0
Instructor
Course Material
Learning Effectiveness
Environment
Job Impact
MAR56
Job Impact
The BaseFees Amount for the module name Kantstar
Advanced Java EE 1.6
Core Java SE 1.6
JavaFX 2.1
MS BI Studio 2008
Oracle 10g PL/ SQL
Oracle 10g SQL
MS Share Point
MS SQl Server 2008
Attendees
Course Material
Environment


select module_id , upper(substring(module_name,(module_name-1))) from module_info ; 
output:
# module_id	upper(substring(module_name,(module_name-1)))
ANDRD4	0
DOTNT4	0
EM001	R
EM002	L
EM003	S
EM004	T
EM005	T
HIGR56	6
J233h	T
J23K	R
J2EE	6
J2SE	6
JAVAFX	1
MSBI08	8
O10PLSQL	L
O10SQL	L
SHRPNT	T
SQL2008	8
TM001	S
TM002	L
TM003	T

select *from associate_status;
select curdate();
output:
# curdate()
2022-02-20

select module_id , datediff(curdate(),start_date) from associate_status;
output:
# module_id	datediff(curdate(),start_date)
O10SQL	7737
O10SQL	7737
O10PLSQL	7689
O10PLSQL	7689
J2SE	7124
J2SE	7124
J2EE	5925
J2EE	5925
J2EE	5925
JAVAFX	5922
JAVAFX	5922
SQL2008	5358
SQL2008	5358
MSBI08	4622
MSBI08	4622
ANDRD4	4278
ANDRD4	4278
ANDRD4	3856
O10SQL	7737
O10SQL	7737
O10PLSQL	7689
O10PLSQL	7689
J2SE	7124
J2SE	7124
J2EE	5925
J2EE	5925
J2EE	5925
JAVAFX	5922
JAVAFX	5922
SQL2008	5358
SQL2008	5358
MSBI08	4622
MSBI08	4622
ANDRD4	4278
ANDRD4	4278
ANDRD4	3856

select module_name , module_id , concat(module_name),concat(module_id) from module_info;
output:
# module_name	module_id	concat(module_name)	concat(module_id)
Android 4.0	ANDRD4	Android 4.0	ANDRD4
.Net Framework 4.0	DOTNT4	.Net Framework 4.0	DOTNT4
Instructor	EM001	Instructor	EM001
Course Material	EM002	Course Material	EM002
Learning Effectiveness	EM003	Learning Effectiveness	EM003
Environment	EM004	Environment	EM004
Job Impact	EM005	Job Impact	EM005
MAR56	HIGR56	MAR56	HIGR56
Job Impact	J233h	Job Impact	J233h
The BaseFees Amount for the module name Kantstar	J23K	The BaseFees Amount for the module name Kantstar	J23K
Advanced Java EE 1.6	J2EE	Advanced Java EE 1.6	J2EE
Core Java SE 1.6	J2SE	Core Java SE 1.6	J2SE
JavaFX 2.1	JAVAFX	JavaFX 2.1	JAVAFX
MS BI Studio 2008	MSBI08	MS BI Studio 2008	MSBI08
Oracle 10g PL/ SQL	O10PLSQL	Oracle 10g PL/ SQL	O10PLSQL
Oracle 10g SQL	O10SQL	Oracle 10g SQL	O10SQL
MS Share Point	SHRPNT	MS Share Point	SHRPNT
MS SQl Server 2008	SQL2008	MS SQl Server 2008	SQL2008
Attendees	TM001	Attendees	TM001
Course Material	TM002	Course Material	TM002
Environment	TM003	Environment	TM003

select upper(module_name) from module_info;
output:
# upper(module_name)
ANDROID 4.0
.NET FRAMEWORK 4.0
INSTRUCTOR
COURSE MATERIAL
LEARNING EFFECTIVENESS
ENVIRONMENT
JOB IMPACT
MAR56
JOB IMPACT
THE BASEFEES AMOUNT FOR THE MODULE NAME KANTSTAR
ADVANCED JAVA EE 1.6
CORE JAVA SE 1.6
JAVAFX 2.1
MS BI STUDIO 2008
ORACLE 10G PL/ SQL
ORACLE 10G SQL
MS SHARE POINT
MS SQL SERVER 2008
ATTENDEES
COURSE MATERIAL
ENVIRONMENT

 select substring(module_name,1,3) from module_info;
 output:
 # substring(module_name,1,3)
And
.Ne
Ins
Cou
Lea
Env
Job
MAR
Job
The
Adv
Cor
Jav
MS 
Ora
Ora
MS 
MS 
Att
Cou
Env

 alter table module_info add base_fees int;
 alter table module_info modify base_fees varchar(40);
 select *from module_info;
 insert into module_info values('J233h', 'Job Impact',30,4000),('HIGR56','MAR56',45,6000);
 insert into module_info values ('J23K','The BaseFees Amount for the module name Kantstar',34,5000);
 alter table module_info modify module_name varchar(200);
 select   module_name,concat(base_fees) from module_info where module_id = 'J23K'; 
 output:
 # module_name	concat(base_fees)
The BaseFees Amount for the module name Kantstar	5000

 select count(*) as total_records from module_info;
 output:
 # total_records
21

 
 

