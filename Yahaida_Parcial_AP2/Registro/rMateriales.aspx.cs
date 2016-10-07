using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Yahaida_Parcial_AP2.Registro
{
    public partial class rMateriales : System.Web.UI.Page
    {

        SolicitudMateriales mater = new SolicitudMateriales();
        MaterialesDetalle Mdetalle = new MaterialesDetalle();

        
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            int materId;
            mater.Razon = TxtID.Text;
            mater.Materiales=TxtMaterial.Text;
            mater.Insertar();
            materId = mater.IdMateriales;

            Mdetalle.IdMateriales = materId;
            Mdetalle.Cantidad =TxtCantidad.Text;
            Mdetalle.Insertar();
            
        }

        protected void TxtID_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}

