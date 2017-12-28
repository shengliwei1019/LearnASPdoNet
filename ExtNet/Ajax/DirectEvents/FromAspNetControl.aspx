<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FromAspNetControl.aspx.cs" Inherits="ExtNet.Ajax.DirectEvents.FromAspNetControl" %>
<script runat="server">
    protected void MyServerMethod(object render, DirectEventArgs e)
    {
        X.Msg.Alert("DirectEvent", "Event received").Show();
    }

    protected void MyServerMethod2(object render, DirectEventArgs e)
    {
        X.Msg.Alert("DirectEvent", "Event received").Show();
    }
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>Direct Event Example</title>
	<style>
		body { padding:10px; }
		.box { width:100px; height:100px; background:#ccf; margin-top:1em; }
	</style>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray">
        <CustomDirectEvents>
            <ext:DirectEvent Target="Button1" OnEvent="MyServerMethod">
                <EventMask ShowMask="true" />
            </ext:DirectEvent>
            <ext:DirectEvent HtmlEvent="MouseOver" Target="MyDiv" OnEvent="MyServerMethod" />
            <ext:DirectEvent HtmlEvent="Click" Target="${div.box}" OnEvent="MyServerMethod2" />
        </CustomDirectEvents>
    </ext:ResourceManager>

    <form runat="server" id="HtmlForm">
        <asp:Button ID="Button1" runat="server" Text="Click Me" />
    </form>

    <div id="MyDiv">Direct Event Example</div>
    <div class="box">Box 1</div>
    <div class="box">Box 2</div>
    <div class="box">Box 3</div>
</body>
</html>
