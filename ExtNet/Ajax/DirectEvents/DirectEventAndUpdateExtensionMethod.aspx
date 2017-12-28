<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DirectEventAndUpdateExtensionMethod.aspx.cs" Inherits="ExtNet.Ajax.DirectEvents.DirectEventAndUpdateExtensionMethod" %>
<script runat="server">
    protected void CreatePanel(object render, DirectEventArgs e)
    {
        var literal = new Literal { Text="<p>Hello from server</p>" };
        Panel1.Controls.Clear();
        Panel1.Controls.Add(literal);
        Panel1.Update();
    }
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
		body { padding: 10px; }
	</style>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />
    <ext:Button runat="server" Text="Click Me" OnDirectClick="CreatePanel" />
    <asp:Panel ID="Panel1" runat="server">
        <p>Some initial content</p>
    </asp:Panel>
</body>
</html>
