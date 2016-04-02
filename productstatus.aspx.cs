using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class productstatus : System.Web.UI.Page
{
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            ShowData();
    }
    public void ShowData()
    {
        int uid = Convert.ToInt32(Session["id"].ToString());
        string select = "select productid,productname,price,brand,subbrand,quantity from addproduct where userno=" + uid+" order by productname";
        ds = new DataSet();
        ds = DataLogic.ExeAdapter(select);
        GridView1.DataSource = ds.Tables["temp"];
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        ShowData();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowData();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = e.RowIndex;
        string id = ((Label)GridView1.Rows[index].FindControl("Label6")).Text;
        string name = ((TextBox)GridView1.Rows[index].FindControl("TextBox1")).Text;
        decimal price =Convert.ToDecimal(((TextBox)GridView1.Rows[index].FindControl("TextBox2")).Text);
        string brand = ((TextBox)GridView1.Rows[index].FindControl("TextBox3")).Text;
        int quantity = Convert.ToInt32(((TextBox)GridView1.Rows[index].FindControl("TextBox4")).Text);
        string sbrand = ((TextBox)GridView1.Rows[index].FindControl("TextBox5")).Text;
        string update = "update addproduct set productname='" + name + "',price=" + price + ",brand='" + brand + "',subbrand='" + sbrand + "',quantity=" + quantity + " where productid=" + id;
        DataLogic.ExeCommand(update);
        GridView1.EditIndex = -1;
        ShowData();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        string pid = ((Label)GridView1.Rows[index].FindControl("Label1")).Text;
        string delete = "delete from addproduct where productid="+pid;
        DataLogic.ExeCommand(delete);
        ShowData();
    }
    
}