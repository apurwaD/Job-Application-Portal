
package controller;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the controller package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _GetJobDetailsResponse_QNAME = new QName("http://controller/", "getJobDetailsResponse");
    private final static QName _ApplyJob_QNAME = new QName("http://controller/", "applyJob");
    private final static QName _Hello_QNAME = new QName("http://controller/", "hello");
    private final static QName _GetJobInfoResponse_QNAME = new QName("http://controller/", "getJobInfoResponse");
    private final static QName _GetJobInfo_QNAME = new QName("http://controller/", "getJobInfo");
    private final static QName _HelloResponse_QNAME = new QName("http://controller/", "helloResponse");
    private final static QName _ApplyJobResponse_QNAME = new QName("http://controller/", "applyJobResponse");
    private final static QName _GetJobDetails_QNAME = new QName("http://controller/", "getJobDetails");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: controller
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ApplyJobResponse }
     * 
     */
    public ApplyJobResponse createApplyJobResponse() {
        return new ApplyJobResponse();
    }

    /**
     * Create an instance of {@link GetJobDetails }
     * 
     */
    public GetJobDetails createGetJobDetails() {
        return new GetJobDetails();
    }

    /**
     * Create an instance of {@link GetJobInfo }
     * 
     */
    public GetJobInfo createGetJobInfo() {
        return new GetJobInfo();
    }

    /**
     * Create an instance of {@link HelloResponse }
     * 
     */
    public HelloResponse createHelloResponse() {
        return new HelloResponse();
    }

    /**
     * Create an instance of {@link GetJobInfoResponse }
     * 
     */
    public GetJobInfoResponse createGetJobInfoResponse() {
        return new GetJobInfoResponse();
    }

    /**
     * Create an instance of {@link ApplyJob }
     * 
     */
    public ApplyJob createApplyJob() {
        return new ApplyJob();
    }

    /**
     * Create an instance of {@link Hello }
     * 
     */
    public Hello createHello() {
        return new Hello();
    }

    /**
     * Create an instance of {@link GetJobDetailsResponse }
     * 
     */
    public GetJobDetailsResponse createGetJobDetailsResponse() {
        return new GetJobDetailsResponse();
    }

    /**
     * Create an instance of {@link Date }
     * 
     */
    public Date createDate() {
        return new Date();
    }

    /**
     * Create an instance of {@link JobProfile }
     * 
     */
    public JobProfile createJobProfile() {
        return new JobProfile();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetJobDetailsResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://controller/", name = "getJobDetailsResponse")
    public JAXBElement<GetJobDetailsResponse> createGetJobDetailsResponse(GetJobDetailsResponse value) {
        return new JAXBElement<GetJobDetailsResponse>(_GetJobDetailsResponse_QNAME, GetJobDetailsResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ApplyJob }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://controller/", name = "applyJob")
    public JAXBElement<ApplyJob> createApplyJob(ApplyJob value) {
        return new JAXBElement<ApplyJob>(_ApplyJob_QNAME, ApplyJob.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://controller/", name = "hello")
    public JAXBElement<Hello> createHello(Hello value) {
        return new JAXBElement<Hello>(_Hello_QNAME, Hello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetJobInfoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://controller/", name = "getJobInfoResponse")
    public JAXBElement<GetJobInfoResponse> createGetJobInfoResponse(GetJobInfoResponse value) {
        return new JAXBElement<GetJobInfoResponse>(_GetJobInfoResponse_QNAME, GetJobInfoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetJobInfo }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://controller/", name = "getJobInfo")
    public JAXBElement<GetJobInfo> createGetJobInfo(GetJobInfo value) {
        return new JAXBElement<GetJobInfo>(_GetJobInfo_QNAME, GetJobInfo.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link HelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://controller/", name = "helloResponse")
    public JAXBElement<HelloResponse> createHelloResponse(HelloResponse value) {
        return new JAXBElement<HelloResponse>(_HelloResponse_QNAME, HelloResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ApplyJobResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://controller/", name = "applyJobResponse")
    public JAXBElement<ApplyJobResponse> createApplyJobResponse(ApplyJobResponse value) {
        return new JAXBElement<ApplyJobResponse>(_ApplyJobResponse_QNAME, ApplyJobResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetJobDetails }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://controller/", name = "getJobDetails")
    public JAXBElement<GetJobDetails> createGetJobDetails(GetJobDetails value) {
        return new JAXBElement<GetJobDetails>(_GetJobDetails_QNAME, GetJobDetails.class, null, value);
    }

}
