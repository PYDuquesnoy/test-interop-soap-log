/// Mixin class that adds SOAP request/response file logging to any %SOAP.WebClient subclass.
/// Add this to the Extends list of your SOAP client proxy class to enable logging hooks.
/// Logging is controlled by process-private variables %SOAPLogEnabled and %SOAPLogFile,
/// which are set by the Interop.SOAPLoggingOperation Business Operation superclass.
Class Interop.Client.SOAPLogger Extends %RegisteredObject
{

/// Stores $zh timestamp at request time for duration calculation.
Property %SOAPLogStart As %String [ Private, Transient ];

/// Callback invoked before the SOAP request is sent.
/// Logs the request XML with metadata (timestamp, method, action) to the configured log file.
Method %OnSOAPRequest(mode As %String, client As %SOAP.WebClient, action As %String, oneWay As %Boolean, method As %String, requestStream As %BinaryStream)
{
 quit:'$get(%SOAPLogEnabled)
 quit:$get(%SOAPLogFile)=""
 set ..%SOAPLogStart = $zh
 set ts = $zdatetime($horolog, 3)
 set header = "=== SOAP Request === ["_ts_"] Method: "_method_" | Action: "_action
 do ..WriteSOAPLog(header)
 if $isobject(requestStream) {
  do requestStream.Rewind()
  set content = requestStream.Read(10000000)
  do requestStream.Rewind()
  do ..WriteSOAPLog(content)
 } else {
  do ..WriteSOAPLog("[request stream not available as object]")
 }
}

/// Callback invoked after the SOAP response is received.
/// Logs the response XML with status and elapsed duration to the configured log file.
Method %OnSOAPResponse(mode As %String, client As %SOAP.WebClient, action As %String, oneWay As %Boolean, method As %String, requestStream As %BinaryStream, responseStream As %BinaryStream, sc As %Status)
{
 quit:'$get(%SOAPLogEnabled)
 quit:$get(%SOAPLogFile)=""
 set ts = $zdatetime($horolog, 3)
 set duration = ""
 if ..%SOAPLogStart '= "" {
  set duration = " | Duration: "_$fnumber($zh - ..%SOAPLogStart, "", 3)_"s"
 }
 set statusText = $select($$$ISOK(sc): "OK", 1: $system.Status.GetErrorText(sc))
 set header = "=== SOAP Response === ["_ts_"] Status: "_statusText_duration
 do ..WriteSOAPLog(header)
 if $isobject(responseStream) {
  do responseStream.Rewind()
  set content = responseStream.Read(10000000)
  do responseStream.Rewind()
  do ..WriteSOAPLog(content)
 } else {
  do ..WriteSOAPLog("[response stream not available as object]")
 }
 do ..WriteSOAPLog("=====================================")
}

/// Appends a line to the SOAP log file.
Method WriteSOAPLog(line As %String) [ Private ]
{
 set file = $get(%SOAPLogFile)
 quit:file=""
 open file:("AWN"):1
 quit:'$test
 use file
 write line,!
 close file
}

}
