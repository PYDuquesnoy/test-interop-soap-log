/// Superclass for Business Operations that need SOAP request/response logging.
/// Exposes SOAPLogEnabled and SOAPLogFile as portal-configurable settings under the "SOAPLog" category.
/// On initialization, propagates these settings to process-private variables (%SOAPLogEnabled, %SOAPLogFile)
/// so that the Interop.Client.SOAPLogger mixin in the SOAP client class can read them in its hooks.
Class Interop.SOAPLoggingOperation Extends Ens.BusinessOperation
{

Parameter SETTINGS = "SOAPLogEnabled:SOAPLog,SOAPLogFile:SOAPLog";

/// Enable or disable SOAP request/response logging to file.
Property SOAPLogEnabled As %Boolean [ InitialExpression = 0 ];

/// Full path (directory + filename) for the SOAP log file. Example: /tmp/DemoGreeting.log
Property SOAPLogFile As %String(MAXLEN = 500);

/// Propagate logging settings to process-private variables on startup.
/// These are read by the Interop.Client.SOAPLogger mixin in %OnSOAPRequest / %OnSOAPResponse hooks.
Method OnInit() As %Status
{
 set %SOAPLogEnabled = ..SOAPLogEnabled
 set %SOAPLogFile = ..SOAPLogFile
 quit ##super()
}

}
