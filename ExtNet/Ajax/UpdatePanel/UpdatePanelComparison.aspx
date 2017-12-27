<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePanelComparison.aspx.cs" Inherits="ExtNet.Ajax.UpdatePanel.UpdatePanelComparison" %>
<script runat="server">
    protected void ShowMyPanel(object sender,EventArgs e)
    {
        MyAspLiteral.Text = "Time on server: " + DateTime.Now;
        MyAspPanel.Visible = true;
    }
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>UpdatePanel comparison</title>
</head>
<body>
    <form id="HtmlForm" runat="server">
    <asp:ScriptManager runat="server" ID="ScriptManger1" />
    <asp:UpdatePanel runat="server" ID="UpdatePanel1">
        <ContentTemplate>
            <asp:Panel runat="server" Visible="false" ID="MyAspPanel">
                <asp:Literal runat="server" ID="MyAspLiteral" />
            </asp:Panel>
            <asp:Button runat="server" Text="Click Me" ID="Button1" OnClick="ShowMyPanel" />
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
