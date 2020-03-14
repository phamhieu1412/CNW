namespace WebPizza.Models.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DiaChi")]
    public partial class DiaChi
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DiaChi()
        {
            HoaDons = new HashSet<HoaDon>();
        }

        [Key]
        public long MaDC { get; set; }

        [Required]
        [StringLength(20)]
        public string DiaChiCuThe { get; set; }

        [Required]
        [StringLength(20)]
        public string Phuong { get; set; }

        [Required]
        [StringLength(20)]
        public string Quan { get; set; }

        [Required]
        [StringLength(20)]
        public string ThanhPho { get; set; }

        public long? MaND { get; set; }

        [StringLength(10)]
        public string SDT { get; set; }

        [StringLength(30)]
        public string HoTen { get; set; }

        public virtual NguoiDung NguoiDung { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoaDon> HoaDons { get; set; }
    }
}
