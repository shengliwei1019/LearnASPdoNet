<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DirectEventReturningExtNetComponent.aspx.cs" Inherits="ExtNet.Ajax.DirectEvents.DirectEventReturningExtNetComponent" %>
<script runat="server">
    protected void ShowTime(object render, DirectEventArgs e)
    {
        new Window("Server Time", Icon.Time)
        {
            ID = "MyWindow",
            Html = DateTime.Now.ToString(),
            AutoShow = true
        }.Render();
    }

    protected void CreatePanel(object render, DirectEventArgs e)
    {
        var panel = new Ext.Net.Panel
        {
            Title = "Created during Direct Event",
            Html = DateTime.Now.ToString()
        };
        panel.AddTo(Container);
    }

    protected void CreateTab(object render, DirectEventArgs e)
    {
        var panel = new Ext.Net.Panel
        {
            Title = "Created during Direct Event",
            Html = DateTime.Now.ToString()
        };
        panel.AddTo(TabPanel1);
        //TabPanel1.SetActiveTab(panel);
        TabPanel1.SetNextTabAsActive();
    }
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Direct Event Example</title>
	<style>
		body { padding: 10px; }
	</style>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />
    <ext:Button runat="server" Text="Click Me">
        <DirectEvents>
            <Click OnEvent="ShowTime" />
        </DirectEvents>
    </ext:Button>
    <ext:Button runat="server" Text="Click Me">
        <DirectEvents>
            <Click OnEvent="CreatePanel" />
        </DirectEvents>
    </ext:Button>

    <ext:Container runat="server" ID="Container" />
    <ext:Button runat="server" Text="Click Me">
        <DirectEvents>
            <Click OnEvent="CreateTab" />
        </DirectEvents>
    </ext:Button>

    <ext:TabPanel runat="server" Height="100" ID="TabPanel1">
        <Items>
            <ext:Panel Title="Created on page load" runat="server" Html="Content"/>
        </Items>
    </ext:TabPanel>
</body>
</html>
