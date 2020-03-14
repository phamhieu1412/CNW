using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebPizza.Models.Entity;//add fastfood tu models

namespace WebPizza.Models.Function
{
    public class MonFunc
    {
        FastFood fastfood = new FastFood();

        public List<Mon> mons(long MaLM)
        {
           

            return fastfood.Mons.Where( mon => mon.MaLM == MaLM).ToList();
        }


        // Trả về danh muc
        public IQueryable<Mon> Mons
        {
            get { return fastfood.Mons; }
        }

        // Trả về một đối tượng danh mục, khi biết Khóa
        public Mon FindEntity(double id)
        {
            Mon dbEntry = fastfood.Mons.Find(id);
            return dbEntry;
        }

        // Thêm một đối tượng
        public long Insert(Mon model)
        {
            fastfood.Mons.Add(model);
            fastfood.SaveChanges();
            return model.MaMon;
        }

        // Sửa một đối tượng
        public long Update(Mon model)
        {
            Mon dbEntry = fastfood.Mons.Find(model.MaMon);
            if (dbEntry == null)
            {
                return 0;
            }

            fastfood.Entry(dbEntry).CurrentValues.SetValues(model);
            fastfood.SaveChanges();

            return model.MaMon;
        }

        // Xóa một đối tượng
        public long Delete(long MaMon)
        {
            Mon dbEntry = fastfood.Mons.Find(MaMon);
            if (dbEntry == null)
            {
                return 0;
            }
            fastfood.Mons.Remove(dbEntry);

            fastfood.SaveChanges();
            return MaMon;
        }
    }
}