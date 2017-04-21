using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoreFramework.Data;
using Omnificence.Users;
using System.Data;

public partial class login : System.Web.UI.Page
{
    DataManager _dataMgr = new DataManager();
    UserSession us = new UserSession();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["type"] == "logout")
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
    protected void Login_Click(object sender, EventArgs e)
    {
        DataSet ds = _dataMgr.AuthenticateUser(email.Text.ToString(), password.Text.ToString());
        DataTable dt = ds.Tables[0];
        if (dt.Rows.Count > 0)
        {
            UInt64 UserID = Convert.ToUInt64(dt.Rows[0]["UserID"].ToString());
            UInt64 UserType = Convert.ToUInt64(dt.Rows[0]["UserType"].ToString());
            us.UserID = UserID;
            us.UserType = (UserType)UserType; 
            Session["User"] = us;
            Response.Redirect("default.aspx");
        }
        else
        {
            lblMesage.Visible = true;
        }
    }
}