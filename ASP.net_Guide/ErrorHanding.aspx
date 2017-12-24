<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorHanding.aspx.cs" Inherits="ASP.net_Guide.ErrorHanding" Trace="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tracing, debugging and error handing</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblheading" runat="server" Text="Tracing, Debugging and Error Handing"></asp:Label>
        <br /><br />
        <asp:DropDownList ID="ddlquotes" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlquotes_SelectedIndexChanged"></asp:DropDownList>
        <br /><br />
        <asp:Label ID="lblquotes" runat="server"></asp:Label>
        <br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="file:///C:/Program%20Files/Git/mingw64/share/doc/git-doc/git-status.html">Link to:</asp:HyperLink>
    </div>
    </form>
</body>
</html>
