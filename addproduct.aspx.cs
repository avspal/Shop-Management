using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            string select = "select Max(productid) from addproduct";
            int id = DataLogic.AutoProductId(select);
            lbl_productid.Text = id.ToString();
           lbl_userid.Text = Session["id"].ToString();
        
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        string uid = lbl_userid.Text;
        int pid = Convert.ToInt32(lbl_productid.Text);
        string pname = txt_productname.Text;
        decimal pprice =Convert.ToDecimal(txt_price.Text);
        int pquantity =Convert.ToInt32(txt_quantity.Text);
        string pbrand = txt_brand.Text;
        string sbrand = txt_subbrand.Text;
        string insert = "insert into addproduct values (" + pid + ",'" + pname + "'," + pprice + ",'" + pbrand + "','" + sbrand + "',"+pquantity+","+uid+")";
        int x = DataLogic.ExeCommand(insert);
        if (x > 0)
            lbl_message.Text = "<font color=green>Details submitted successfully</font>";
        else
            lbl_message.Text = "<font color=red>Details not submitted.</font>";
            
    }
}