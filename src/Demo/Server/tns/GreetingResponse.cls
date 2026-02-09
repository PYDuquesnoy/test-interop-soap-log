/// Created from: /src/DemoGreetingService.wsdl
Class Demo.Server.tns.GreetingResponse Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://test.demo.org";

Parameter XMLNAME = "GreetingResponse";

Parameter XMLSEQUENCE = 1;

Property Greeting As %String(MAXLEN = "", XMLNAME = "Greeting") [ Required ];

}
