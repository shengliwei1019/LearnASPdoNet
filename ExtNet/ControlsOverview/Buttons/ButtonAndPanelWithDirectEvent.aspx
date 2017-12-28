<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonAndPanelWithDirectEvent.aspx.cs" Inherits="ExtNet.ControlsOverview.Buttons.ButtonAndPanelWithDirectEvent" %>
<script runat="server">
    protected void ShowPanel(object render,DirectEventArgs e)
    {
        MyExtLabel.Text = string.Format("Time on server: {0}", DateTime.Now);
        MyExtPanel.Show();
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
    <ext:Panel runat="server" Title="My Panel" Hidden="true" ID="MyExtPanel" BodyPaddingSummary="2 2 4 2">
        <Items>
            <ext:Label runat="server" ID="MyExtLabel" />
        </Items>
    </ext:Panel>
    <ext:Button runat="server" ID="Button1" Text="Click Me">
        <DirectEvents>
            <Click OnEvent="ShowPanel">
                <EventMask ShowMask="true"/>
            </Click>
        </DirectEvents>
    </ext:Button>
</body>
</html>
