/// Created from: /src/DemoGreetingService.wsdl
Class Interop.Client.tns.GreetingResponse Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://test.demo.org";

Parameter XMLNAME = "GreetingResponse";

Parameter XMLSEQUENCE = 1;

Property Greeting As %String(MAXLEN = "", XMLNAME = "Greeting") [ Required ];

Storage Default
{
<Data name="GreetingResponseState">
<Value name="1">
<Value>Greeting</Value>
</Value>
</Data>
<State>GreetingResponseState</State>
<StreamLocation>^Interop.Cl1E51.GreetingRes8A87S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
