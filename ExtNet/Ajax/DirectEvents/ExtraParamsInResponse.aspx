<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExtraParamsInResponse.aspx.cs" Inherits="ExtNet.Ajax.DirectEvents.ExtraParamsInResponse" %>
<script runat="server">
    protected void DoSomething(object render, DirectEventArgs e)
    {
        e.ExtraParamsResponse.Add(new Ext.Net.Parameter("paramName", "response value"));
        ExtNet.Msg.Notify("Done", "Done").Show();
    }
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Title</title>
    <style>
        body { padding: 10px; }
    </style>
    <script type="text/javascript">
        function onAfterServerDidSomething(response, result) {
            console.log(result.extraParamsResponse.paramName);
        }
    </script>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />
    <ext:Button runat="server" Text="Click Me">
        <DirectEvents>
            <Click OnEvent="DoSomething" Success="onAfterServerDidSomething" />
        </DirectEvents>
    </ext:Button>
</body>
</html>
