using Microsoft.AspNetCore.Mvc;

// Gabriel Chaves - Caroline Ribeiro

namespace TP02.Controllers
{
    public class CreditosController : Controller
    {
        // GET: CreditosC
        public async Task<IActionResult> Index()
        {
            return View();
        }
    }
}
