using FrameworkModel.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class ClienteModel : FrameworkModel.Framework.Model
    {
        public ClienteModel()
        {
            //Nome da Tabela
            Entity = "cliente";
            //Indica se a tabela tem outro indice de controle
            Primitive = true;
            //ChangePrimitiveController - Troca a coluna de controle
            //NamePrimitiveController - Nome da coluna do indice de controle
        }
        public string codigo { get; set; }
        public string nome_razao { get; set; }
        public string fantasia { get; set; }
        public string codc { get; set; }
        public string insc_esta { get; set; }
        public string cgc { get; set; }
        public string cpf { get; set; }
        public DateTime venc { get; set; }
        public DateTime pcmso { get; set; }
        public DateTime enge { get; set; }
        public DateTime cipa { get; set; }
        public string cddd { get; set; }
        public string carg { get; set; }
        public string tel { get; set; }
        public string fax { get; set; }
        public string endereco { get; set; }
        public string bairro { get; set; }
        public string cidade { get; set; }
        public string estado { get; set; }
        public string cep { get; set; }
        public string contato { get; set; }
        public string endcor { get; set; }
        public string baicor { get; set; }
        public string cidcor { get; set; }
        public string estcor { get; set; }
        public string cepcor { get; set; }
        public double quant { get; set; }
        public double inicial { get; set; }
        public double final { get; set; }
        public string obsina { get; set; }
        public DateTime datal { get; set; }
        public DateTime ppra { get; set; }
        public DateTime ltcat { get; set; }
        public string bloq { get; set; }
        public string obsate1 { get; set; }
        public string obsate2 { get; set; }
        public string email { get; set; }
        public string inativo { get; set; }
        public string obsadm1 { get; set; }
        public string obsadm2 { get; set; }
        public DateTime vencomp { get; set; }
        public string obscomp { get; set; }
        public string amarelo { get; set; }
        public string faturar { get; set; }
        [PrimaryKey(isKey = true)]
        public Int64 sr_recno { get; set; }
        public string sr_deleted { get; set; }
        public string email_cob { get; set; }
        public string acesso_externo { get; set; }
        public string indkey_001 { get; set; }
        public string numero { get; set; }
        public string comp { get; set; }
        public string numcor { get; set; }
        public string compcor { get; set; }
        public string end_old { get; set; }
        public string end_cor_old { get; set; }
        public string end_ok { get; set; }
        public string end_cor_ok { get; set; }
        public string cod_muni { get; set; }
        public string cod_muni_cor { get; set; }
    }
}
