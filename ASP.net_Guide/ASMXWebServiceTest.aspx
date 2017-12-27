<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASMXWebServiceTest.aspx.cs" Inherits="ASP.net_Guide.ASMXWebServiceTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form runat="server">
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    FirNumber:
                </td>
                <td>
                    <asp:TextBox ID="txtFirNumber" runat="server" Text="" />
                </td>
            </tr>
            <tr>
                <td>
                    SecNumber:
                </td>
                <td>
                    <asp:TextBox ID="txtSecNumber" runat="server" Text="" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" Text="Submit" runat="server" />
                </td>
            </tr>
        </table>

        <div>
            Your Name :
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <input id="btnGetTime" type="button" value="Show Current Time"
                onclick = "ShowCurrentTime()" />
        </div>
    </form>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("[id*=btnSubmit]").click(function () {
            var firNum = $.trim($("[id*=txtFirNumber]").val());
            var secNum = $.trim($("[id*=txtSecNumber]").val());

            $.ajax({
                type: "Post",
                url: "http://localhost:1523/MathService.asmx/Add",
                data: "{ a: " + firNum + ", b: " + secNum + "}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    alert(r.d);
                },
                error: function (r) {
                    alert(r.responseText);
                },
                failure: function (r) {
                    alert(r.responseText);
                }
            });

            return false;
        });
    });

    function ShowCurrentTime() {
        $.ajax({
            type: "POST",
            url: "ASMXWebServiceTest.aspx/GetCurrentTime",
            data: '{name: "' + $("#<%=txtUserName.ClientID%>")[0].value + '" }',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function(response) {
                alert(response.d);
            }
        });
    }

    function OnSuccess(response) {
        alert(response.d);
    }
</script>
</body>
</html>
