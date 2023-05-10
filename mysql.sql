 create table hmsdoctor(
 did int primary key AUTO_INCREMENT ,
 dob varchar(50),
 gender varchar(50),
 specialization varchar(50),
 experience varchar(50),
 language varchar(50),
 mobile int,
 emailid varchar(50),
 schedule varchar(50)
);

create table hmspatient (
pid int  primary key AUTO_INCREMENT,
name varchar(50),
dob date,
gender varchar(50),
bloodgroup varchar(50),
emailid varchar(50),
address varchar(50),
mobile varchar(10),
cghs_private varchar(50)
);
 
 create table hmsappointment (
 aid int  primary key AUTO_INCREMENT ,
 pid int ,
 specialization varchar(50),
 did int ,
 doctorname varchar(50),
 consultantfee int,
 date timestamp default (current_timestamp()),
 foreign key(pid) references hmspatient(pid),
 foreign key(did) references hmsdoctor(did)
 );
 
 
 create table hmsprescription(
	priid int  primary key AUTO_INCREMENT,
	pid int ,
	medicine varchar(50),
	did int ,
	remark varchar(100),
	advice varchar(100),
	
	foreign key(pid) references hmspatient(pid),
     foreign key(did) references hmsdoctor(did)
	);
	
create table admin(
 aid int primary key AUTO_INCREMENT,
 name varchar(50),
 dob varchar(50),
 gender varchar(50),
 emailid varchar(50),
 mobile int ,
 address varchar(50));
 
 create table bill(
 billno int primary key AUTO_INCREMENT ,
 pid int ,
 date timestamp default (current_timestamp()),
 amount DECIMAL(10, 2),
 foreign key(pid) references hmspatient(pid)
 );