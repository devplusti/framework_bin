using BLL;
using FrameworkUI;
using Model;
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
    public partial class Form1 : frmBase
    {
        public Form1()
        {
            InitializeComponent();
        }

        public FormularioBLL form = new FormularioBLL();
        public FieldsBLL fields = new FieldsBLL();

        private void Form1_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = form.FrameworkGet(new FormularioModel());
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //LoadWindowsForm(Convert.ToInt32(textBox1.Text), sender);
        }

        private void dataGridView1_RowLeave(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void dataGridView1_SizeChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {

            try
            {
                dataGridView2.DataSource = fields.FrameworkGetCustom(
                new FieldsModel(), string.Format("formulario = {0}",
                dataGridView1.SelectedRows[0].Cells["codigo"].Value.ToString()));
            }
            catch (Exception)
            {
            }
            
        }

    }
}
