//------------------------------------------------------------------------------
// <auto-generated>
//    Bu kod bir şablondan oluşturuldu.
//
//    Bu dosyada el ile yapılan değişiklikler uygulamanızda beklenmedik davranışa neden olabilir.
//    Kod yeniden oluşturulursa, bu dosyada el ile yapılan değişikliklerin üzerine yazılacak.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BLL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Kullanicilar
    {
        public Kullanicilar()
        {
            this.Enerji_Takip = new HashSet<Enerji_Takip>();
        }
    
        public int id { get; set; }
        public string Kullanici_id { get; set; }
        public string Kullanici_Adi { get; set; }
        public string Kullanici_Soyadi { get; set; }
        public int Aktif { get; set; }
        public Nullable<int> Admin { get; set; }
    
        public virtual ICollection<Enerji_Takip> Enerji_Takip { get; set; }
    }
}
