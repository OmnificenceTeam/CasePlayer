using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoreFramework;

public partial class CoreAppService : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String reqPacket = System.Text.Encoding.UTF8.GetString(Request.BinaryRead(Request.ContentLength));
        String resPacket = CoreFramework.Services.ServiceFactory.GetService(CoreFramework.Services.ServiceType.UserService).DoService(reqPacket, this);
        Response.Write(HttpUtility.HtmlDecode(resPacket));
    }
}