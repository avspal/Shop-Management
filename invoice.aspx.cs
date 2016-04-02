using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class invoice : System.Web.UI.Page
{
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DateTime dt=DateTime.Now;
            lbl_date.Text =dt.ToString("dd-MMM-yyyy hh:mm:ss tt");
            lbl_sname.Text = Session["uname"].ToString();
            ShowData();
        }
    }
    public void ShowData()
    {
        string list = "select productname,brand,sbrand,price,quantity,totalprice from parcha";
        ds = new DataSet();
        ds = DataLogic.ExeAdapter(list);
        GridView1.DataSource = ds.Tables["temp"];
        GridView1.DataBind();
        decimal total = ds.Tables["temp"].AsEnumerable().Sum(row => row.Field<decimal>("totalprice"));
        lbl_grand.Text = total.ToString();

    }
}