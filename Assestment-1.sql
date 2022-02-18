use assignment;
CREATE TABLE Trainer_Info (
  Trainer_Id varchar(20) primary key,
  Salutation varchar(7),
  Trainer_Name varchar(30),
  Trainer_Location varchar(30),
  Trainer_Track varchar(15),
  Trainer_Qualification varchar(100),
  Trainer_Experiance integer(11),
  Trainer_Email varchar (100),
  Trainer_Password varchar (20)
);
desc Trainer_Info;

output:
Field	Type	Null	Key	Default	Extra
Salutation	varchar(7)	YES			
Trainer_Email	varchar(100)	YES			
Trainer_Experiance	int	YES			
Trainer_Id	varchar(20)	NO	PRI		
Trainer_Location	varchar(30)	YES			
Trainer_Name	varchar(30)	YES			
Trainer_Password	varchar(20)	YES			
Trainer_Qualification	varchar(100)	YES			
Trainer_Track	varchar(15)	YES			


create table Batch_Info(
  Batch_Id	varchar(20) primary key,
  Batch_Owner	varchar(30),
  Batch_BU_Name	varchar(30)
);
desc Batch_Info;
OUTPUT:
Field	Type	Null	Key	Default	Extra
Batch_Id	varchar(20)	NO	PRI		
Batch_Owner	varchar(30)	YES			
Batch_BU_Name	varchar(30)	YES			


create table Module_Info(
  Module_Id	varchar(20) primary key,
  Module_Name	varchar(40),
  Module_Duration	Integer(11)
);
desc Module_Info;
OUTPUT:
# Field	Type	Null	Key	Default	Extra
Module_Id	varchar(20)	NO	PRI		
Module_Name	varchar(40)	YES			
Module_Duration	int	YES			

create table Associate_Info(
  Associate_Id	varchar(20) primary key,
  Salutation	varchar(7),
  Associate_Name varchar(30),
  Associate_Location	varchar(30),
  Associate_Track	varchar(15),
  Associate_Qualification	varchar(200),
  Associate_Email	varchar(100),
  Associate_Password varchar(20)
);
 desc Associate_Info;
 OUTPUT:
 # Field	Type	Null	Key	Default	Extra
Associate_Id	varchar(20)	NO	PRI		
Salutation	varchar(7)	YES			
Associate_Name	varchar(30)	YES			
Associate_Location	varchar(30)	YES			
Associate_Track	varchar(15)	YES			
Associate_Qualification	varchar(200)	YES			
Associate_Email	varchar(100)	YES			
Associate_Password	varchar(20)	YES			

 
 
create table Questions(
  Question_Id	varchar(20) primary key,
  Module_Id	varchar(20),
  Question_Text	varchar(900),
  FOREIGN KEY (Module_Id) REFERENCES Module_Info(Module_Id)
);
desc Questions;

OUTPUT:
# Field	Type	Null	Key	Default	Extra
Question_Id	varchar(20)	NO	PRI		
Module_Id	varchar(20)	YES	MUL		
Question_Text	varchar(900)	YES			


create table Associate_Status(
  Associate_Id varchar(20) ,
  Module_Id	varchar(20),
  Batch_Id varchar(20),
  Trainer_Id varchar(20),
  Start_Date	varchar(20),
  End_Date	varchar(20),
  FOREIGN KEY (Associate_Id) REFERENCES Associate_Info(Associate_Id),
  FOREIGN KEY (Module_Id) REFERENCES Module_Info(Module_Id),
   FOREIGN KEY (Batch_Id) REFERENCES Batch_Info(Batch_Id),
  FOREIGN KEY (Trainer_Id) REFERENCES Trainer_Info(Trainer_Id)
 
);
desc Associate_Status;
OUTPUT:
# Field	Type	Null	Key	Default	Extra
Associate_Id	varchar(20)	YES	MUL		
Module_Id	varchar(20)	YES	MUL		
Batch_Id	varchar(20)	YES	MUL		
Trainer_Id	varchar(20)	YES	MUL		
Start_Date	varchar(20)	YES			
End_Date	varchar(20)	YES			


create table Trainer_Feedback(
  Trainer_Id	varchar(20) primary key,
  Question_Id	varchar(20),
  Batch_Id varchar(20),
  Module_Id	varchar(20),
  Trainer_Rating Integer(11),
  FOREIGN KEY (Question_Id) REFERENCES Questions(Question_Id),
  FOREIGN KEY (Module_Id) REFERENCES Module_Info(Module_Id),
   FOREIGN KEY (Batch_Id) REFERENCES Batch_Info(Batch_Id),
  FOREIGN KEY (Trainer_Id) REFERENCES Trainer_Info(Trainer_Id)
);
desc Trainer_Feedback;

OUTPUT:
# Field	Type	Null	Key	Default	Extra
Trainer_Id	varchar(20)	NO	PRI		
Question_Id	varchar(20)	YES	MUL		
Batch_Id	varchar(20)	YES	MUL		
Module_Id	varchar(20)	YES	MUL		
Trainer_Rating	int	YES			


create table Associate_Feedback (
  Associate_Id varchar(20) primary key,
  Question_Id	varchar(20),
  Module_Id	varchar(20),
  Associate_Rating Integer(11),
  FOREIGN KEY (Question_Id) REFERENCES Questions(Question_Id),
  FOREIGN KEY (Module_Id) REFERENCES Module_Info(Module_Id),
  FOREIGN KEY (Associate_Id) REFERENCES Associate_Info(Associate_Id)
);
desc Associate_Feedback;
OUTPUT:
# Field	Type	Null	Key	Default	Extra
Associate_Id	varchar(20)	NO	PRI		
Question_Id	varchar(20)	YES	MUL		
Module_Id	varchar(20)	YES	MUL		
Associate_Rating	int	YES			



create table Login_Details(
  User_Id	varchar(20) primary key,
  User_Password	varchar(20)
);
desc Login_Details;

OUTPUT:
# Field	Type	Null	Key	Default	Extra
User_Id	varchar(20)	NO	PRI		
User_Password	varchar(20)	YES			
