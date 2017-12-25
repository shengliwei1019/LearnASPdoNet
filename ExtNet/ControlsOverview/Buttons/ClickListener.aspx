<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClickListener.aspx.cs" Inherits="ExtNet.ControlsOverview.Buttons.ClickListener" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Click listener</title>
    <style>
        body { padding: 10px; }
    </style>
    <script>
        var MyApp = {
            onButtonClick: function (button, event) {
                console.log(this, button, event);
            }
        };
    </script>
</head>
<body>
    <ext:ResourceManager ID="ResourceManager1" runat="server" />
    <ext:Button ID="Button1" runat="server" Text="Click Me!">
        <Listeners>
            <Click Handler="alert('clicked');" />
        </Listeners>
    </ext:Button>
    <ext:Button ID="Button2" runat="server" Text="Click Me!">
        <Listeners>
            <Click Fn="MyApp.onButtonClick" />
        </Listeners>
    </ext:Button>
    <ext:Button ID="Button3" runat="server" Text="Click Me!">
        <Listeners>
            <Click Fn="MyApp.onButtonClick" Scope="window" />
        </Listeners>
    </ext:Button>
    <ext:Button ID="Button4" runat="server" Text="Click Me!">
        <Listeners>
            <Click Fn="MyApp.onButtonClick" Single="true" />
        </Listeners>
    </ext:Button>
</body>
</html>
