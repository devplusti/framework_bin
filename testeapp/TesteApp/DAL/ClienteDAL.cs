using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace DAL
{
    public class ClienteDAL : FrameworkDAL.Framework.DAL<ClienteModel>
    {
        public DataTable GetDadosEmpresa(string codigo)
        {
            string sql = string.Format("Select cliente.codigo, " +
                                        "cliente.nome_razao, " +
                                        "cliente.endereco, " +
                                        "cliente.cidade, " +
                                        "cliente.estado, " +
                                        "cliente.cep, " +
                                        "cliente.email, " +
                                        "cliente.venc, " +
                                        "cliente.pcmso, " +
                                        "cliente.enge, " +
                                        "cliente.cipa, " +
                                        "cliente.ppra, " +
                                        "cliente.ltcat " +
                                        "from cliente " +
                                        "where cliente.codigo='{0}'", codigo);

            return FrameworkDAL.MySql.ConnectionManager.consultaDt(sql);
        }

        public bool Login(string usuario, string cnpj)
        {
            string sql = string.Format("select clienteusu.senha " +
                                "from clienteusu, cliente " +
                                "where clienteusu.usuario = '{0}' " +
                                "and cliente.cgc = '{1}' " +
                                "and (cliente.codigo = clienteusu.cliente or cliente.matriz = clienteusu.cliente) " +
                                "and clienteusu.dt_validad >= DATE_FORMAt(now(),'%Y-%m-%d') " +
                                "and clienteusu.ativo = 'S'", usuario, cnpj);

            return true;
        }
    }
}
