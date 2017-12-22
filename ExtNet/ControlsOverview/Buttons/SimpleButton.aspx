<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SimpleButton.aspx.cs" Inherits="ExtNet.ControlsOverview.Buttons.SimpleButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
		body { padding: 10px; }

		.icon-paste-large { background-image: url(../../images/iconPasteLarge.png); }
	</style>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Gray" />
    <ext:Button runat="server" Text="Change case">
        <Menu>
            <ext:Menu runat="server">
                <Items>
                    <ext:MenuItem Text="Lower case" Icon="TextLowercase" />
                    <ext:MenuItem Text="Upper case" Icon="TextLowercaseA" />
                    <ext:MenuSeparator />
                    <ext:MenuItem Text="Title case" />
                </Items>
            </ext:Menu>
        </Menu>
    </ext:Button>
    <ext:SplitButton runat="server" Text="Paste" ID="SplitButtonExample" Icon="PastePlain">
        <Menu>
            <ext:Menu runat="server">
                <Items>
                    <ext:MenuItem Text="Paste Plain Text" />
                    <ext:MenuItem Text="'Paste with Merge" />
                    <ext:MenuSeparator />
                    <ext:MenuItem Text="Paste Special.." />
                </Items>
            </ext:Menu>
        </Menu>
    </ext:SplitButton>
    <ext:SplitButton runat="server" Text="Paste" IconCls="icon-paste-large" Scale="Large" IconAlign="Top" ArrowAlign="Bottom" Width="64">
        <Menu>
            <ext:Menu runat="server">
                <Items>
                    <ext:MenuItem Text="Paste Plain Text" />
                    <ext:MenuItem Text="'Paste with Merge" />
                    <ext:MenuSeparator />
                    <ext:MenuItem Text="Paste Special.." />
                </Items>
            </ext:Menu>
        </Menu>
    </ext:SplitButton>
</body>
</html>
