﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BasicWithDirectMethodConfiguration.aspx.cs" Inherits="ExtNet.Ajax.DirectMethods.BasicWithDirectMethodConfiguration" %>

<script runat="server">
    [DirectMethod]
    public void AddToServerTime(int hours)
    {
        Label1.Text = DateTime.Now.Add(new TimeSpan(hours, 0, 0)).ToString();
    }
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Direct Method Example</title>
    <script>
        function doUpdate(hours) {
            console.log("Before");
            App.direct.AddToServerTime(hours, {
                success: onSuccess,
                failure: onFailure,
                eventMark: { showMark: true }
            });
            console.log("After");
        }

        function onSuccess(result) {
            console.log("onSuccess", result);
        }

        function onFailure(result) {
            console.log("onFailure", result);
        }
    </script>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />
    <ext:Window runat="server" Width="250" Height="150" Title="My Window" PaddingSummary="5px">
        <Items>
            <ext:Label Text="Initial text" runat="server" ID="Label1" />
        </Items>
        <TopBar>
            <ext:Toolbar runat="server">
                <Items>
                    <ext:Button runat="server" Text="Update" Icon="ArrowRefresh">
                        <Listeners>
                            <Click Handler="doUpdate(5);" />
                        </Listeners>
                    </ext:Button>
                </Items>
            </ext:Toolbar>
        </TopBar>
    </ext:Window>
</body>
</html>
