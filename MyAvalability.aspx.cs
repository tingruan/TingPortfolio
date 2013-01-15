using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class MyAvalability : System.Web.UI.Page
{
  //public bool isBusyDay = false;
  //public DateTime selectedDate;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "";
        if (!IsPostBack)
        {
           string status =  Request.QueryString["Error"];
           if (status == "yes")
           {

               Label2.Text = "Oops, I am not available on that day!";
           }
           else
           {
               Label2.Visible=false;
           }
        }

    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {


        string onmouseoverStyle = "this.style.backgroundColor='#D4EDFF'";
        string onmouseoutStyle = "this.style.backgroundColor='@BackColor'";
        string rowBackColor = String.Empty;
        bool notTouched = true;
        DateTime nextday = e.Day.Date;
        int count = 0;
        DataClassesDataContext db = new DataClassesDataContext();

        try
        {
            var busyday = from c in db.BusyOrNots where c.BusyDay == nextday select c;
            
  
            foreach (var day in busyday)
            {
                e.Cell.BackColor = System.Drawing.Color.Red;
                count = count + 1;
                notTouched = false;
                string tooltipText = e.SelectUrl;
                e.Cell.Controls.Clear();
                HyperLink link = new HyperLink();
                link.NavigateUrl = tooltipText;
                link.ToolTip = day.Description;
                link.Text = e.Day.Date.Day.ToString();
                e.Cell.Controls.Add(link);
            }
        }
        catch (Exception ex)
        {
            System.Console.Write(ex);
        }

        if (notTouched && (e.Day.Date != DateTime.Now.Date)){

            e.Cell.Attributes.Add("onmouseover", onmouseoverStyle);
            e.Cell.Attributes.Add("onmouseout", onmouseoutStyle.Replace("@BackColor", rowBackColor));
            
        }


    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

        //if (Calendar1.SelectedDayStyle.ForeColor.Equals("White")) //an available date
        //{
        DateTime nextday = Calendar1.SelectedDate; 
        int count = 0;
        DataClassesDataContext db = new DataClassesDataContext();

        try
        {
            var busyday = from c in db.BusyOrNots where c.BusyDay == nextday select c;

            foreach ( var u in busyday){
              if (u.BusyDayID != null)
            {

                //Label2.Text = "Oops, I am not available on " + Calendar1.SelectedDate.ToString("d") + " I have " + u.Description + ".";
                //selectedDate = Calendar1.SelectedDate;
                  Response.Redirect("MyAvalability.aspx?Error=yes");
            }
              //else
              //{
                
              //}
                count = count + 1;
        }


            Response.Redirect("HireMe.aspx?Date=" + Calendar1.SelectedDate.ToString("d"));
        }
        catch
        {
           
        }
                
                
        //}
        //else
        //{
        //    Response.Redirect("HireMe.aspx?Date=");
        //}

    }
}