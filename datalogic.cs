using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
/// <summary>
/// Summary description for DataLogic
/// </summary>
public static class DataLogic
{
    static SqlConnection cn;
    static SqlCommand cmd;
    static DataSet ds;
    static SqlDataAdapter da;
    static SqlDataReader dr;
    static DataLogic()
    {
        //
        // TODO: Add constructor logic here
        //
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["connstr"].ToString();
        cn = new SqlConnection(connstr);
    }
    public static void OpenCloseConnection()
    {
        if (cn.State == ConnectionState.Closed)
            cn.Open();
        else if (cn.State == ConnectionState.Open)
            cn.Close();
    }
    public static DataSet ExeAdapter(string query)//select
    {
        da = new SqlDataAdapter(query, cn);
        ds = new DataSet();
        da.Fill(ds, "temp");
        return ds;
    }
    public static int ExeCommand(string query)//insert,update and delete
    {
        OpenCloseConnection();
        cmd = new SqlCommand(query, cn);
        int x = cmd.ExecuteNonQuery();
        OpenCloseConnection();
        return x;
    }
    public static void FillDropDown(DropDownList drop, string query, string text, string value, string header)
    {
        OpenCloseConnection();
        cmd = new SqlCommand(query, cn);
        dr = cmd.ExecuteReader();
        drop.DataSource = dr;
        drop.DataTextField = text;
        drop.DataValueField = value;
        drop.DataBind();
        dr.Close();
        OpenCloseConnection();
        drop.Items.Insert(0, header);
    }
    public static int AutoGenID(string query)
    {
        OpenCloseConnection();
        cmd = new SqlCommand(query, cn);
        object ob = cmd.ExecuteScalar();
        int id = -1;
        if (ob.ToString() == "")
            id = 1000;
        else
            id = Convert.ToInt32(ob) + 1;
        OpenCloseConnection();
        return id;
    }
    public static int AutoProductId(string query)
    {
        OpenCloseConnection();
        cmd = new SqlCommand(query, cn);
        object ob = cmd.ExecuteScalar();
        int id = -1;
        if (ob.ToString() == "")
            id = 11111;
        else
            id = Convert.ToInt32(ob) + 2;
        OpenCloseConnection();
        return id;
    }
}