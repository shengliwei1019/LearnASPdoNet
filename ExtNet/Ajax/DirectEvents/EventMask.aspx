<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventMask.aspx.cs" Inherits="ExtNet.Ajax.DirectEvents.EventMask" %>
<%@ Import Namespace="System.Threading" %>

<script runat="server">
    protected void ShowPanel(object render, DirectEventArgs e)
    {
        Thread.Sleep(5000);
        X.Msg.Alert("DirectEvent", "Event received").Show();
    }
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Direct Event Example</title>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />
    <ext:Button runat="server" Text="Click Me">
        <DirectEvents>
            <Click OnEvent="ShowPanel">
                <EventMask ShowMask="true" />
            </Click>
        </DirectEvents>
    </ext:Button>
</body>
</html>
