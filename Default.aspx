<%@ Page Title="Welcome to Ting Ruan's Online Profile" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
  <script language="javascript" type="text/javascript">
      $(document).ready(function () {

          $('#myModal').modal('show')

      });
  </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   

    <h2>
        Welcome
    </h2><br />
    <p>
     <small> <em>modified on <asp:Label ID="lblLastMod" runat="server" /></em></small><br />
    </p>
    <br /><hr />
    <p>
        My name is Ting Ruan, I am a developer living in Ottawa Ontario Canada. <br /><br />
        Currently I am seeking a Web development position on the Microsoft platform, in the Ottawa region.  Feel free to contact me if you see me as a fit to your organization.  <br /> <br />

        I am a software developer with over 4 years of experience in the whole cycle of Web Applications development. I have a passion for what I do.  <br /> <br />
        
        I am highly Self motivated and strongly quality oriented. <br /> <br />
    </p>
    <p>
        If you like what you see, don't hesitate to <a href="HireMe.aspx" target="_blank">contact me</a>, you can find my updated resume there.
    </p>
</asp:Content>
