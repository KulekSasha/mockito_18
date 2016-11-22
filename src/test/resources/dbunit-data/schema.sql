DROP TABLE IF EXISTS PERSON;
DROP TABLE IF EXISTS PERSON_ROLE;

create table PERSON_ROLE
  (ROLE_ID identity NOT NULL,
  NAME varchar(50) NOT NULL,

  PRIMARY KEY (ROLE_ID));

create table PERSON
  (PERSON_ID identity NOT NULL,
  ROLE_ID bigint NOT NULL,
  LOGIN varchar(50) NOT NULL,
  PASSWORD varchar(50) NOT NULL,
  EMAIL varchar(50),
  FIRST_NAME varchar(50) NOT NULL,
  LAST_NAME varchar(50) NOT NULL,
  BIRTHDAY date NOT NULL,

  FOREIGN KEY (ROLE_ID) REFERENCES public.PERSON_ROLE(ROLE_ID),
  PRIMARY KEY (PERSON_ID));