using BLL;
using FrameworkModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Teste
{
    public partial class rConsultaCadastro : Form
    {
        public rConsultaCadastro()
        {
            InitializeComponent();
        }

        public ClienteBLL cliente = new ClienteBLL();
        public ClientesModel dados = new ClientesModel();

        private void rConsultaCadastro_Load(object sender, EventArgs e)
        {

            //COMO EU PESQUISO NO BANCO sem um grid? 

            codigoLabel.Text = dados.codigo;
            razaoLabel.Text = dados.nome;
            endLabel.Text = dados.endereco + " " + dados.numero;
            cidadeLabel.Text = dados.cidade;
            ufLabel.Text = dados.uf;
            cepLabel.Text = dados.cep;
            emailLabel.Text= dados.email_nfe;

            // NAO CONSIGO PEGAR OS DADOS DESTES CAMPOS

            dtExameLabel.Text = dados.venc;
            //dtPcmsoLabel.Text = dados.pcmso;
            //dtPpraLabel.Text = dados.ppra;
            //dtCipaLabel.Text = dados.cipa;
            //dtEngLabel.Text = dados.enge;
            //dtLtcatLabel.Text = dados.ltcat;
        }
    }
}
