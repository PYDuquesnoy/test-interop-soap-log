/// Created from: /src/DemoGreetingService.wsdl
Class Demo.Server.tns.GreetingRequest Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://test.demo.org";

Parameter XMLNAME = "GreetingRequest";

Parameter XMLSEQUENCE = 1;

Property FirstName As %String(MAXLEN = "", XMLNAME = "FirstName") [ Required ];

Property LastName As %String(MAXLEN = "", XMLNAME = "LastName") [ Required ];

}
