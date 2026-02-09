Class Interop.Client.Req.GreetRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "Interop.Client.Rsp.GreetResponse";

Property request As Interop.Client.tns.GreetingRequest;

Storage Default
{
<Data name="GreetRequestDefaultData">
<Subscript>"GreetRequest"</Subscript>
<Value name="1">
<Value>request</Value>
</Value>
</Data>
<DefaultData>GreetRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
