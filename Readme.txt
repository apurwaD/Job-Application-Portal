The Job Portal application is developed in java using soap webservice
Which consits of two Java Application Projects
1.JobPortal : Web Application
2.JobApplicationClient : Java Applcation
-Import these two projects in Netbeans please make sure you have Glassfish server configured into netbeans 
the  glassfish server is set on port 36885
-Please make sure the path of the wsdl is correct before running
-Deploy the Poject JobPortal using netbeans
-The Database used is Oracle 11g
-The username paasword for the database oracle 11g is hardcoded in the file named DatabaseConnection.java under pacakage db in project JobPortal
-you can change the required setting i.e username and password of the oracle database in the above file
into this file as will as port and name of db 
-The submission conatins export.sql file you can create the required database with the help of this sql file
-The Database Mainly consists of 4 table named 
	Candidate
	Jobs
	ApplcationStatus
	UserSession

-To run the client run JobApplicationClient project in netbeans
-Have inserted a list of soame candidates and Jobs into the database please check the screenshots attached in the document and export.sql
	for valid userid/candidateid
-You can select a jobid returned from the database to apply
-Some valid job poition title are stored in the database check screenshot and export.sql file for the same

-The flow of the application is explained in the document attached with this submission

