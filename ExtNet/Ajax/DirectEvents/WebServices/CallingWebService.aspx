<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallingWebService.aspx.cs" Inherits="ExtNet.Ajax.DirectEvents.WebServices.CallingWebService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Direct Event Example</title>
    <script type="text/javascript">
        function showServerResponse(result) {
            var params = result.extraParamsResponse || {};

            if (params.relativeTime) {
                alert(params.relativeTime);
            }
        }
    </script>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray"/>
    <ext:Button runat="server" Text="Get Server Time">
        <DirectEvents>
            <Click Url="ServerTimeService.asmx/GetServerTime" Type="Load" Method="POST" />
        </DirectEvents>
    </ext:Button>

    <ext:Button runat="server" Text="Get server time 5 hours from now">
        <DirectEvents>
            <Click Url="ServerTimeService.asmx/GetRelativeServerTime" Type="Load" Method="POST" Success="showServerResponse(result);">
                <ExtraParams>
                    <ext:Parameter Mode="Raw" Value="5" Name="hours" />
                </ExtraParams>
            </Click>
        </DirectEvents>
    </ext:Button>

    <ext:Button runat="server" Text="Get Server Time">
        <DirectEvents>
            <Click Url="ServerTimeHandler.ashx" Type="Load" Method="POST" />
        </DirectEvents>
    </ext:Button>
</body>
</html>
