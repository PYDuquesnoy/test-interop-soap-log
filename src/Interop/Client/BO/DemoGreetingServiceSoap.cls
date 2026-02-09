Class Interop.Client.BO.DemoGreetingServiceSoap Extends Interop.SOAPLoggingOperation [ ProcedureBlock ]
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Method Greet(pRequest As Interop.Client.Req.GreetRequest, Output pResponse As Interop.Client.Rsp.GreetResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "Interop.Client.DemoGreetingServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("Greet",.GreetResult,pRequest.request)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.GreetResult=$get(GreetResult)
 Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Interop.Client.Req.GreetRequest">
		<Method>Greet</Method>
	</MapItem>
</MapItems>
}

}
