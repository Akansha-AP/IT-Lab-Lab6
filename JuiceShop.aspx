<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JuiceShop.aspx.cs" Inherits="Lab7Q1.JuiceShop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Choose&nbsp; fruits:<asp:CheckBoxList ID="lstFruits" runat="server">
            </asp:CheckBoxList>
            <br />
            Choose an ice-cream:
            <br />
            <asp:RadioButtonList ID="lstIceCream" runat="server">
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="btnDisplay" OnClick="btnDisplay_Click" runat="server" Text="Display" />
            <br />
            <br />
            <asp:Label ID="lblInfo" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
