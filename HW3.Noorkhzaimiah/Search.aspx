<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="HW3.Noorkhzaimiah.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            text-align: center;
            font-weight: 700;
            font-family: "Colonna MT";
            font-size: 75pt;
        }
        .newStyle1 {
            font-family: "Colonna MT";
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {}
        .auto-style4 {
            font-weight: 700;
            font-size: large;
        }
        .auto-style5 {
            color: #FFFFFF;
        }
        .auto-style6 {
            font-weight: 700;
            font-size: large;
        }
    </style>
</head>
<body style =" background-color:black">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        Search<br />
        <span class="auto-style2">Enter part of firstname or lastname :</span><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Height="35px" Width="192px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="41px" Text="Search" Width="146px" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style5" DataKeyNames="firstname,lastname" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="firstname" HeaderText="firstname" ReadOnly="True" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" ReadOnly="True" SortExpression="lastname" />
                <asp:BoundField DataField="phoneno" HeaderText="phoneno" SortExpression="phoneno" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [firstname], [lastname], [phoneno], [email] FROM [person] WHERE ([firstname] LIKE '%' + @firstname + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="firstname" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="51px" OnClick="Button2_Click" Text="logout" Width="174px" />
    </form>
</body>
</html>
