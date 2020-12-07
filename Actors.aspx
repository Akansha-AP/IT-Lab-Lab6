<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Actors.aspx.cs" Inherits="Lab7Q4.Actors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Choose a genre:
            <asp:SqlDataSource ID="Genres" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Lab7 %>" 
                SelectCommand="Select distinct(category) from Legends">
            </asp:SqlDataSource>
            <asp:DropDownList ID="lstGenre" runat="server" 
                DataSourceID="Genres" 
                DataTextField="category" DataValueField="category" AutoPostBack="true">
            </asp:DropDownList>
            <br />
            <br />
            Actors:<br />
            <asp:SqlDataSource ID="actors" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Lab7 %>" 
                SelectCommand="Select Name from Legends where category=@Genre">
                <SelectParameters>
                    <asp:ControlParameter Name="Genre" ControlID="lstGenre" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:ListBox ID="lstActors" runat="server" DataSourceID="actors" 
                DataTextField="Name" DataValueField="Name" AutoPostBack="true"></asp:ListBox>
            <br />
            <br />
            <asp:SqlDataSource ID="Info" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Lab7 %>" 
                SelectCommand="Select * from Legends where Name=@Name">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lstActors" Name="Name" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="actorInfo" runat="server" DataSourceID="Info"></asp:GridView>
        </div>
    </form>
</body>
</html>
