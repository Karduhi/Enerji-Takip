USE [ENERJITAKIP]
GO
/****** Object:  Table [dbo].[Binalar]    Script Date: 31.05.2023 14:37:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Binalar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Bina_Adi] [varchar](500) NOT NULL,
	[Aktif] [int] NOT NULL,
	[Kaydeden_Kullanici_Id] [int] NULL,
	[Düzenleyen_Kullanici_Id] [int] NULL,
 CONSTRAINT [PK__Binalar__3213E83F873104D6] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enerji_Takip]    Script Date: 31.05.2023 14:37:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enerji_Takip](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fatura_turu] [int] NOT NULL,
	[fatura_tarihi] [date] NOT NULL,
	[fatura_no] [varchar](50) NOT NULL,
	[fatura_tutari] [float] NOT NULL,
	[aciklama] [varchar](500) NULL,
	[Kaydeden_Kullanici_Id] [int] NOT NULL,
	[kayit_tarihi] [date] NULL,
	[aktif] [int] NOT NULL,
	[abone_no] [varchar](20) NULL,
	[yil] [int] NULL,
	[donem] [int] NULL,
	[butce_turu] [int] NULL,
	[musteri_tarife_grup] [varchar](100) NULL,
	[ihale_durumu] [int] NULL,
	[tek_cok_zamanli] [int] NULL,
	[ilk_okuma_tarihi] [date] NULL,
	[son_okuma_tarihi] [date] NULL,
	[ortalama_kwh] [int] NULL,
	[gun_ilk_endeks] [int] NULL,
	[puantaj_ilk_endeks] [int] NULL,
	[gece_ilk_endeks] [int] NULL,
	[gun_son_endeks] [int] NULL,
	[puantaj_son_endeks] [int] NULL,
	[gece_son_endeks] [int] NULL,
	[gun_fark] [int] NULL,
	[puantaj_fark] [int] NULL,
	[gece_fark] [int] NULL,
	[gun_carpan] [int] NULL,
	[puantaj_carpan] [int] NULL,
	[gece_carpan] [int] NULL,
	[gun_tuketim] [int] NULL,
	[puantaj_tuketim] [int] NULL,
	[gece_tuketim] [int] NULL,
	[toplam_tuketim] [int] NULL,
	[gun_birim_fiyati] [int] NULL,
	[puantaj_birim_fiyati] [int] NULL,
	[gece_birim_fiyati] [int] NULL,
	[gun_toplam] [int] NULL,
	[puantaj_toplam] [int] NULL,
	[gece_toplam] [int] NULL,
	[toplam_tutar] [int] NULL,
	[trafo_kaybi_bedeli] [int] NULL,
	[dagitim_bedeli] [int] NULL,
	[ceza_bedeli] [int] NULL,
	[iletisim_bedeli] [int] NULL,
	[per_ok_bedeli] [int] NULL,
	[per_sat_hiz_bedeli] [int] NULL,
	[kk_bedeli] [int] NULL,
	[toplam] [int] NULL,
	[enerji_fonu] [int] NULL,
	[trt_payi] [int] NULL,
	[tuketim_vergisi] [int] NULL,
	[gecikme_zammi] [int] NULL,
	[kdv_matrahi] [int] NULL,
	[kdv] [int] NULL,
	[fiyat_farki] [int] NULL,
	[yakit_turu] [int] NULL,
	[kati_yakit_turu] [int] NULL,
	[dogal_gaz_durumu] [int] NULL,
	[alim_miktari] [int] NULL,
	[birim_fiyati] [int] NULL,
	[su_turu] [int] NULL,
	[abone_tipi] [varchar](100) NULL,
	[tuketim_kredi] [int] NULL,
	[ctv] [int] NULL,
	[atik_su_bedeli] [int] NULL,
	[atik_su_kdv] [int] NULL,
	[su_bedeli] [int] NULL,
	[bakim_ucreti] [int] NULL,
	[diger_odemeler] [int] NULL,
	[sayac_turu] [int] NULL,
	[turu] [varchar](100) NULL,
	[kullanilan_mb] [int] NULL,
	[atik_miktari] [int] NULL,
	[dekont_no] [varchar](20) NULL,
	[serbest_tuketici] [int] NULL,
	[kompanzasyon] [int] NULL,
	[bina_id] [int] NULL,
	[Düzenleyen_Kullanici_Id] [int] NULL,
 CONSTRAINT [PK__Enerji_T__3213E83F341C371C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 31.05.2023 14:37:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici_id] [varchar](50) NOT NULL,
	[Kullanici_Adi] [varchar](50) NOT NULL,
	[Kullanici_Soyadi] [varchar](50) NOT NULL,
	[Aktif] [int] NOT NULL,
	[Admin] [int] NULL,
	[Sifre] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Kullanic__3213E83F9784AEA8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Binalar] ADD  CONSTRAINT [DF_Binalar_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Enerji_Takip]  WITH CHECK ADD  CONSTRAINT [FK_Enerji_Takip_Binalar] FOREIGN KEY([bina_id])
REFERENCES [dbo].[Binalar] ([id])
GO
ALTER TABLE [dbo].[Enerji_Takip] CHECK CONSTRAINT [FK_Enerji_Takip_Binalar]
GO
ALTER TABLE [dbo].[Enerji_Takip]  WITH CHECK ADD  CONSTRAINT [FK_Enerji_Takip_Kullanicilar] FOREIGN KEY([Kaydeden_Kullanici_Id])
REFERENCES [dbo].[Kullanicilar] ([id])
GO
ALTER TABLE [dbo].[Enerji_Takip] CHECK CONSTRAINT [FK_Enerji_Takip_Kullanicilar]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bina adı' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Binalar', @level2type=N'COLUMN',@level2name=N'Bina_Adi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 MEDIKAL GAZ 2 ELK 3 SU 4 YAKIT 5 TIBBI ATIK 6 ILETISIM 7 KIRA''' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'fatura_turu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'döner sermaye: 1, genel bütçe:2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'butce_turu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i̇haleli̇: 1, ihalesi̇z: 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'ihale_durumu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tek zamanli : 1, çok zamanli: 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'tek_cok_zamanli'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(gunduz + puantaj + gece) toplam tutar bi̇lgi̇si̇' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'toplam_tutar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'doğal gaz: 1, katı yakıt: 2, sıvı yakıt: 3, jeotermal: 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'yakit_turu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'taşkömürü: 1, maden: 2, odun: 3, petrokok: 4, prina: 5, talaş: 6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'kati_yakit_turu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'yok: 0, var: 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'dogal_gaz_durumu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'şebeke: 1, kuyu:2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'su_turu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'faturalı: 1, kartlı: 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'sayac_turu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'serbest tüketi̇ci̇ mi̇?   evet:1, hayir:0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'serbest_tuketici'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'kompanzasyon evet:1, hayir:0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enerji_Takip', @level2type=N'COLUMN',@level2name=N'kompanzasyon'
GO
