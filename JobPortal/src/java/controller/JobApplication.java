/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.DatabaseConnection;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import javax.jws.HandlerChain;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;
import model.JobProfile;

/**
 *
 * @author Apurwa
 */
@WebService(serviceName = "JobApplication")
@HandlerChain(file = "JobApplication_handler.xml")
public class JobApplication {

    static public HashMap<String, ArrayList<String>> searchResult = new HashMap<String, ArrayList<String>>();

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    /**
     * Web service operation is not used by the application
     */
    @WebMethod(operationName = "getJobInfo")
    public JobProfile getJobInfo(@WebParam(name = "name") String txt) {
        //TODO write your implementation code here:
        long time = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(time);
        JobProfile job = new JobProfile();
        job.setJobId("1");
        job.setMinGPA(3);
        job.setSalary("33");
        job.setTitle(txt);
        job.setDeadline(date);
        job.setPostedOn(date);
        job.setDegree("Master's");
        job.setDescription("Good job");
        job.setSkills("java");
        return job;
    }

    /*
	 * webservice : get job list from the database
	 * 
	 * @return : ArrayList
	 */
    @WebMethod(operationName = "getJobDetails")
    public List getJobDetails(@WebParam(name = "name") String title, @WebParam(name = "userID") String userID) {
        List<JobProfile> jobs = new ArrayList<JobProfile>();
        List<String> jobsIdList = new ArrayList<String>();
        DatabaseConnection db = new DatabaseConnection();
        db.connect();
        String selectSQL = "select * from Job where title=?";
        PreparedStatement ps;
        try {
            ps = db.con.prepareStatement(selectSQL);
            ps.setString(1, title);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                JobProfile job = new JobProfile();
                String jobId = rs.getString("jobid");
                job.setJobId(rs.getString("jobid"));
                job.setTitle(rs.getString("title"));
                job.setDescription(rs.getString("description"));

                java.util.Date newdate = rs.getDate("postedon");
                System.out.println(newdate);
                job.setPostedOn((Date) newdate);
                job.setDeadline(rs.getDate("deadline"));
                job.setSalary(rs.getString("salary"));
                job.setMinGPA(rs.getInt("mingpa"));
                job.setSkills(rs.getString("skills"));
                job.setDegree(rs.getString("degree"));
                jobs.add(job);
                jobsIdList.add(jobId);
            }
            //keep it in the hashmap for future use to check the user
            //is applied to the job return from the search
            searchResult.put(userID, (ArrayList<String>) jobsIdList);
            return jobs;

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return jobs;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "applyJob")
    public String applyJob(@WebParam(name = "jobId") String jobId, @WebParam(name = "candidateId") String candidateId) {
        DatabaseConnection db = new DatabaseConnection();
        db.connect();
        boolean checkJobID = false;
        if (searchResult.containsKey(candidateId)) {
            System.out.println("candidate exists");
            ArrayList<String> jobList = searchResult.get(candidateId);
            // use to check the user is applying to the job return from the search for this session
            for (int i = 0; i < jobList.size(); i++) {
                if (jobList.get(i).equals(jobId)) {
                    checkJobID = true;
                    break;
                }
            }
        }
        else{
             System.out.println("candidate does not exist");
        }
        //if valid apply according to the session search
        if (checkJobID) {
            String selectSQL = "select * from Job where jobId=?";
            PreparedStatement ps;
            try {
                ps = db.con.prepareStatement(selectSQL);
                ps.setString(1, jobId);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    String degree = rs.getString("degree");
                    int minGpa = rs.getInt("minGPA");
                    String selectCandiadte = "select * from Candidate where candidateId=?";

                    ps = db.con.prepareStatement(selectCandiadte);
                    ps.setString(1, candidateId);
                    rs = ps.executeQuery();
                    if (rs.next()) {
                        String canDegree = rs.getString("degree");
                        float gpa = rs.getFloat("gpa");
                        if (!canDegree.equalsIgnoreCase(degree)) {
                            return "Degree doesn't match";
                        } else if (gpa < minGpa) {
                            return "Gpa requirements don't match";
                        } else {
                            boolean status = db.checkApplicationStatus(candidateId, jobId);
                            if (status) {
                                return "You have already applied for this job";
                            }
                            db.insertUserIdJobId(candidateId, jobId);
                            return "Successfully applied to the position";
                        }
                    } else {
                        return "Invalid Candidate Id";
                    }

                } else {
                    return "Invalid Job Id";
                }

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        } else {
            return "Job id does not exist in the search results";
        }
        //should
        return "";
    }

}
