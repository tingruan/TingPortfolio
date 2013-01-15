<%@ Page Title="Hire Ting Ruan" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HireMe.aspx.cs" Inherits="HireMe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<script type="text/javascript">
    function openfile(thefile) {
        location.href = "Resume/"  + thefile +".docx"
    }

    $('#collapseOne').collapse({
        toggle: false
    })
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Label ID="LabelDate" runat="server" Text="Label" CssClass=" alert alert-success"></asp:Label><br /><hr />
    <div class="accordion" id="accordion2">
<div class="accordion-group">
<div class="accordion-heading">
<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
My Contact Information
</a>
</div>
<div id="collapseOne" class="accordion-body collapse in">
<div class="accordion-inner">
<address>
    <strong>Ting Ruan</strong><br>
    Ottawa Ontario K2B 8K3<br>
    <abbr title="Phone">P:</abbr> (613) 276-0314
    </address>
     
    <address>
    <a href="mailto:ting.ruan@live.ca">ting.ruan@live.ca</a>
    </address>
</div>
</div>
</div>

</div>
<p>
<button class="btn btn-primary" type="button" onclick="openfile('Ting Ruan_CV')">Download My CV</button>



</asp:Content>

