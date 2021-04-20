<%
Set myMail=CreateObject("CDO.Message")
myMail.Subject="#Your Sunject#"
myMail.To="#To Email#"
myMail.BCc = ""
myMail.TextBody = "#Body#"
myMail.From="#Who is this email from#"
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver")="Your SMTP server"
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport")=587
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = False
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 20
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "Your SMTP username"
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "#Your SMTP password#"

myMail.Configuration.Fields.Update
myMail.Send
set myMail=nothing
%>
