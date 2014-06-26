using FrameworkModel.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class CotapforneModel : FrameworkModel.Framework.Model
    {
        public CotapforneModel()
        {
            //Nome da Tabela
            Entity = "cotapforne";
            //Indica se a tabela tem outro indice de controle
            Primitive = true;
            //ChangePrimitiveController - Troca a coluna de controle
            //NamePrimitiveController - Nome da coluna do indice de controle
        }
        public string codigo { get; set; }
        public string cotap_bak { get; set; }
        public string cotap { get; set; }
        public string cota { get; set; }
        public string cliente { get; set; }
        public string peca { get; set; }
        public string forne { get; set; }
        public string forneimp { get; set; }
        public double custo { get; set; }
        public double venda { get; set; }
        public double qtd { get; set; }
        public double venda_total { get; set; }
        public DateTime dt_venda { get; set; }
        public string tpeca { get; set; }
        public string mar { get; set; }
        public double per { get; set; }
        public double val_unit_nota { get; set; }
        public double val_unit_neto { get; set; }
        [PrimaryKey(isKey = true)]
        public Int64 sr_recno { get; set; }
        public string sr_deleted { get; set; }
    }
}