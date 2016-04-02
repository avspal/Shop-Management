using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class mainpsge : System.Web.UI.Page
{
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            int uid =Convert.ToInt32(Session["id"].ToString());
            string pname = "select distinct(productname),productid from addproduct where userno=" + uid+" order by productname" ;
            string x = "productname";
            string y = "productid";
            string header = "--Select Product--";
            DataLogic.FillDropDown(drop_pname, pname, x, y, header);
            drop_brand.Items.Insert(0,"--Select Brand--");
            drop_price.Items.Insert(0, "--Select Price--");
            drop_sbrand.Items.Insert(0, "--Select Sub-Brand--");
            ShowData();
        }
    }

    protected void drop_pname_SelectedIndexChanged(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(Session["id"].ToString());
        string pbrand = "select distinct(brand),productid from addproduct where userno=" + uid+" and productname='"+drop_pname.SelectedItem.Text+"' order by brand";
        string x = "brand";
        string y = "productid";
        string header = "--Select Brand--";
        DataLogic.FillDropDown(drop_brand, pbrand, x, y, header);
        drop_price.Items.Insert(0, "--Select Price--");
        drop_sbrand.Items.Insert(0, "--Select Sub-Brand--");
    }

    protected void drop_brand_SelectedIndexChanged(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(Session["id"].ToString());
        string psbrand = "select distinct(subbrand),productid from addproduct where userno=" + uid + " and productname='" + drop_pname.SelectedItem.Text + "' and brand='"+drop_brand.SelectedItem.Text+"' order by subbrand";
        string x = "subbrand";
        string y = "productid";
        string header = "--Select Sub-Brand--";
        DataLogic.FillDropDown(drop_sbrand, psbrand, x, y, header);
        drop_price.Items.Insert(0, "--Select Price--");
    }

    protected void drop_sbrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(Session["id"].ToString());
        string pprice = "select price,productid from addproduct where userno=" + uid + " and productname='" + drop_pname.SelectedItem.Text + "' and brand='" + drop_brand.SelectedItem.Text + "' and subbrand='"+drop_sbrand.SelectedItem.Text+"' order by price";
        string x = "price";
        string y = "productid";
        string header = "--Select Price--";
        DataLogic.FillDropDown(drop_price, pprice, x, y, header);
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(Session["id"].ToString());
        string pname = drop_pname.SelectedItem.Text;
        string pbrand = drop_brand.SelectedItem.Text;
        string psbrand = drop_sbrand.SelectedItem.Text;
        decimal price = Convert.ToDecimal(drop_price.SelectedItem.Text);
        int pquantity = Convert.ToInt32(txt_quantity.Text);
        decimal tp = price * pquantity;
        string add = "insert into parcha values("+uid+",'"+pname+"','"+pbrand+"','"+psbrand+"',"+price+","+pquantity+","+tp+")";
        DataLogic.ExeCommand(add);
        string decrease = "update addproduct set quantity=quantity-"+pquantity+" where userno="+uid+" and productname='"+pname+"' and brand='"+pbrand+"' and subbrand='"+psbrand+"'";
        DataLogic.ExeCommand(decrease);
        ShowData();
    }
    public void ShowData()
    {
        string list = "select productname,brand,sbrand,price,quantity,totalprice from parcha";
        ds = new DataSet();
        ds = DataLogic.ExeAdapter(list);
        GridView1.DataSource = ds.Tables["temp"];
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        string pname = ((Label)GridView1.Rows[index].FindControl("Label1")).Text;
        string delete = "delete from parcha where productname='"+pname+"'";
        DataLogic.ExeCommand(delete);
        ShowData();
    }
    protected void btn_invoice_Click(object sender, EventArgs e)
    {
        string year = DateTime.Now.ToString("yyyy");
        string month = DateTime.Now.ToString("MMMM");
        string day = DateTime.Now.ToString("dd");
        int uid = Convert.ToInt32(Session["id"].ToString());
        string pname = drop_pname.SelectedItem.Text;
        string pbrand = drop_brand.SelectedItem.Text;
        string psbrand = drop_sbrand.SelectedItem.Text;
        decimal price = Convert.ToDecimal(drop_price.SelectedItem.Text);
        int pquantity = Convert.ToInt32(txt_quantity.Text);
        decimal tp = price * pquantity;
        string add = "insert into SalesReport values(" + uid + ",'" + year + "','" + month + "','" + day + "','" + pname + "','" + pbrand + "','" + psbrand + "'," + price + "," + pquantity + "," + tp + ")";
        DataLogic.ExeCommand(add);
        Response.Redirect("invoice.aspx");
    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        string empty = "truncate table parcha";
        DataLogic.ExeCommand(empty);
        ShowData();
    }
}