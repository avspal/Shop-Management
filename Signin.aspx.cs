using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Signin : System.Web.UI.Page
{
    DataSet ds;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_signin_Click(object sender, EventArgs e)
    {
        String select = "select name,photo,userid from register where userid=" + txt_userid.Text + " and password='" + txt_password.Text + "'";
        ds = DataLogic.ExeAdapter(select);
        if (ds.Tables["temp"].Rows.Count == 1)
        {
            Session["uname"] = ds.Tables["temp"].Rows[0]["name"].ToString();
            Session["profile"] = ds.Tables["temp"].Rows[0]["photo"].ToString();
           Session["id"] = ds.Tables["temp"].Rows[0]["userid"].ToString();
           //Response.Write(Session["uname"]);
           Response.Redirect("mainpsge.aspx");
        }
        else
            lbl_message.Text = "UserID or Password is incorrect.";
    }
}