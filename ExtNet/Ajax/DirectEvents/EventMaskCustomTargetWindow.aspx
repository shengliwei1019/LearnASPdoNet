<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventMaskCustomTargetWindow.aspx.cs" Inherits="ExtNet.Ajax.DirectEvents.EventMaskCustomTargetWindow" %>
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
<head id="Head1" runat="server">
	<title>Direct Event Example</title>
	<style>
		body { padding: 10px; }
		.x-mask-msg { border-color: #aaa; }
		.x-mask-msg > div { background-color: #fff; }
	</style>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />
    <ext:Window runat="server" Width="200" Height="150" ID="Window1" Title="Window With Button">
        <Buttons>
            <ext:Button runat="server" Text="Click Me">
                <DirectEvents>
                    <Click OnEvent="ShowPanel">
                        <EventMask ShowMask="true" Target="CustomTarget" CustomTarget="Window1" />
                    </Click>
                </DirectEvents>
            </ext:Button>
        </Buttons>
    </ext:Window>
</body>
</html>
