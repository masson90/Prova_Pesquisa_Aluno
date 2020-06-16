using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova_Pesquisa_Aluno
{
    public partial class Pesquisar : System.Web.UI.Page
    {
        //private object render;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                lblResultado.Text = " ";

                cmd.Connection = Conexao.Connection;                

                cmd.CommandText = @"select * from aluno
                                    where ra = ?";
                cmd.Parameters.Clear();
                cmd.Parameters.Add(@"ra", MySqlDbType.String).Value = txtRA.Text;

                cmd.CommandType = CommandType.Text;

                Conexao.Conectar();
                cmd.ExecuteNonQuery();

                MySqlDataReader dr;

                dr = cmd.ExecuteReader();
                dr.Read();

                txtNome.Text = dr.GetString(1);
                txtSexo.Text = dr.GetString(2);
                txtNasc.Text = dr.GetString(3);
                txtEmail.Text = dr.GetString(4);
                txtEndereco.Text = dr.GetString(5);
                txtCurso.Text = dr.GetString(6);
                txtIngresso.Text = dr.GetString(7);                          


            }
            catch (Exception ex)
            {
                lblResultado.Text = "RA não encontrado";

                txtNome.Text = " ";
                txtSexo.Text = " ";
                txtNasc.Text = " ";
                txtEmail.Text = " ";
                txtEndereco.Text = " ";
                txtCurso.Text = " ";
                txtIngresso.Text = " ";
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}