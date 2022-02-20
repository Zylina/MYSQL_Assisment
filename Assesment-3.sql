use assignment;
select *from trainer_info;
insert into trainer_info values('F0011','Mrs.','Fara Akahtar' , 'Manglore' , 'Core Java' , 'Master of Computer Applications' , 13 , null, 'fara@209');
select trainer_name from trainer_info where trainer_email is  NULL;

select trainer_id,trainer_name,trainer_track,trainer_location from trainer_info where trainer_experiance>4;

select *from module_info where module_duration>200;

select trainer_id, trainer_name from trainer_info where trainer_qualification <> 'Bachelor of Technology';
select module_name from module_info where module_duration  between 200 and 300;
select trainer_id,trainer_name from trainer_info where trainer_name like 'M%';
select trainer_id,trainer_name from trainer_info where trainer_name like '%O%';
select module_name from module_info where module_name is not null;

select module_id , upper(substring(module_name,(module_name-1))) from module_info ; 
select *from associate_status;
select curdate();

select module_id datediff(curdate(),start_date) from associate_status;
select module_name , module_id , concat(module_name),concat(module_id) from module_info;
select upper(module_name) from module_info;
 select substring(module_name,1,3) from module_info;
 alter table module_info add base_fees int;
 alter table module_info modify base_fees varchar(40);
 select *from module_info;
 insert into module_info values('J233h', 'Job Impact',30,4000),('HIGR56','MAR56',45,6000);
 insert into module_info values ('J23K','The BaseFees Amount for the module name Kantstar',34,5000);
 alter table module_info modify module_name varchar(200);
 select   module_name,concat(base_fees) from module_info where module_id = 'J23K'; 
 
 select count(*) as total_records from module_info;
 
 

