using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebPizza.Models.Entity;

namespace WebPizza.Models.Function
{
    public class LoaiMonFunc
    {
        FastFood fastfood = new FastFood();

        public List<LoaiMon> loaimons()
        {

            return fastfood.LoaiMons.ToList();
        }
      

        // Trả về danh muc
        public IQueryable<LoaiMon> LoaiMons
        {
            get { return fastfood.LoaiMons; }
        }

        // Trả về một đối tượng danh mục, khi biết Khóa
        public LoaiMon FindEntity(long id)
        {
            LoaiMon dbEntry = fastfood.LoaiMons.Find(id);
            return dbEntry;
        }

        // Thêm một đối tượng
        public long Insert(LoaiMon model)
        {
            fastfood.LoaiMons.Add(model);

            fastfood.SaveChanges();

            return model.MaLM;
        }

        // Sửa một đối tượng
        public long Update(LoaiMon model)
        {
            LoaiMon dbEntry = fastfood.LoaiMons.Find(model.MaLM);
            if (dbEntry == null)
            {
                return 0;
            }
            dbEntry.TenLM = model.TenLM;
            dbEntry.urlIcon = model.urlIcon;
            // Sửa các trường khác cũng như vậy
            fastfood.SaveChanges();

            return model.MaLM;
        }

        // Xóa một đối tượng
        public long Delete(long MaLoaiMon)
        {
            LoaiMon dbEntry = fastfood.LoaiMons.Find(MaLoaiMon);
            if (dbEntry == null)
            {
                return 0;
            }
            fastfood.LoaiMons.Remove(dbEntry);

            fastfood.SaveChanges();
            return MaLoaiMon;
        }
    }
}