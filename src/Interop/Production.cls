Class Interop.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Interop.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="BO.DemoGreeting" Category="" ClassName="Interop.Client.BO.DemoGreetingServiceSoap" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="WebServiceURL">http://localhost:52773/csp/user/Demo.Server.Service.DemoGreetingServiceSoap.cls</Setting>
  </Item>
</Production>
}

}
