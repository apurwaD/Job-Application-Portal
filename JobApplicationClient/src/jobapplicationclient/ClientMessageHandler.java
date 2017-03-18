/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jobapplicationclient;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import javax.xml.namespace.QName;
import javax.xml.soap.SOAPBody;
import javax.xml.soap.SOAPBodyElement;
import javax.xml.soap.SOAPElement;
import javax.xml.soap.SOAPFactory;
import javax.xml.soap.SOAPHeader;
import javax.xml.ws.handler.MessageContext;
import javax.xml.ws.handler.soap.SOAPHandler;
import javax.xml.ws.handler.soap.SOAPMessageContext;
import org.w3c.dom.NodeList;

/**
 *
 * @author Apurwa
 */
public class ClientMessageHandler implements SOAPHandler<SOAPMessageContext> {
    
    private SecureRandom randomString = new SecureRandom();
    static private String sessionIDS = "";
    

  public String createSessionId() {
    return new BigInteger(130, randomString).toString(30);
  }

    public boolean handleMessage(SOAPMessageContext messageContext) {
        String userAuthId= JobApplicationClient.userID;

        Boolean outboundProperty = (Boolean) messageContext.get(MessageContext.MESSAGE_OUTBOUND_PROPERTY);

        if (outboundProperty.booleanValue()) {
            
            //if the sessionid is not created first
            if(sessionIDS.equals("")){
                sessionIDS=createSessionId();
            }
            try {
                SOAPHeader header = messageContext.getMessage().getSOAPPart().getEnvelope().getHeader();

                if (header == null) {
                    header = messageContext.getMessage().getSOAPPart().getEnvelope().addHeader();
                }
                //craete a header in the soap header and add child elements sessionID, userId and operation name to it
                SOAPFactory soapFactory = SOAPFactory.newInstance();
                SOAPElement headerDetails = soapFactory.createElement("headerD", "ns", "http://localhost:36885/JobPortal/JobApplication");

                SOAPElement sessionID = headerDetails.addChildElement("sessionID");
                sessionID.setTextContent(sessionIDS);
                
                SOAPElement userID = headerDetails.addChildElement("userID");
                userID.setTextContent(userAuthId);
                
                SOAPBody spBody = messageContext.getMessage().getSOAPBody();

                Iterator i = spBody.getChildElements();
                SOAPBodyElement operation = (SOAPBodyElement) i.next();
                SOAPElement operationName = headerDetails.addChildElement("operationName");
                operationName.setTextContent(operation.getLocalName());
                //add children to the hader and save
                header.addChildElement(headerDetails);
                messageContext.getMessage().saveChanges();

                NodeList nodes = headerDetails.getChildNodes();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            
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
    }

}
