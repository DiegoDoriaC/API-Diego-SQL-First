using API_Diego_SQL_First.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System.Data;
using System.Data.SqlTypes;

namespace API_Diego_SQL_First.DAO
{
    public class DAOUsuario
    {

        string cadena = "server=DESKTOP-3SVGOT8\\SQLEXPRESS;database=APIDiego;Integrated security=true";

        public List<Usuario> listarUsuarios()
        {
            SqlConnection cn = new SqlConnection(cadena);     
            cn.Open();
            List<Usuario> temporal = new List<Usuario>();
            SqlCommand cmd = new SqlCommand("select * form Usuarios", cn);
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Usuario u = new Usuario();
                u.Nombre = dr.GetString(0);
                u.Apellido = dr.GetString(1);
                u.Edad = dr.GetInt32(2);
                temporal.Add(u);
            }
            dr.Close();
            cn.Close();
            return temporal;
        }      

    }
}
