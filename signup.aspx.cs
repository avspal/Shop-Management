using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string select = "select Max(userid) from register";
            int id = DataLogic.AutoGenID(select);
            lbl_userid.Text = id.ToString();
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(lbl_userid.Text);
        string uname = txt_name.Text;
        string email = txt_email.Text;
        string mobile = txt_mobile.Text;
        string pass = txt_password.Text;
        string add = txt_address.Text;
       string photopath = null;
       if (file_photo.HasFile)
       {
           string filename = file_photo.FileName;
           string path = Server.MapPath("uploads");
           path = path + "\\" + filename;
           int size = file_photo.PostedFile.ContentLength;
           int mb = size / (1024 * 1024);
           string[] file = filename.Split('.');
           if (file[1] == "jpg" || file[1] == "jpeg" || file[1] == "png")
           {
               if (mb <= 1)
               {
                   file_photo.PostedFile.SaveAs(path);
               }
               else
                   lbl_message.Text = "image size must be less than 1 MB.";
           }
           else
               lbl_message.Text = "File extension must be of (jpg,png,jpeg) type.";
           photopath = "~\\uploads\\" + filename;
       }
       string insert = "insert into register values (" + id + ",'" + uname + "','" + email + "','" + pass + "','" + add + "','" + photopath + "','" + mobile + "')";
       int x = DataLogic.ExeCommand(insert);
       if (x > 0)
           lbl_message.Text = "<font color=green>Details submitted successfully</font>";
       else
           lbl_message.Text = "<font color=red>Details not submitted.</font>";
    }
}