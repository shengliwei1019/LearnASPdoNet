<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageMethodExample.aspx.cs" Inherits="ExtNet.Ajax.PageMethods.PageMethodExample" %>
<%@ Import Namespace="System.Web.Services" %>

<!DOCTYPE html>

<script runat="server">
    [WebMethod]
    public static string GetCurrentDate()
    {
        return DateTime.Now.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Page Method Example</title>
    <script type="text/javascript">
        function GetDateFromServer() {
            PageMethods.GetCurrentDate(OnSucces, OnError);
            return false;
        }

        function OnSucces(response) {
            alert(response);
        }

        function OnError(error) {
            alert(error);
        }
    </script>
</head>
<body>
    <form id="HtmlForm" runat="server">
    <asp:ScriptManager runat="server" EnablePageMethods="true" ID="ScriptManager1" />
    <div>
        <asp:Button runat="server" Text="What's the time?" OnClientClick="return GetDateFromServer();" />
    </div>
    </form>
</body>
</html>
