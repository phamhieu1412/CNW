using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebPizza.Models.Entity;
using WebPizza.Models.Function;

namespace WebPizza.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index(long? id)
        {
            FastFood fastfood = new FastFood();

            List<Mon> mons = new List<Mon>();
            if (!id.HasValue)
                mons = fastfood.Mons.Where(mon => mon.MaLM == fastfood.LoaiMons.FirstOrDefault().MaLM).ToList();
            else mons = fastfood.Mons.Where(mon => mon.MaLM == id).ToList();

            LoaiMonFunc loaimons = new LoaiMonFunc();
            List<LoaiMon> loaimon = loaimons.loaimons();
            ViewBag.LoaiMon = loaimon;

            ViewBag.Mon = mons;

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Menu()
        {
            

            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }

        public ActionResult Blog()
        {
            return View();
        }
    }
}