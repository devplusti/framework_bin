using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebUI
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session.Add("Form", null);
            Session.Add("CustomOrder", "");
            Session.Add("CustomParam", "");
            Session.Add("CustomOrder", "");
            Session.Add("CustomOrder", "");

            Session.Add("logado", false);
            Session.Add("usuario", null);
            Session.Add("usuarioNome", "");
            Session.Add("data_base", DateTime.Now);
            Session.Add("lTipoConsultaPeca", false);
            Session.Add("cPeca", "");
            Session.Add("Site", "");
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}