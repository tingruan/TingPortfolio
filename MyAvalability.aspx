<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MyAvalability.aspx.cs" Inherits="MyAvalability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h3>My Availability for face to face interviews:</h3>
<br />
<p>Please select the date of your choice: </p> <br />
<br />
    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="alert"></asp:Label>
    <br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [BusyOrNot]"></asp:SqlDataSource>
<asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
    BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
    Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" 
    ondayrender="Calendar1_DayRender" TitleFormat="Month" Width="400px" 
        onselectionchanged="Calendar1_SelectionChanged">
    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
        ForeColor="#333333" Height="10pt" />
    <DayStyle Width="14%" />
    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
    <OtherMonthDayStyle ForeColor="#999999" />
    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="8pt" ForeColor="#333333" Width="1%" />
    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
        ForeColor="White" Height="14pt" />
    <TodayDayStyle BackColor="#CCCC99" />
</asp:Calendar>

</asp:Content>

