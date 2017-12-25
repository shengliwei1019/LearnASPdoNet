﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassingCustomConfig.aspx.cs" Inherits="ExtNet.ControlsOverview.Buttons.PassingCustomConfig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Passing custom config</title>
    <style>
		body { padding: 10px; }
	</style>
    <script>
		var MyApp = {
			changeButtonText: function (target, source) {
				target.setText('Text changed by ' + source.whoAmI);
			}
		};
	</script>
</head>
<body>
    <ext:ResourceManager ID="ResourceManager1" runat="server" />
    <ext:Button ID="ButtonC" runat="server" Text="Change Button D">
	    <Listeners>
		    <Click Handler="MyApp.changeButtonText(#{ButtonD}, this);" />
	    </Listeners>
        <CustomConfig>
            <ext:ConfigItem Value="Button C" Name="whoAmI" Mode="Value" />
        </CustomConfig>
    </ext:Button>
    <ext:Button ID="ButtonD" runat="server" Text="Change Button C">
	    <Listeners>
		    <Click Handler="MyApp.changeButtonText(#{ButtonC}, this);" />
	    </Listeners>
        <CustomConfig>
            <ext:ConfigItem Value="Button D" Name="whoAmI" Mode="Value" />
        </CustomConfig>
    </ext:Button>
</body>
</html>
