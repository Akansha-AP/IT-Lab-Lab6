<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityStateMapping.aspx.cs" Inherits="Lab7Q3.CityStateMapping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Choose a state:
            <asp:DropDownList ID="lstState" OnSelectedIndexChanged="lstState_SelectedIndexChanged" AutoPostBack="true" runat="server">
            </asp:DropDownList>
            <br />
            City:&nbsp;&nbsp;
            <asp:SqlDataSource ID="cities" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Lab7 %>" 
                SelectCommand="Select CityName from City where StateID=@StateID">
                <SelectParameters>
                    <asp:ControlParameter Name="StateID" ControlID="lstState" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DropDownList ID="lstCity" runat="server" AutoPostBack="true" DataSourceID="cities" DataTextField="CityName" DataValueField="CityName">
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
