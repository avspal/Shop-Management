using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class change : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_done_Click(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(txt_userid.Text);
        //string old = txt_old.Text;
        string newpass = txt_new.Text;
        string update = "update register set password='"+newpass+"' where userid="+uid+"";
        int x = DataLogic.ExeCommand(update);
        if (x > 0)
        {
            lbl_message.Text = "<font color=green>Password changed successfully.</font>";
            Response.Redirect("Signin.aspx");
        }
        else
            lbl_message.Text = "<font color=red>userid or old password is incorrect.</font>";
    }
}