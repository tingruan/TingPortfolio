using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblYear.Text = DateTime.Now.Year.ToString();
        lblEmail.Text = "<a href='mailto:info@"
        + Request.Url.Host.Replace("www.", "") + "'>me</a>";
        
    }
}
