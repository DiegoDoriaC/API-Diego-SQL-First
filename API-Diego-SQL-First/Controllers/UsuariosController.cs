using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using API_Diego_SQL_First.DAO;
using API_Diego_SQL_First.Models;

namespace API_Diego_SQL_First.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class UsuariosController : ControllerBase
    {
        DAOUsuario dao = new DAOUsuario();  

        [HttpGet]
        public ActionResult <List<Usuario>> Get()
        {
            return dao.listarUsuarios();
        }
        

    }



}
