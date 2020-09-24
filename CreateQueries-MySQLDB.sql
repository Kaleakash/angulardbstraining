create database profile_contact_db;
use profile_contact_db;

create table profile(
	userid int auto_increment, 
	name varchar(15), 
	password varchar(15), 
	phone bigint, 
	dob date, 
	constraint profile__pk primary key(userid))auto_increment=5000;

insert into profile(name,password,phone,dob) values('Raj','Kumar','9876543210','2010-02-10');
insert into profile(name,password,phone,dob) values('Ravi','Patil','9123456780','2012-06-03');
insert into profile(name,password,phone,dob) values('Seeta','Kumari','9996655332','2014-08-04');

create table profile_contacts(
	id int auto_increment, 
	useridref int, 
	name varchar(15), 
	phone bigint, 
	constraint profile_contacts_pk primary key(id), 
	constraint profile_contacts_fk foreign key(useridref) references profile(userid));

insert into profile_contacts(useridref,name,phone) values(5000,'Ajay','9653476532');
insert into profile_contacts(useridref,name,phone) values(5000,'Amar','9653476432');
insert into profile_contacts(useridref,name,phone) values(5000,'Vijay','9653496532');
insert into profile_contacts(useridref,name,phone) values(5001,'Dinesh','9658976532');
insert into profile_contacts(useridref,name,phone) values(5001,'Dinker','9673476532');
insert into profile_contacts(useridref,name,phone) values(5002,'Mahesh','9693476532');




