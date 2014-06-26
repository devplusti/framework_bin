using FrameworkBLL;
using FrameworkModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI
{
	public partial class login : System.Web.UI.Page
	{
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UsuariosModel usu = new UsuariosModel();
            try
            {
                //Configurando a conexão


                SessionModel sessao = new SessionModel()
                {
                    Database = "semetra", //"nova",
                    Server = "srvhomolog.cipec.net", //"10.0.0.199",
                    Password = "beleza",
                    User = "root"
                };

                new SessionBLL().Connect(sessao);

                UsuarioBLL uBll = new UsuarioBLL();
                usu = uBll.GetUser(loginTextBox.Text, senhaTextBox.Text);
                Session["logado"] = true;
                usu.data_base = DateTime.Now;
                Session["usuario"] = usu;
                Session["usuarioNome"] = usu.nome;
                Session["Site"] = "http://www.semetranet.com.br";

                if (usu.troca_senha < DateTime.Now)
                {
                    //frmTrocaSenha fTroca = new frmTrocaSenha();
                    //fTroca.Usuario = usu;
                    //fTroca.ShowDialog();

                }

                //Criando a sessão do Usuário
                sessao.usuario = Convert.ToInt32(usu.codigo);
                sessao.hash = Utils.GetMD5Hash(usu.codigo.ToString() + usu.login + new Random().Next().ToString());
                sessao.origem = "sdasdas";//Utils.GetIPOrigem();
                sessao.login_inicio = DateTime.Now;

                SessionBLL sBll = new SessionBLL();
                if (sBll.CheckUserSession(Convert.ToInt32(usu.codigo)))
                {
                    SessionModel s = (sBll.FrameworkGetCustom(new SessionModel(), string.Format("usuario ={0}", usu.codigo)) as List<SessionModel>).First();
                    if (!sBll.CheckSessionDown(s.hash) && sessao.origem != s.origem)
                    {
                        errorLabel.Text = "Usuário já conectado em um computador diferente.";
                        Session["logado"] = false;
                        return;
                    }
                    else
                    {
                        sBll.FrameworkDelete(s);
                    }
                }

                Session["sessao"] = sessao;
                sBll.RegisterSession(sessao);

                FormsAuthentication.RedirectFromLoginPage(loginTextBox.Text, false);

                Response.Redirect("Home.aspx");

            }
            catch (Exception ex)
            {
                errorLabel.Text = "Usuário e/ou senha inválidos!!!!!! .";
                errorLabel.Visible = true;
                Session["logado"] = false;
                return;
            }
        }
    }
}