using CapaDatos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaPresentacion
{
    public partial class FrmCuentas: Form
    {
        public FrmCuentas()
        {
            InitializeComponent();
        }
        public void MtdMostrarCuentas()
        {
            CD_Cuentas cd_cuentas = new CD_Cuentas();
            DataTable dtMostrarCuentas = cd_cuentas.MtMostrarCuentas();
            dgvClientes.DataSource = dtMostrarCuentas;
        }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void gboxClientes_Enter(object sender, EventArgs e)
        {

        }

        private void FrmCuentas_Load(object sender, EventArgs e)
        {
            MtdMostrarCuentas();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            CD_Cuentas cD_Cuentas = new CD_Cuentas();
            try
            {
                cD_Cuentas.MtdAgregarCuentas(txtCodigoCuentas.Text, txtCodigoClientes.Text, txtNumCuentas.Text, txtSaldo.Text, txtFechaApertura.Text, cboxTipoCuenta.Text, cboxEstado.Text);
                MessageBox.Show("El Cliente se agrego con Exito", "Correcto", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace, "Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            MtdMostrarCuentas();

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {

        }
    }
}
