--------------------------------------------------------
--  File created - Thursday-March-31-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table APPLICATIONSTATUS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."APPLICATIONSTATUS" 
   (	"USERID" VARCHAR2(20 BYTE), 
	"JOBID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CANDIDATE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CANDIDATE" 
   (	"CANDIDATEID" VARCHAR2(20 BYTE), 
	"FIRSTNAME" VARCHAR2(20 BYTE), 
	"LASTNAME" VARCHAR2(20 BYTE), 
	"GPA" FLOAT(126), 
	"DEGREE" VARCHAR2(20 BYTE), 
	"MAJOR" VARCHAR2(20 BYTE), 
	"SKILLS" VARCHAR2(50 BYTE), 
	"UNIVERSITY" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table JOB
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."JOB" 
   (	"JOBID" VARCHAR2(10 BYTE), 
	"DESCRIPTION" VARCHAR2(1000 BYTE), 
	"POSTEDON" DATE, 
	"MINGPA" FLOAT(126), 
	"DEGREE" VARCHAR2(20 BYTE), 
	"SALARY" VARCHAR2(20 BYTE), 
	"SKILLS" VARCHAR2(50 BYTE), 
	"DEADLINE" DATE, 
	"LOCATION" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERSESSION
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USERSESSION" 
   (	"USERID" VARCHAR2(20 BYTE), 
	"SESSIONID" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.APPLICATIONSTATUS
SET DEFINE OFF;
Insert into SYSTEM.APPLICATIONSTATUS (USERID,JOBID) values ('102','job104');
Insert into SYSTEM.APPLICATIONSTATUS (USERID,JOBID) values ('102','job114');
Insert into SYSTEM.APPLICATIONSTATUS (USERID,JOBID) values ('101','job101');
Insert into SYSTEM.APPLICATIONSTATUS (USERID,JOBID) values ('101','job102');
REM INSERTING into SYSTEM.CANDIDATE
SET DEFINE OFF;
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('101','Apurwa','Dandekar',3,'master''s','Computer Science','java, SQL, HTML','Rochester Institute Of Technology');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('102','John','Green',3,'Master''s','Electronix','C, C++','MIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('103','Nik','Boyse',4,'PHD','IST','HTML,CSS','UTD');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('104','Wan','Ken',4,'Master''s','Computer Science','Java, C, C++','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('105','Bob','KLeen',2.8,'Master''s','Computer Science','Java, SQL, C, SOAP','SJSU');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('106','Neha','Patil',3.4,'Bachelor''s','IST','SQL','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('107','Jish','Kapoor',3.6,'Master''s','CS','Java, C#','HIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('108','rachel','Green',3.4,'Master''s','CS','C,C++','NYU');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('109','Ross','Green',3.9,'PHD','Image Science','Matlab','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('110','Gosh','Hoss',2.8,'Master''s','IP','Java, ASP','UTD');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('111','will','son',3,'Master''s','Netwoek','HTTP, SMTP','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('112','Kish','Lee',3.9,'Bachelor''s','CE','C, Java, Python','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('117','Rimi','Verma',3.9,'Bachelor''s','CE','C, Java, Python','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('118','JOM','Green',3.9,'PHD','Image Science','Matlab','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('119','Nana','Green',3.9,'PHD','Image Science','Matlab','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('120','Minal','Hoss',2.8,'Master''s','IP','Java, ASP','UTD');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('121','Ganga','son',3,'Master''s','Netwoek','HTTP, SMTP','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('122','Kajal','Verma',3.9,'Bachelor''s','CE','C, Java, Python','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('123','Nina','Kul',3.7,'Bachelor''s','CE','C, Java, Python','RIT');
Insert into SYSTEM.CANDIDATE (CANDIDATEID,FIRSTNAME,LASTNAME,GPA,DEGREE,MAJOR,SKILLS,UNIVERSITY) values ('124','Joe','Kool',3.5,'Master''s','CE','C, Java, Python','RIT');
REM INSERTING into SYSTEM.JOB
SET DEFINE OFF;
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job101','6-12 month contract with possibility of extension.
This position is looking for qualified candidates interested in working on developing enterprise Java and C++ applications that expose image, video and data processing routines across the Intelligence community. We are looking for someone who is interested in product innovation using the latest in technology and methods to deliver solutions that will focus on the needs of our customers.',to_date('14-MAR-16','DD-MON-RR'),3,'Master''s','25$ hour','java',to_date('31-MAR-16','DD-MON-RR'),'Rochester, NY','Software Engineer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job102','John Deere Product Engineering Center, located in Silvis, IL is seeking a Senior Software Engineer to be the technical lead for the software development on Combine programs. In addition, you will:',to_date('17-MAR-16','DD-MON-RR'),3,'Master''s','20$ hour','Java, SQL',to_date('31-MAY-16','DD-MON-RR'),'New York, NY','Software Engineer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('jjob103','Some Job',to_date('24-MAR-16','DD-MON-RR'),3,'Bachelor''s','20$','C, C++',to_date('31-MAR-16','DD-MON-RR'),'Dallas, TX','Software Engineer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job104','Ancestry is looking for a strong Software Developer with excellent programming skills to work on exciting, new company technical directions.   
We are a group that figures out and then builds out new technologies for the company to use as a whole. These currently include Kubernetes and Docker',to_date('20-MAR-16','DD-MON-RR'),3,'Master''s','25$ hour','Java, SQL',to_date('31-MAY-16','DD-MON-RR'),'Albany, NY','Software Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job105','The NASA EED-2 Program is seeking a Software Engineer to work in a fast-paced Agile development environment performing software development, testing, and support for the NASA Sentinel Gateway (NSG) system. The NSG is designed to ingest Sentinel mission data from the European Space Agency (ESA) and make them available to a selected set of EOSDIS Distributed Active Archive Centers (DAACs) for distribution to the earth science user community. As a member of the agile development team the candidate will contribute to the NSG development effort including design, development, functional testing, performance testing, system deployment, and sustaining engineering activities',to_date('23-MAR-16','DD-MON-RR'),3,'Master''s','30$ hour','.Net, SQL',to_date('10-JUN-16','DD-MON-RR'),'Riverdale, MD','Software Engineer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job106','Hulu is looking for developers who are passionate about how people can use data exploration to answer product and user questions.  You’ll be driven to provide the best user experience that is intuitive and responsive.  Your customer will be the rest of Hulu and you won’t stop until everyone can easily use your reporting tools to find the answers to their most burning product questions',to_date('20-MAR-16','DD-MON-RR'),4,'Master''s','22$ hour','Angular JS, Javascript',to_date('25-MAY-16','DD-MON-RR'),'Seattle, WA','Software Engineer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job121','Adobe is looking for Software Developer for API Platform, San Jose, California, USA 
Work in a great team of engineers for developing new Adobe API platform',to_date('25-MAR-16','DD-MON-RR'),3,'Bachelor''s','28$ hour','Spring, Tomcat',to_date('30-MAY-16','DD-MON-RR'),'San Jose, CA','Software Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job107','Marvel Entertainment seeks a Software Developer to join our world class IT organization.The Marvel software team is responsible for servicing production by delivering technology efficiencies that return great value to the studio in the form of time. The ideal candidate is agile and flexible to change and can deliver elegant solutions tailored to short and long term goals',to_date('15-MAR-16','DD-MON-RR'),3,'Master''s','31$ hour','Python, Perl',to_date('31-MAY-16','DD-MON-RR'),'Burbank, CA','Software Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job109','Invoca is looking for a Software Engineer to join our team of Ruby on Rails developers. We follow the agile+scrum methodology and practice test-driven-development. All of our software runs in the Amazon Web Services cloud.',to_date('10-MAR-16','DD-MON-RR'),3,'Master''s','22$ hour','Ruby, AWS',to_date('25-MAY-16','DD-MON-RR'),'Sunnyvale, CA','Software Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job110','GE is seeking a Software Developer responsible for developing software applications using sound, repeatable, industry best practices and in accordance with GM’s software development project methodology.  The Software Developer will work hands-on writing code based on detailed requirements and system specifications. Developers may specialize in a particular software package or coding language.',to_date('20-MAR-16','DD-MON-RR'),3,'Master''s','28$ hour','.Net, SQL',to_date('31-MAY-16','DD-MON-RR'),'Atlanta, GA','Software Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job112','ATnull is looking for individuals with strong technical fundamentals from computer science, electrical engineering, physics, mathematics or related fields. The positions can be filled at the BS/BA, MS/MA or PhD levels from any of these areas or equivalent experience. Applicant must be able to work in a team environment and possess excellent oral and written communication skills. Some US travel by commercial air may be required to attend meetings and present project results',to_date('20-MAR-16','DD-MON-RR'),3,'Master''s','35$ hour','.Net, SQL',to_date('31-MAY-16','DD-MON-RR'),'Santa Barbara,CA ','SQL Engineer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job113','Join Ai and become part of a team developing applications that are changing healthcare across the country.  Seriously!  Our engineers design and develop solutions that improve healthcare outcomes and enable healthcare professionals to do their jobs more efficiently and effectively.  If you are looking for a career with room for advancement and professional growth, in a fun and collaborative environment, that also makes a difference to your community, look no further.',to_date('17-MAR-16','DD-MON-RR'),3,'Master''s','20$ hour','XML, SQL',to_date('30-MAY-16','DD-MON-RR'),'Baltimore, MD','SQL Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job114','Ericsson is looking for Software Developers.The Software Developer contributes, to create a customer’s solution, in all phases of the software development lifecycle, towards properly engineered information systems, containing software as the major component, to meet agreed business requirements.The Software Engineer is responsible for ensuring that the delivered software components provide the necessary functionality and perform in accordance to the overall requirements and to the customer’s expectation.',to_date('10-MAR-16','DD-MON-RR'),3,'Master''s','27$ hour','.Net, Oracle',to_date('31-MAY-16','DD-MON-RR'),'Plano, TX','Software Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job115','Intelius is looking for a highly capable, self-motivated, software engineer to join our web services and backend infrastructure team that serves as a core to our business.You will be working collaboratively to design, code and integrate our PHP and Java based services which power our customer facing websites, mobile applications and external clients. You will be adding features to current APIs, modernizing legacy APIs, and integrating with internal and 3rd party APIs.',to_date('11-MAR-16','DD-MON-RR'),3.5,'Bachelor''s','18$ hour','C#, MySQL',to_date('15-MAY-16','DD-MON-RR'),'Bellevue, WA','Software Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job116','Intelius is looking for a highly capable, self-motivated, software engineer to join our web services and backend infrastructure team that serves as a core to our business.You will be working collaboratively to design, code and integrate our PHP and Java based services which power our customer facing websites, mobile applications and external clients. You will be adding features to current APIs, modernizing legacy APIs, and integrating with internal and 3rd party APIs.',to_date('11-MAR-16','DD-MON-RR'),3,'Bachelor''s','18$ hour','C#, MySQL',to_date('15-MAY-16','DD-MON-RR'),'Bellevue, WA','QV Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job117','Intelius is looking for a highly capable, self-motivated, software engineer to join our web services and backend infrastructure team that serves as a core to our business.You will be working collaboratively to design, code and integrate our PHP and Java based services which power our customer facing websites, mobile applications and external clients. You will be adding features to current APIs, modernizing legacy APIs, and integrating with internal and 3rd party APIs.',to_date('11-MAR-16','DD-MON-RR'),3,'Bachelor''s','18$ hour','C#, MySQL',to_date('15-MAY-16','DD-MON-RR'),'Bellevue, MA','QV Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job119','Invoca is looking for a Software Engineer to join our team of Ruby on Rails developers. We follow the agile+scrum methodology and practice test-driven-development. All of our software runs in the Amazon Web Services cloud.',to_date('10-MAR-16','DD-MON-RR'),3,'Master''s','22$ hour','Ruby, AWS',to_date('25-MAY-16','DD-MON-RR'),'Sunnyvale, CA','ETL Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job120','Invoca is looking for a Software Engineer to join our team of Ruby on Rails developers. We follow the agile+scrum methodology and practice test-driven-development. All of our software runs in the Amazon Web Services cloud.',to_date('10-MAR-16','DD-MON-RR'),3.5,'Master''s','22$ hour','Ruby, AWS',to_date('25-MAY-16','DD-MON-RR'),'San Jose, CA','ETL Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job122','6-12 month contract with possibility of extension. 
This position is looking for qualified candidates interested in working on developing enterprise Java and C++ applications that expose image, video and data processing routines across the Intelligence community. We are looking for someone who is interested in product innovation using the latest in technology and methods to deliver solutions that will focus on the needs of our customers.',to_date('14-MAR-16','DD-MON-RR'),3,'Bachelor''s','29$ hour','java',to_date('31-MAR-16','DD-MON-RR'),'Rochester, NY','Java Developer');
Insert into SYSTEM.JOB (JOBID,DESCRIPTION,POSTEDON,MINGPA,DEGREE,SALARY,SKILLS,DEADLINE,LOCATION,TITLE) values ('job123','6-12 month contract with possibility of extension. 
This position is looking for qualified candidates interested in working on developing enterprise Java and C++ applications that expose image, video and data processing routines across the Intelligence community. We are looking for someone who is interested in product innovation using the latest in technology and methods to deliver solutions that will focus on the needs of our customers.',to_date('14-MAR-16','DD-MON-RR'),3,'Bachelor''s','29$ hour','java',to_date('31-MAR-16','DD-MON-RR'),'Rochester, NY','Java Developer');
REM INSERTING into SYSTEM.USERSESSION
SET DEFINE OFF;
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','2oopn80ne0k7crmklpd6j47aa5');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','lok56ahis5n7tdlq4c1qqdjaq3');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('222','cooa3s5abcosd6obiam0t5toqf');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','3nrkdr3fa4t1ect4705r0l2oti');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','dd9urbso0529ekh498h3ssi8rg');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','i875g2nrcvi985995q627uaabe');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','5pvuhk6tpj1sqne7v8b31v0jui');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','2sgu6pkt9o9dbdcblv8dl07n6q');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','5f1cj440qo56o0ta2ukgms3kaa');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','mep3pirijgoq7trf4bi47nor3d');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','ulg1rt42m8bcd9ranrhu052fb5');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','p0tcaoddhnqn07lkt0s3taubrf');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('102','j829tpb9b922bei8oh86i235lp');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('103','4930qra7o4lsfsa3bafdcheg26e');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('104','e1pa76016f55a7a8qe3go1rgds');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('105','1ofp7noter2cthcm600l3503t61');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','508kasb9scpsmifd778k80nm91n');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('102','3a6d22b6ng57f6md3tgf5g2pe1h');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('1','42s7e526fo91stl0e1bqf4qdm85');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','2j78hljaqqk4krkkij5r63n2f2c');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('104','i9cfqf93ndjb3qb6blpos0cbnn');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('102','4qiknh33i2tbieekmbr7o57n33p');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('102','4njg3fa81qoq300q02hkog6888n');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('102','14fqgo3tqqks8c4pridpkgghj4d');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','lditdi31e26gndjid73i0t59ck');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('102','3pd78bbk7cp3g172gopbc6ror8j');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('102','22q87ttqeefrolo2004p8r048p');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('102','49m9l5sgc0aidmkr36s4bhpd09k');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','52iftcrp9tkjaodjgp77gldd8e5');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','41qh7sialmjp954lsl2djfak22l');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('102','51sncihs46msko83njrk856q3a8');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('101','41g8stts85cqadiao267qkst2ck');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('apurwa','4b7f8oj0blmq7qks06kqrq5lnkp');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('apurwa','256jil6ttekdisd8qjjl76bco59');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('103','s442lqtk8h7m6b6sa9et31ti4m');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('103','qk5gn3hkc15761sq4q6l0add08');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('105','1n8044e19hi1imarlj66d2qecr5');
Insert into SYSTEM.USERSESSION (USERID,SESSIONID) values ('102','3cdaij11fnqcf8kjelpqqddl06l');
--------------------------------------------------------
--  DDL for Index CANDIDATE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CANDIDATE_PK" ON "SYSTEM"."CANDIDATE" ("CANDIDATEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index JOB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."JOB_PK" ON "SYSTEM"."JOB" ("JOBID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table APPLICATIONSTATUS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."APPLICATIONSTATUS" MODIFY ("JOBID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."APPLICATIONSTATUS" MODIFY ("USERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CANDIDATE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CANDIDATE" MODIFY ("DEGREE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CANDIDATE" MODIFY ("LASTNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CANDIDATE" MODIFY ("MAJOR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CANDIDATE" MODIFY ("GPA" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CANDIDATE" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CANDIDATE" ADD CONSTRAINT "CANDIDATE_PK" PRIMARY KEY ("CANDIDATEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."CANDIDATE" MODIFY ("CANDIDATEID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JOB
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."JOB" MODIFY ("LOCATION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."JOB" MODIFY ("DEADLINE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."JOB" MODIFY ("DEGREE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."JOB" MODIFY ("MINGPA" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."JOB" MODIFY ("POSTEDON" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."JOB" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."JOB" ADD CONSTRAINT "JOB_PK" PRIMARY KEY ("JOBID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."JOB" MODIFY ("JOBID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERSESSION
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USERSESSION" MODIFY ("SESSIONID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERSESSION" MODIFY ("USERID" NOT NULL ENABLE);
