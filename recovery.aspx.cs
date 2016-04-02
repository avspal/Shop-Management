using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class recovery : System.Web.UI.Page
{
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_go_Click(object sender, EventArgs e)
    {
        int uid =Convert.ToInt32(txt_userid.Text);
        string ques = drop_security.SelectedItem.Text;
        string ans = txt_answer.Text;
        string select = "select userid,question,answer from register where userid="+uid+" and question='"+ques+"' and answer='"+ans+"'";
        ds = new DataSet();
        ds=DataLogic.ExeAdapter(select);
        if (ds.Tables["temp"].Rows.Count == 1)
        {
            Response.Redirect("change.aspx");
        }
        else
            lbl_message.Text = "Your userid or answer is wrong.";
    }
}