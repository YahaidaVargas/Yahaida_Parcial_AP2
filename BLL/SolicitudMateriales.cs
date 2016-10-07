using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
  public  class SolicitudMateriales : ClaseMaestra
    {
        public int IdMateriales{ get; set; }
        public string  Materiales { get; set; }
        public string Razon { get; set; }

       public SolicitudMateriales()
        {

            this.IdMateriales = 0;
            this.Materiales = "";
            this.Razon = "";
        }

        public override bool Buscar(int IdBuscado)
        {
           
        throw new NotImplementedException();
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();

            string consulta = string.Format("insert into SolicitudMateriales (Materiales,Razon) values('{0}','{1}') SELECT @@IDENTITY", Materiales, Razon); 

           IdMateriales= Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdMateriales > 0;

        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }
    }
}
