using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
   public class MaterialesDetalle : ClaseMaestra
    {


        public int IdMatDetalle { get; set; }
        public int IdMateriales { get; set; }
        public string Cantidad { get; set; }

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
            string consulta = string.Format("insert into MaterialesDetalle(IdMateriales,Cantidad) values({0},'{1}')", IdMateriales, Cantidad);
            return (conexion.EjecutarDB(consulta));
        }

             public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "desc")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select" + Campos + "from MaterialesDetalle where " + Condicion + " order by IdPersonTel " + Orden);
        }
    }
    }

