<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourAgency.aspx.cs" Inherits="Lab7Q2.TourAgency" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="tours" runat="server"
                ProviderName="System.Data.SqlClient"
                ConnectionString="<%$ ConnectionStrings:Lab7 %>"
                SelectCommand="Select place from TravelAgency" />
            Choose a tour package:<br />
            <asp:ListBox ID="lstTours" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" runat="server" DataSourceID="tours" AutoPostBack="true" DataTextField="Place" DataValueField="Place"></asp:ListBox>
            <br />
        </div>
    </form>
</body>
</html>
