using FrameworkBLL;
using FrameworkModel;
using FrameworkUI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI
{
    public partial class WebLoadModel : WebFormBase
    {

        //Propriedade Adaptadas
        public FormularioModel form { get; set; }
        public string ColunaRecno { get; set; }
        public string CustomOrder { get; set; }
        public string CustomParam { get; set; }
        public int ColunaSeleciona { get; set; }


        public WebLoadModel()
        {
            this.PreInit += WebLoadModel_PreInit;
        }

        void WebLoadModel_PreInit(object sender, EventArgs e)
        {



        }
        protected void Page_Load(object sender, EventArgs e)
        {

            //Recuperando valores das Sessões

            FormularioModel fm = new FormularioBLL().GetForm(Convert.ToInt32(Session["form"]));
            this.form = fm;

            CustomOrder = Session["CustomOrder"].ToString();
            CustomParam = Session["CustomParam"].ToString();
            CustomOrder = Session["CustomOrder"].ToString();

            GridView1.AutoGenerateColumns = false;
            BoundField EntityColumn = new BoundField();
            EntityColumn.DataField = "Entity";
            EntityColumn.HeaderText = "entity";
            //EntityColumn. = "entity";
            //EntityColumn.DefaultCellStyle = new DataGridViewCellStyle();
            EntityColumn.Visible = false;
            GridView1.Columns.Add(EntityColumn);

            #region Colunas do Modelo
            int cont = 50;
            int contColuna = 3;
            foreach (var item in this.form.campos)
            {
                cont++;
                if (item.type == "recno")
                    this.ColunaRecno = item.name;

                if (item.pesquisa)
                {
                    MenuItem tool = new MenuItem();
                    if (!string.IsNullOrEmpty(item.pesquisa_key))
                    {
                        //tool.ShortcutKeys = (Keys)Enum.Parse(typeof(Keys), item.pesquisa_key);
                    }
                    else
                    {
                        //tool.ShortcutKeys = Keys.Control | (Keys)cont;
                    }

                    tool.Text = item.descricao;
                    tool.Value = item.name;

                    //Menu1.Items[1].ChildItems.Add(tool);

                    //filtroToolStripDropDownButton2.DropDownItems.Add(
                    //    item.descricao, null, new EventHandler(pesquisaCampo_Click));

                    //pesquisaComboBox.Items.Add(item.descricao);

                }

                BoundField column = new BoundField();
                column.DataField = item.model_reference;
                column.HeaderText = item.descricao;
                //column.name = item.name;
                //column.sei = DataGridViewAutoSizeColumnMode.NotSet;
                //column.FillWeight = item.size;
                //olumn.DefaultCellStyle = new DataGridViewCellStyle();
                if (!item.browse)
                    column.Visible = false;
                else
                {
                    if (ColunaSeleciona == 0)
                        ColunaSeleciona = contColuna;
                }

                //if (item.type == "currency")
                //    column.DefaultCellStyle = new DataGridViewCellStyle() { Format = "C2", Alignment = DataGridViewContentAlignment.MiddleRight };

                GridView1.Columns.Add(column);
                contColuna++;
            }
            LoadData();
            #endregion


        }

        private void LoadData()
        {
            System.Reflection.Assembly assem = System.Reflection.Assembly.GetAssembly(typeof(FrameworkModel.Framework.Model));
            FrameworkModel.Framework.Model _p = (FrameworkModel.Framework.Model)assem.CreateInstance(this.form.reference_model);

            if (_p == null)
            {
                throw new Exception(string.Format("Não foi possível encontrar o modelo, é bem provável que o Model '{0}' esteja diferente do nome físico"
                    , this.form.reference_model));
            }


            //Orderm Customizada
            if (!string.IsNullOrEmpty(this.CustomOrder))
            {
                _p.CustomOrder = this.CustomOrder;
            }

            //Verifica se foi informado algum parametro customizado
            System.Reflection.Assembly persistAssem;
            FrameworkBLL.Framework.IBLL _pPersist;

            string methodName = "";
            if (!string.IsNullOrEmpty(this.CustomParam)) // Quando existem parametros customizados
            {
                persistAssem = System.Reflection.Assembly.GetAssembly(typeof(FrameworkBLL.Framework.IBLL));
                _pPersist = (FrameworkBLL.Framework.IBLL)persistAssem.CreateInstance(this.form.reference_persist);

                if (_pPersist == null)
                {
                    throw new Exception(string.Format("Não foi possível encontrar o modelo, é bem provável que o BLL de Persistência '{0}'" +
                        " esteja diferente do nome físico."
                        , this.form.reference_persist));
                }


                methodName = "FrameworkGetCustom";
                MethodInfo eventInvoker = ReflectionHelper.GetEventInvoker(_pPersist, methodName);
                object invoked = new object();
                invoked = eventInvoker.Invoke(_pPersist, new object[] { _p, this.CustomParam });
                GridView1.DataSource = invoked;

            }
            else
            {
                persistAssem = System.Reflection.Assembly.GetAssembly(typeof(FrameworkBLL.Framework.IBLL));
                _pPersist = (FrameworkBLL.Framework.IBLL)persistAssem.CreateInstance(this.form.reference_persist);

                if (_pPersist == null)
                {
                    throw new Exception(string.Format("Não foi possível encontrar o modelo, é bem provável que o BLL de Persistência '{0}'" +
                        " esteja diferente do nome físico."
                        , this.form.reference_persist));
                }

                methodName = "FrameworkGet";
                MethodInfo eventInvoker = ReflectionHelper.GetEventInvoker(_pPersist, methodName);
                object invoked = new object();
                invoked = eventInvoker.Invoke(_pPersist, new object[] { _p });
                GridView1.DataSource = invoked;
            }

            GridView1.DataBind();

            //Trocando Valores de Lockup
            //ChangeLockup();

            //Verificando ordem dos registros

            //toolStripStatusLabel1.Text = cotaDataGridView.Rows.Count.ToString() + " Registro(s)";
            //if (string.IsNullOrEmpty(this.CustomParam) && cotaDataGridView.Rows.Count == 200)
            //    toolStripStatusLabel1.Text += " (Limitado por paginação)";

        }
    }
}