using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HireMe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            string date = Request.QueryString["date"];

            if (date != null)
            {
              
                LabelDate.Text = "Yes I am avalaible on " + date ;
            }
            if (date == "NotAvailale")
            {
                LabelDate.Text = "No I am not available !";
            }
            if(date == null)
            {
                LabelDate.Visible= false;
            }

        }
    }
}