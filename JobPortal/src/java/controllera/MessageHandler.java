/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllera;

import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.namespace.QName;
import javax.xml.ws.soap.SOAPFaultException;
import javax.xml.soap.SOAPBody;
import javax.xml.soap.SOAPConstants;
import javax.xml.soap.SOAPException;
import javax.xml.soap.SOAPFault;
import javax.xml.soap.SOAPHeader;
import javax.xml.soap.SOAPHeaderElement;
import javax.xml.soap.SOAPMessage;
import javax.xml.ws.handler.MessageContext;
import javax.xml.ws.handler.soap.SOAPHandler;
import javax.xml.ws.handler.soap.SOAPMessageContext;
import org.w3c.dom.NodeList;
import db.DatabaseConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Apurwa
 */
public class MessageHandler implements SOAPHandler<SOAPMessageContext> {

    String userSessionID = "";

    public boolean handleMessage(SOAPMessageContext messageContext) {
        Boolean outboundProperty = (Boolean) messageContext.get(MessageContext.MESSAGE_OUTBOUND_PROPERTY);
        try {
            if (!outboundProperty) {
                SOAPMessage message
                        = messageContext.getMessage();
                message.writeTo(System.out);
                System.out.println("");
                SOAPHeader header = messageContext.getMessage().getSOAPPart().getEnvelope().getHeader();
                Iterator allHeaders = header.examineAllHeaderElements();
                
                //retieve sessionid, userid and operation name from the header
                while (allHeaders.hasNext()) {
                    SOAPHeaderElement headerElement = (SOAPHeaderElement) allHeaders.next();
                    NodeList i = headerElement.getChildNodes();

                    String sessionId = i.item(0).getChildNodes().item(0).getNodeValue();
                    System.out.println(sessionId);
                    userSessionID = sessionId;

                    String userID = i.item(1).getChildNodes().item(0).getNodeValue();
                    System.out.println(userID);

                    String operationName = i.item(2).getChildNodes().item(0).getNodeValue();
                    System.out.println(operationName);

                    //if user session exists in the database
                    boolean checkusersession = checkUserIdSession(userID, sessionId);
                    if (!checkusersession) {
                        //if session is new and operationis 1 enter into the database
                        if (operationName.equals("getJobDetails")) {
                            insertUserIdSession(userID, sessionId);
                        } else {
                            /*throw an exception if second operation is called 
                            without operation 1 being called first
                             */
                            SOAPBody spBody = messageContext.getMessage().getSOAPBody();
                            SOAPFault fault = spBody.addFault();
                            QName faultName = new QName(SOAPConstants.URI_NS_SOAP_ENVELOPE, "Fault");
                            fault.setFaultCode(faultName);
                            fault.setFaultString("Order of the operations has been violated");
                            throw new SOAPFaultException(fault);
                        }
                    }
                }
            } else {
                System.out.println("In bound");
            }
        } catch (SOAPFaultException ex) {
            throw ex;
        } catch (SOAPException ex) {
            try {
                throw ex;
            } catch (SOAPException ex1) {
                Logger.getLogger(MessageHandler.class.getName()).log(Level.SEVERE, null, ex1);
            }
        } catch (IOException ex) {
            Logger.getLogger(MessageHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

    public Set<QName> getHeaders() {
        return Collections.EMPTY_SET;
    }

    public boolean handleFault(SOAPMessageContext messageContext) {
        return true;
    }

    public void close(MessageContext context) {
        System.out.println("closing");
    }

    /*
	 * fuction : check userid and session id exists in the database
	 * 
	 * @return : none
	 */
    private boolean checkUserIdSession(String userID, String sessionId) {
        DatabaseConnection db = new DatabaseConnection();
        db.connect();
        String selectSQL = "select * from usersession where userId=? And sessionID=?";
        PreparedStatement ps;
        try {
            ps = db.con.prepareStatement(selectSQL);
            ps.setString(1, userID);
            ps.setString(2, sessionId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception ex) {
            return false;
        }
        return false;
    }

    /*
	 * fuction : insert userid and session in the database
	 * 
	 * @return : none
	 */
    private boolean insertUserIdSession(String userID, String sessionId) {
        DatabaseConnection db = new DatabaseConnection();
        db.connect();
        String insertSQL = "insert into usersession"
                + "(userid,sessionid) values" + "(?,?)";
        PreparedStatement ps;
        try {
            ps = db.con.prepareStatement(insertSQL);
            ps.setString(1, userID);
            ps.setString(2, sessionId);
            ps.executeUpdate();
            System.out.println("******************record inserted****************");

        } catch (Exception ex) {
            return false;
        }
        return false;
    }

}
