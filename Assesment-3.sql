use assignment;
select *from trainer_info;
insert into trainer_info values('F0011','Mrs.','Fara Akahtar' , 'Manglore' , 'Core Java' , 'Master of Computer Applications' , 13 , null, 'fara@209');

/*Write a query which fetches and displays all the trainers who don’t have an email. */
select trainer_name from trainer_info where trainer_email is  NULL;

output:
# trainer_name
Fara Akahtar

/*Write a query which displays the id, name, track and location of all trainers who has Experience > 4 years.*/

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

/*Select all the modules whose duration > 200. */
select *from module_info where module_duration>200;
output:
# Module_Id	module_name	Module_Duration	base_fees
J2SE	Core Java SE 1.6	288	

/*Display the trainer Id, trainer name whose trainer qualification is not ‘Bachelor of Technology’.*/
select trainer_id, trainer_name from trainer_info where trainer_qualification <> 'Bachelor of Technology';
output:
# trainer_id	trainer_name
F0011	Fara Akahtar
F004	NANDINI NAIR
F005	ANITHA PAREKH
F009	SAGAR MENON

/*Select all the modules whose duration is in the range 200 and 300 */
select module_name from module_info where module_duration  between 200 and 300;
output:
# module_name
Android 4.0
Core Java SE 1.6

/*Display the trainer Id, trainer name whose first name starts with ‘M’ */
select trainer_id,trainer_name from trainer_info where trainer_name like 'M%';
output:
# trainer_id	trainer_name
F006	MANOJ AGRAWAL
F007	MEENA KULKARNI

/*Display the trainer Id, trainer name whose first name has a character ‘O’ */
select trainer_id,trainer_name from trainer_info where trainer_name like '%O%';
output:
# trainer_id	trainer_name
F001	PANKAJ GHOSH
F006	MANOJ AGRAWAL
F009	SAGAR MENON

/*Display the names of all the modules where the module name is not null */
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

/*Develop a query which will display the module name and module Infra fees of the entire module. The infra fee should be rounded to 2 decimal point.*/
select module_name , round(base_fees,2) from module_info;
output:
# module_name	round(base_fees,2)
Android 4.0	
.Net Framework 4.0	
Instructor	
Course Material	
Learning Effectiveness	
Environment	
Job Impact	
MAR56	6000
Job Impact	4000
The BaseFees Amount for the module name Kantstar	5000
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


/*Develop a query which will list all the module id and module names in Module_Info table where in the first letter should be capital letter.*/
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
/*Develop a query which will display the module id and the number of days between the current date and module start date in associate_status table */
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

/*Develop a query which will concatenate the Module Name and Module id in the following format and display all the modules in the module_info table.*/
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

/*Develop a query which will display all the Module Name in upper case.*/
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

/*Develop a query which will display all the characters between 1 and 3 of the Module name column for all the modules in the Module_Info table.*/
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

/*: Develop a query calculate average of all the module base fees, any records whose base fee is null needs to be considered as zero.*/
select avg(base_fees) from module_info;
output:
# avg(base_fees)
5000

 alter table module_info add base_fees int;
 alter table module_info modify base_fees varchar(40);
 select *from module_info;
 insert into module_info values('J233h', 'Job Impact',30,4000),('HIGR56','MAR56',45,6000);
 insert into module_info values ('J23K','The BaseFees Amount for the module name Kantstar',34,5000);
 
 /*Write a query which will convert Base_Fees into Varchar from the Module_info table.And display in the following format
‘The Base Fees Amount for the module name’ <Module Name>’ is ’<Base Fees>*/

 alter table module_info modify module_name varchar(200);
 select   module_name,concat(base_fees) from module_info where module_id = 'J23K'; 
 output:
 # module_name	concat(base_fees)
The BaseFees Amount for the module name Kantstar	5000

/*: Write a query which will display the total number of records in Module_Info table.*/
 select count(*) as total_records from module_info;
 output:
 # total_records
21

 
 

