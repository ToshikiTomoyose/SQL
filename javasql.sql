USE example;
CREATE TABLE employee( 
  id varchar (10) PRIMARY KEY
  , name varchar (10) DEFAULT NULL
  , age int
);

insert into employee value ('EMP001', '佐川真司', '20');
insert into employee value ('EMP002', '本田圭一', '22');

