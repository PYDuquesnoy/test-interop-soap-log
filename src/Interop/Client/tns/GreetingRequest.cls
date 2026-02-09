/// Created from: /src/DemoGreetingService.wsdl
Class Interop.Client.tns.GreetingRequest Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://test.demo.org";

Parameter XMLNAME = "GreetingRequest";

Parameter XMLSEQUENCE = 1;

Property FirstName As %String(MAXLEN = "", XMLNAME = "FirstName") [ Required ];

Property LastName As %String(MAXLEN = "", XMLNAME = "LastName") [ Required ];

Storage Default
{
<Data name="GreetingRequestState">
<Value name="1">
<Value>FirstName</Value>
</Value>
<Value name="2">
<Value>LastName</Value>
</Value>
</Data>
<State>GreetingRequestState</State>
<StreamLocation>^Interop.Cl1E51.GreetingReq9A92S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
