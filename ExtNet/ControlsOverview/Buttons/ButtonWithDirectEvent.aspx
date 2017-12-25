<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonWithDirectEvent.aspx.cs" Inherits="ExtNet.ControlsOverview.Buttons.ButtonWithDirectEvent" %>
<script runat="server">
    protected void Button_Click(object sender, DirectEventArgs e)
    {
        X.Msg.Alert("DirectEvent", string.Format("Item - {0}",e.ExtraParams["Item"])).Show();
    }
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>A button with a Direct Event</title>
    <style>
		body { padding: 10px; }
	</style>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />
    <ext:Button runat="server" Text="Click Me">
        <DirectEvents>
            <Click OnEvent="Button_Click">
                <EventMask ShowMask="true" />
                <ExtraParams>
                    <ext:Parameter Name="Item" Value="My param" />
                </ExtraParams>
            </Click>
        </DirectEvents>
    </ext:Button>
</body>
</html>
