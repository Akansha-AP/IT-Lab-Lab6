<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourDetails.aspx.cs" Inherits="Lab7Q2.TourDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Tour Details:<br />
            <asp:SqlDataSource ID="tourDetails" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Lab7 %>" 
                SelectCommand="Select * from TravelAgency where Place=@Place">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Place" QueryStringField="Place" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gridDetails" runat="server" DataSourceID="tourDetails" AutoGenerateEditButton="false"></asp:GridView>
        </div>
    </form>
</body>
</html>
