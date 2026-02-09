Class Interop.Client.DemoGreetingServiceSoap Extends (Interop.Client.SOAPLogger, %SOAP.WebClient) [ ProcedureBlock ]
{

/// This is the URL used to access the web service.
Parameter LOCATION = "http://localhost/DemoGreetingService";

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://test.demo.org";

/// Use xsi:type attribute for literal types.
Parameter OUTPUTTYPEATTRIBUTE = 1;

/// Determines handling of Security header.
Parameter SECURITYIN = "ALLOW";

/// This is the name of the Service
Parameter SERVICENAME = "DemoGreetingService";

/// This is the SOAP version supported by the service.
Parameter SOAPVERSION = 1.1;

Method Greet(request As Interop.Client.tns.GreetingRequest(REQUIRED=1)) As Interop.Client.tns.GreetingResponse [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("Greet").Invoke($this,"http://test.demo.org/Greet",.request)
}

}
