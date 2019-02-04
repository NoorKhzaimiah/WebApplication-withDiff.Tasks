<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HW3.Noorkhzaimiah.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .newStyle1 {
            font-family: "Calisto MT";
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            font-weight: 700;
            text-align: right;
            margin-left: 0px;
        }
        .auto-style5 {}
        .auto-style6 {}
        .auto-style7 {}
        .auto-style8 {}
        .auto-style9 {}
        .auto-style10 {}
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            font-weight: 700;
        }
    </style>
</head>
<body style ="background-color:blanchedalmond">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <span class="newStyle1">
        <br class="auto-style2" />
        </span><strong><span class="newStyle1"><span class="auto-style2">Registration</span><br class="auto-style2" />
        <br class="auto-style2" />
        </span></strong><span class="newStyle1"><span class="auto-style3">First name:</span><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8" Height="26px" Width="155px"></asp:TextBox>
        <br />
        <br class="auto-style3" />
        L<span class="auto-style3">ast name:</span><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7" Height="21px" Width="155px"></asp:TextBox>
        <br />
        <br class="auto-style3" />
        P<span class="auto-style3">hone number:</span><asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6" Height="23px" Width="174px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="must enter 10 digit !" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        <br />
        <br class="auto-style3" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E<span class="auto-style3">mail:</span><asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style5" Height="29px" Width="202px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Error in  the format of email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br class="auto-style3" />
        Pa<span class="auto-style3">ssword:</span><asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style9" Height="25px" Width="161px" TextMode="Password"></asp:TextBox>
        <br />
        <br class="auto-style3" />
        C<span class="auto-style3">onfirm password:</span><asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style10" Height="27px" Width="143px" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox5" ErrorMessage="passwords not match!"></asp:CompareValidator>
        <br class="auto-style2" />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="38px" OnClick="Button1_Click" Text="Register" Width="136px" />
        <br class="auto-style2" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style11" Text="Label"></asp:Label>
        <br class="auto-style2" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [person] WHERE [firstname] = @firstname AND [lastname] = @lastname" InsertCommand="INSERT INTO [person] ([firstname], [lastname], [phoneno], [email], [password]) VALUES (@firstname, @lastname, @phoneno, @email, @password)" SelectCommand="SELECT * FROM [person] WHERE (([firstname] = @firstname) AND ([lastname] = @lastname) AND ([phoneno] = @phoneno) AND ([email] = @email) AND ([password] = @password))" UpdateCommand="UPDATE [person] SET [phoneno] = @phoneno, [email] = @email, [password] = @password WHERE [firstname] = @firstname AND [lastname] = @lastname">
            <DeleteParameters>
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
                <asp:Parameter Name="phoneno" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="firstname" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="lastname" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="phoneno" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="email" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="password" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="phoneno" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="firstname" Type="String" />
                <asp:Parameter Name="lastname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style12" OnClick="Button2_Click" Text="Go to HomePage to login" />
        <br class="auto-style2" />
        </span>
    
    </div>
    </form>
</body>
</html>
