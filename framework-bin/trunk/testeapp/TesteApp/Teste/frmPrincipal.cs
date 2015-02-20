using FrameworkUI;
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
    public partial class frmPrincipal : frmBase
    {
        public frmPrincipal()
        {
            InitializeComponent();
        }

        private void frmPrincipal_Load(object sender, EventArgs e)
        {
            frmLogin login = new frmLogin();
            login.ShowDialog();
            this.Usuario = login.Usuario;
        }

        private void testeToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Form1 form1 = new Form1();
            form1.Usuario = this.Usuario;
            form1.Sessao = this.Sessao;
            form1.ShowDialog();
           
        }

        private void parserToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LoadWindowsForm(260, sender);
        }

        private void cotapForneToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LoadWindowsForm(269, sender);
        }

        private void frmPrincipal_Shown(object sender, EventArgs e)
        {
            
        }

        private void funcionáriosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LoadWindowsForm(278, sender);
        }

        private void consultaDadosCadastraisToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //rConsultaCadastro form = new rConsultaCadastro();
            //form.ShowDialog();
        }
    }
}
