﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassingExtNetId.aspx.cs" Inherits="ExtNet.ControlsOverview.Buttons.PassingExtNetId" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Passing Ext.NET component id</title>
    <style>
        body { padding : 10px; }
    </style>
    <script>
        var MyApp = {
            changeButtonText: function (targe, source) {
                targe.setText('Text changed by ' + source.id);
            }
        };
    </script>
</head>
<body>
    <ext:ResourceManager ID="ResourceManager1" runat="server" />
    <ext:Button ID="ButtonA" runat="server" Text="Change Button B">
        <Listeners>
            <Click Handler="MyApp.changeButtonText(#{ButtonB}, this);" />
        </Listeners>
    </ext:Button>
    <ext:Button ID="ButtonB" runat="server" Text="Change Button A">
        <Listeners>
            <Click Handler="MyApp.changeButtonText(#{ButtonA}, this);" />
        </Listeners>
    </ext:Button>
</body>
</html>
