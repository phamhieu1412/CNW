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

        FastFood fastfood = new FastFood();

        public ActionResult Index(long? id)
        {
            //FastFood fastfood = new FastFood();

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
            List<Mon> monsMenu = new List<Mon>();
            monsMenu = fastfood.Mons.Where(mon => mon.MaLM == 1).ToList();
            

            LoaiMonFunc loaimonsMenu = new LoaiMonFunc();
            List<LoaiMon> loaimonMenu = loaimonsMenu.loaimons();
            ViewBag.LoaiMon = loaimonMenu;

            ViewBag.MonMenu = monsMenu;

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