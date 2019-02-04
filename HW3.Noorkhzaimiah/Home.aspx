<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HW3.Noorkhzaimiah.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .newStyle1 {
            font-family: Chiller;
        }
        .auto-style2 {
            font-family: Chiller;
            font-size: 100pt;
        }
    </style>
</head>
<body style="background-color:rosybrown">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <br />
        <br />
        <br />
        <span class="auto-style2">WelcomeTo My App.</span><br />
        <br />
        <br />
    
        <asp:Button ID="Button1" runat="server" Text="login" Height="58px" style="font-weight: 700; font-size: large;" Width="104px" OnClick="But2" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server"  Text="Register" Height="53px" style="font-weight: 700; font-size: large;" Width="111px" OnClick="But1" />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
