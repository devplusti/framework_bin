using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI
{
    public partial class WebUI : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           userLabel.Text = Session["usuarioNome"].ToString();

            HttpRequest currentRequest = HttpContext.Current.Request;
            string ipAddress = currentRequest.ServerVariables["HTTP_X_FORWARDED_FOR"];

            ipLabel.Text = currentRequest.ServerVariables["REMOTE_ADDR"];
        }

    }
}