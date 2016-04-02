using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        img_photo.ImageUrl = Session["profile"].ToString();
        lbl_user.Text = "Welcome :" + Session["uname"].ToString();
        //DateTime dt=DateTime.Now;
        //lbl_date.Text = dt.ToString("dd-MMMM-yyyy");
        //lbl_time.Text = dt.ToString("hh:mm:ss tt");
    }
    
}
