using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoreFramework.Data;
using Omnificence.Users;

public partial class _Default : System.Web.UI.Page
{
    DataManager _dataMgr = new DataManager();
    protected static UserType defined = UserType.User;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Redirect("default.html");
        //Response.End();
        Int32 user = Convert.ToInt32(Request.QueryString["type"]);

        if (user == 2)
        {
            //ActivateBtnMod.Visible = true;
            //ClientScript.RegisterStartupScript(GetType(), "hwa", "CreateLocalSession();", true);
        }
           
    }
}