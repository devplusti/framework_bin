using FrameworkModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI
{
    public partial class WebFormBase : System.Web.UI.Page
    {
        public string Name { get; set; }
        public UsuariosModel Usuario { get; set; }
        public DateTime Data { get; set; }
        public string ObjID { get; set; }
        public DateTime Inicial { get; set; }
        public DateTime Final { get; set; }
        //public frmLockUp.TLookUp TipoLockup { get; set; }
        public string Param { get; set; }
        public bool NeedDate { get; set; }
        public FormularioModel form { get; set; }
        public int CodForm { get; set; }
        public SessionModel Sessao { get; set; }
        public bool ProgressBar { get; set; }
        public string ProgressText { get; set; }
        //public frmBase BtiControl { get; set; }
        public bool FixedParam { get; set; }
        /// <summary>
        /// Modelo ultilizado, usando Form Built-in
        /// </summary>
        public FrameworkModel.Framework.Model Modelo { get; set; }
        /// <summary>
        /// Indica se é uma edição de modelos do Framework
        /// </summary>
        public bool EditModel { get; set; }

        //frmProgressBar Progresso { get; set; }

        /// <summary>
        /// Indica qual menu será chamado quando o formulário for fechado
        /// </summary>
        //public ToolStripDropDownItem LastChoice { get; set; }

        /// <summary>
        /// Propriedade é preenchida quando o campo 'need_peca' do formulário é true
        /// </summary>
        public PecasModel Peca { get; set; }

        /// <summary>
        /// Indica se o formulario é uma tela de paramentros,
        /// Caso sim, não é verificado pela rotina CheckSysPermission().
        /// </summary>
        public bool ParamForm { get; set; }
        public bool NoPermission { get; set; }
        public string ValueLockup { get; set; }
        public string DescLockup { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}