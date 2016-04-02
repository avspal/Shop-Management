using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class sales : System.Web.UI.Page
{
    DataSet ds;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int uid = Convert.ToInt32(Session["id"].ToString());
            string year = "select distinct(year),userid from SalesReport where userid="+uid+" order by year";
            string x = "year";
            string y = "userid";
            string header = "--Select Year--";
            DataLogic.FillDropDown(drop_year, year, x, y, header);
           ShowData();
        }
    }
   public void ShowData()
    {
        int uid = Convert.ToInt32(Session["id"].ToString());
        string list = "select year,month,day,productname,brand,sbrand,price,quantity,totalprice from SalesReport where userid="+uid;
        ds = new DataSet();
        ds = DataLogic.ExeAdapter(list);
        GridView1.DataSource = ds.Tables["temp"];
        GridView1.DataBind();
        decimal total = ds.Tables["temp"].AsEnumerable().Sum(row => row.Field<decimal>("totalprice"));
        lbl_grand.Text = total.ToString();
    }
   protected void drop_year_SelectedIndexChanged(object sender, EventArgs e)
   {
       int uid = Convert.ToInt32(Session["id"].ToString());
       string year = drop_year.SelectedItem.Text;
       string list = "select year,month,day,productname,brand,sbrand,price,quantity,totalprice from SalesReport where year='" + year + "' and userid="+uid+"";
       ds = new DataSet();
       ds = DataLogic.ExeAdapter(list);
       GridView1.DataSource = ds.Tables["temp"];
       GridView1.DataBind();
       decimal total = ds.Tables["temp"].AsEnumerable().Sum(row => row.Field<decimal>("totalprice"));
       lbl_grand.Text = total.ToString();
   }
   protected void drop_month_SelectedIndexChanged(object sender, EventArgs e)
   {
       int uid = Convert.ToInt32(Session["id"].ToString());
       string year = drop_year.SelectedItem.Text;
       string month = drop_month.SelectedItem.Text;
       string list = "select year,month,day,productname,brand,sbrand,price,quantity,totalprice from SalesReport where year='" + year + "' and month='" + month + "' and userid=" + uid + "";
       ds = new DataSet();
       ds = DataLogic.ExeAdapter(list);
       GridView1.DataSource = ds.Tables["temp"];
       GridView1.DataBind();
       decimal total = ds.Tables["temp"].AsEnumerable().Sum(row => row.Field<decimal>("totalprice"));
       lbl_grand.Text = total.ToString();
   }
   protected void drop_day_SelectedIndexChanged(object sender, EventArgs e)
   {
       int uid = Convert.ToInt32(Session["id"].ToString());
       string year = drop_year.SelectedItem.Text;
       string month = drop_month.SelectedItem.Text;
       string day = drop_day.SelectedItem.Text;
       string list = "select year,month,day,productname,brand,sbrand,price,quantity,totalprice from SalesReport where year='" + year + "' and month='" + month + "' and day='" + day + "' and userid=" + uid + "";
       ds = new DataSet();
       ds = DataLogic.ExeAdapter(list);
       GridView1.DataSource = ds.Tables["temp"];
       GridView1.DataBind();
       decimal total = ds.Tables["temp"].AsEnumerable().Sum(row => row.Field<decimal>("totalprice"));
       lbl_grand.Text = total.ToString();
   }
}