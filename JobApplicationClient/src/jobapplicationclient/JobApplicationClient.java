/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jobapplicationclient;

import controller.JobProfile;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import javax.xml.ws.soap.SOAPFaultException;

/**
 *
 * @author Apurwa
 */
public class JobApplicationClient {

    static String userID;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String choice = "";
        int choiceNum;
        try {
            System.out.println("Enter your userId");
            String id = scan.nextLine();
            userID = id;
            do {
                System.out.println("Enter following choices");
                System.out.println("Enter 1: SearchJobs");
                System.out.println("Enter 2: Apply jobs");
                System.out.println("Enter 3: To Quit");
                choice = scan.nextLine();
                choiceNum = Integer.parseInt(choice);
                List<Object> tes;
                switch (choiceNum) {
                    case 1:
                        tes = new ArrayList<Object>();
                        System.out.println("Enter the Job Title to search");
                        String title = scan.nextLine();
                        System.out.println(title);
                        tes = getJobDetails(title,userID);
                        for (int i = 0; i < tes.size(); i++) {
                            JobProfile jobProfile = (JobProfile) tes.get(i);
                            System.out.println("************************JOB DETAILS ARE********************************");
                            System.out.println("Job ID :" + jobProfile.getJobId());
                            System.out.println("Job Title :" + jobProfile.getTitle());
                            System.out.println("Job Description :" + jobProfile.getDescription());
                            System.out.println("Job Degree :" + jobProfile.getDegree());
                            System.out.println("Job Skills :" + jobProfile.getSkills());
                            System.out.println("Job Salary :" + jobProfile.getSalary());
                            System.out.println("Job MinGPA :" + jobProfile.getMinGPA());
                            System.out.println("**********************************************************************");
                        }
                        if(tes.size()==0){
                          System.err.println("No results found for given title");
                        }
                        break;
                    case 2:
                        System.out.println("Enter the Job id from the list");
                        String jobId = scan.nextLine();
                        String status = applyJob(jobId, userID);
                        System.err.println(status);
                        break;
                    case 3:
                        break;
                    default:
                        break;
                }

            } while (choiceNum != 3);
            System.out.println("Client closing you pressed 3");
        } catch (SOAPFaultException ex) {
            System.err.println(ex.getMessage());
            // System.err.println(ex.getFault());

        } catch (Exception ex) {
            System.err.println("Something went wrong");
        }
    }


    private static String applyJob(java.lang.String jobId, java.lang.String candidateId) {
        controller.JobApplication_Service service = new controller.JobApplication_Service();
        controller.JobApplication port = service.getJobApplicationPort();
        return port.applyJob(jobId, candidateId);
    }

    private static java.util.List<java.lang.Object> getJobDetails(java.lang.String name, java.lang.String userID) {
        controller.JobApplication_Service service = new controller.JobApplication_Service();
        controller.JobApplication port = service.getJobApplicationPort();
        return port.getJobDetails(name, userID);
    }

    

}
