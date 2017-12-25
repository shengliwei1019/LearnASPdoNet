<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageBusExample.aspx.cs" Inherits="ExtNet.ControlsOverview.MessageBus.MessageBusExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>MessageBus Example</title>
	<style>
		body { padding: 10px; }
	</style>
    <script>
        function DoSomething()
        {
            Ext.net.Bus.publish('App.event2', { item : this });
        }
    </script>
</head>
<body>
    <ext:ResourceManager runat="server" />
    <ext:Panel runat="server" Title="MessageBus Event Logger" Width="200" Height="150" AutoScroll="true">
        <MessageBusListeners>
            <ext:MessageBusListener 
                Name="App.*" 
                Handler="this.body.createChild({
                    html : 'Received event from ' + data.item.id,
                    tag : 'p'
                });" />
        </MessageBusListeners>
        <Buttons>
            <ext:Button runat="server" ID="Button1" Text="Publish event 1">
                <Listeners>
                    <Click BroadcastOnBus="App.event1" />
                </Listeners>
            </ext:Button>
            <ext:Button runat="server" ID="Button2" Text="Publish event 2">
                <Listeners>
                    <Click Fn="DoSomething" />
                </Listeners>
            </ext:Button>
        </Buttons>
    </ext:Panel>
</body>
</html>
