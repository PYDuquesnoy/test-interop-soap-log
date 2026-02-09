Class Demo.Server.Service.DemoGreetingServiceSoap Extends %SOAP.WebService [ ProcedureBlock ]
{

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

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Method Greet(request As Demo.Server.tns.GreetingRequest(REQUIRED=1)) As Demo.Server.tns.GreetingResponse [ Final, ProcedureBlock = 1, SoapAction = "http://test.demo.org/Greet", SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 set response = ##class(Demo.Server.tns.GreetingResponse).%New()
 set response.Greeting = "Hello, " _ request.FirstName _ " " _ request.LastName _ "!"
 quit response
}

}
