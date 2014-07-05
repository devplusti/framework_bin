using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;

namespace BLL
{
    public class ClienteBLL : FrameworkBLL.Framework.BLL<ClienteModel>, FrameworkBLL.Framework.IBLL
    {
        public bool Login(string usuario, string cnpj)
        {
            return new ClienteDAL().Login(usuario, cnpj);
        }
        public DataTable GetDadosEmpresa(string codigo)
        {
            return new ClienteDAL().GetDadosEmpresa(codigo);
        }
    }
}
