CREATE DATABASE CovidTakip
GO
USE CovidTakip
GO
/****** Object:  Table [dbo].[asi]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[asi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adi] [varchar](50) NULL,
	[tur] [int] NULL,
	[gerekli_doz] [int] NULL,
	[etkin_oldugu_varyantlar] [int] NULL,
 CONSTRAINT [PK_asi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[asi_gecmisi]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asi_gecmisi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vatandas_id] [int] NOT NULL,
	[asi_olma_durumu] [int] NULL,
	[olunan_asi] [int] NULL,
	[olunan_doz_sayisi] [int] NULL,
	[asi_yeri] [int] NULL,
	[asi_tarihi] [date] NULL,
	[hastaliktan_once_olunan_doz_sayisi] [int] NULL,
	[hastaliktan_sonra_olunan_doz_sayisi] [int] NULL,
	[asi_yapan_hemsire] [int] NULL,
	[asidan_sonra_gorulen_semptomlar] [int] NULL,
 CONSTRAINT [PK_asi_gecmisi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asi_guven_durumu]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[asi_guven_durumu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guven_durumu] [varchar](50) NULL,
 CONSTRAINT [PK_asi_guven_durumu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[asi_olma_durumu]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[asi_olma_durumu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[asi_oldu_mu] [varchar](5) NULL,
 CONSTRAINT [PK_asi_olma_durumu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[asi_turu]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[asi_turu](
	[id] [int] NOT NULL,
	[tür] [varchar](50) NULL,
 CONSTRAINT [PK_asi_turu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[asi_yeri]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[asi_yeri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[yer] [varchar](50) NULL,
 CONSTRAINT [PK_asi_yeri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bashekim]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bashekim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isim] [varchar](50) NULL,
	[soyisim] [varchar](50) NULL,
	[dogum_tarihi] [date] NULL,
	[brans] [int] NULL,
	[maas] [int] NULL,
	[hastane] [int] NULL,
	[bashekimlik_baslama_tarihi] [date] NULL,
 CONSTRAINT [PK_bashekim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[brans]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[brans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[brans] [varchar](50) NULL,
 CONSTRAINT [PK_brans] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[doktor]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[doktor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isim] [varchar](50) NULL,
	[soyisim] [varchar](50) NULL,
	[dogum_tarihi] [date] NULL,
	[brans] [int] NULL,
	[hastane] [int] NULL,
	[doktorluga_baslama_tarihi] [date] NULL,
	[maas] [int] NULL,
 CONSTRAINT [PK_doktor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[egitim]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[egitim](
	[id] [int] NOT NULL,
	[egitim_duzeyi] [varchar](50) NULL,
 CONSTRAINT [PK_egitim_duzeyi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hastaligi_nasil_gecirdi]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hastaligi_nasil_gecirdi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hastaligi_nasil_gecirdi] [varchar](50) NULL,
 CONSTRAINT [PK_hastaligi_nasil_gecirdi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hastalik_gecmisi]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hastalik_gecmisi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[vatandas_id] [int] NOT NULL,
	[hastalik_gecirdi_mi] [int] NULL,
	[hastaligi_nasil_gecirdi] [int] NULL,
	[hastalikta_gorulen_semptomlar] [int] NULL,
	[tedavi_eden_doktor] [int] NULL,
	[gorulen_tedavi] [int] NULL,
 CONSTRAINT [PK_hastalik_gecmisi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hemsire]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hemsire](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isim] [varchar](50) NULL,
	[soyisim] [varchar](50) NULL,
	[poliklinik_id] [int] NULL,
	[dogum_tarihi] [date] NULL,
	[hastane] [int] NULL,
	[doktoru] [int] NULL,
	[maas] [int] NULL,
 CONSTRAINT [PK_hemsire] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ilac]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ilac](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isim] [varchar](50) NULL,
 CONSTRAINT [PK_ilac] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kurum]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kurum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isim] [varchar](50) NULL,
	[sehir] [int] NULL,
 CONSTRAINT [PK_kurum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sehir]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sehir](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sehir] [varchar](50) NULL,
 CONSTRAINT [PK_sehir] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[semptomlar]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[semptomlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[semptom] [varchar](50) NULL,
 CONSTRAINT [PK_semptomlar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tedavi]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tedavi](
	[id] [int] NOT NULL,
	[uygulanan_tedavi] [varchar](50) NULL,
 CONSTRAINT [PK_tedavi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tedavide_kullanilan_ilaclar]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tedavide_kullanilan_ilaclar](
	[hastalik_gecmis_id] [int] NULL,
	[ilac_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[varyantlar]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[varyantlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isim] [varchar](50) NULL,
 CONSTRAINT [PK_varyantlar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vatandas]    Script Date: 1.11.2021 22:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vatandas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TCNO] [varchar](11) NOT NULL,
	[isim] [varchar](50) NULL,
	[soyisim] [nvarchar](50) NULL,
	[dogum_tarihi] [date] NULL,
	[egitim_durumu] [int] NULL,
	[asi_guven_durumu] [int] NULL,
	[telefon] [varchar](11) NULL,
	[sehir] [int] NULL,
 CONSTRAINT [PK_VATANDAS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[asi]  WITH CHECK ADD  CONSTRAINT [FK_asi_asi_turu] FOREIGN KEY([tur])
REFERENCES [dbo].[asi_turu] ([id])
GO
ALTER TABLE [dbo].[asi] CHECK CONSTRAINT [FK_asi_asi_turu]
GO
ALTER TABLE [dbo].[asi]  WITH CHECK ADD  CONSTRAINT [FK_asi_varyantlar] FOREIGN KEY([etkin_oldugu_varyantlar])
REFERENCES [dbo].[varyantlar] ([id])
GO
ALTER TABLE [dbo].[asi] CHECK CONSTRAINT [FK_asi_varyantlar]
GO
ALTER TABLE [dbo].[asi_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_asi_gecmisi_asi] FOREIGN KEY([olunan_asi])
REFERENCES [dbo].[asi] ([id])
GO
ALTER TABLE [dbo].[asi_gecmisi] CHECK CONSTRAINT [FK_asi_gecmisi_asi]
GO
ALTER TABLE [dbo].[asi_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_asi_gecmisi_asi_olma_durumu] FOREIGN KEY([asi_olma_durumu])
REFERENCES [dbo].[asi_olma_durumu] ([id])
GO
ALTER TABLE [dbo].[asi_gecmisi] CHECK CONSTRAINT [FK_asi_gecmisi_asi_olma_durumu]
GO
ALTER TABLE [dbo].[asi_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_asi_gecmisi_asi_yeri] FOREIGN KEY([asi_yeri])
REFERENCES [dbo].[asi_yeri] ([id])
GO
ALTER TABLE [dbo].[asi_gecmisi] CHECK CONSTRAINT [FK_asi_gecmisi_asi_yeri]
GO
ALTER TABLE [dbo].[asi_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_asi_gecmisi_hemsire] FOREIGN KEY([asi_yapan_hemsire])
REFERENCES [dbo].[hemsire] ([id])
GO
ALTER TABLE [dbo].[asi_gecmisi] CHECK CONSTRAINT [FK_asi_gecmisi_hemsire]
GO
ALTER TABLE [dbo].[asi_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_asi_gecmisi_semptomlar] FOREIGN KEY([asidan_sonra_gorulen_semptomlar])
REFERENCES [dbo].[semptomlar] ([id])
GO
ALTER TABLE [dbo].[asi_gecmisi] CHECK CONSTRAINT [FK_asi_gecmisi_semptomlar]
GO
ALTER TABLE [dbo].[asi_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_asi_gecmisi_semptomlar1] FOREIGN KEY([asidan_sonra_gorulen_semptomlar])
REFERENCES [dbo].[semptomlar] ([id])
GO
ALTER TABLE [dbo].[asi_gecmisi] CHECK CONSTRAINT [FK_asi_gecmisi_semptomlar1]
GO
ALTER TABLE [dbo].[asi_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_asi_gecmisi_vatandas] FOREIGN KEY([vatandas_id])
REFERENCES [dbo].[vatandas] ([ID])
GO
ALTER TABLE [dbo].[asi_gecmisi] CHECK CONSTRAINT [FK_asi_gecmisi_vatandas]
GO
ALTER TABLE [dbo].[bashekim]  WITH CHECK ADD  CONSTRAINT [FK_bashekim_brans] FOREIGN KEY([brans])
REFERENCES [dbo].[brans] ([id])
GO
ALTER TABLE [dbo].[bashekim] CHECK CONSTRAINT [FK_bashekim_brans]
GO
ALTER TABLE [dbo].[bashekim]  WITH CHECK ADD  CONSTRAINT [FK_bashekim_kurum] FOREIGN KEY([hastane])
REFERENCES [dbo].[kurum] ([id])
GO
ALTER TABLE [dbo].[bashekim] CHECK CONSTRAINT [FK_bashekim_kurum]
GO
ALTER TABLE [dbo].[doktor]  WITH CHECK ADD  CONSTRAINT [FK_doktor_brans] FOREIGN KEY([brans])
REFERENCES [dbo].[brans] ([id])
GO
ALTER TABLE [dbo].[doktor] CHECK CONSTRAINT [FK_doktor_brans]
GO
ALTER TABLE [dbo].[doktor]  WITH CHECK ADD  CONSTRAINT [FK_doktor_kurum] FOREIGN KEY([hastane])
REFERENCES [dbo].[kurum] ([id])
GO
ALTER TABLE [dbo].[doktor] CHECK CONSTRAINT [FK_doktor_kurum]
GO
ALTER TABLE [dbo].[hastalik_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_hastalik_gecmisi_doktor] FOREIGN KEY([tedavi_eden_doktor])
REFERENCES [dbo].[doktor] ([id])
GO
ALTER TABLE [dbo].[hastalik_gecmisi] CHECK CONSTRAINT [FK_hastalik_gecmisi_doktor]
GO
ALTER TABLE [dbo].[hastalik_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_hastalik_gecmisi_hastaligi_nasil_gecirdi] FOREIGN KEY([hastaligi_nasil_gecirdi])
REFERENCES [dbo].[hastaligi_nasil_gecirdi] ([id])
GO
ALTER TABLE [dbo].[hastalik_gecmisi] CHECK CONSTRAINT [FK_hastalik_gecmisi_hastaligi_nasil_gecirdi]
GO
ALTER TABLE [dbo].[hastalik_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_hastalik_gecmisi_semptomlar] FOREIGN KEY([hastalikta_gorulen_semptomlar])
REFERENCES [dbo].[semptomlar] ([id])
GO
ALTER TABLE [dbo].[hastalik_gecmisi] CHECK CONSTRAINT [FK_hastalik_gecmisi_semptomlar]
GO
ALTER TABLE [dbo].[hastalik_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_hastalik_gecmisi_tedavi] FOREIGN KEY([gorulen_tedavi])
REFERENCES [dbo].[tedavi] ([id])
GO
ALTER TABLE [dbo].[hastalik_gecmisi] CHECK CONSTRAINT [FK_hastalik_gecmisi_tedavi]
GO
ALTER TABLE [dbo].[hastalik_gecmisi]  WITH CHECK ADD  CONSTRAINT [FK_hastalik_gecmisi_vatandas] FOREIGN KEY([vatandas_id])
REFERENCES [dbo].[vatandas] ([ID])
GO
ALTER TABLE [dbo].[hastalik_gecmisi] CHECK CONSTRAINT [FK_hastalik_gecmisi_vatandas]
GO
ALTER TABLE [dbo].[hemsire]  WITH CHECK ADD  CONSTRAINT [FK_hemsire_doktor] FOREIGN KEY([doktoru])
REFERENCES [dbo].[doktor] ([id])
GO
ALTER TABLE [dbo].[hemsire] CHECK CONSTRAINT [FK_hemsire_doktor]
GO
ALTER TABLE [dbo].[hemsire]  WITH CHECK ADD  CONSTRAINT [FK_hemsire_kurum] FOREIGN KEY([hastane])
REFERENCES [dbo].[kurum] ([id])
GO
ALTER TABLE [dbo].[hemsire] CHECK CONSTRAINT [FK_hemsire_kurum]
GO
ALTER TABLE [dbo].[kurum]  WITH CHECK ADD  CONSTRAINT [FK_kurum_sehir] FOREIGN KEY([sehir])
REFERENCES [dbo].[sehir] ([id])
GO
ALTER TABLE [dbo].[kurum] CHECK CONSTRAINT [FK_kurum_sehir]
GO
ALTER TABLE [dbo].[tedavide_kullanilan_ilaclar]  WITH CHECK ADD  CONSTRAINT [FK_tedavide_kullanilan_ilaclar_hastalik_gecmisi] FOREIGN KEY([hastalik_gecmis_id])
REFERENCES [dbo].[hastalik_gecmisi] ([ID])
GO
ALTER TABLE [dbo].[tedavide_kullanilan_ilaclar] CHECK CONSTRAINT [FK_tedavide_kullanilan_ilaclar_hastalik_gecmisi]
GO
ALTER TABLE [dbo].[tedavide_kullanilan_ilaclar]  WITH CHECK ADD  CONSTRAINT [FK_tedavide_kullanilan_ilaclar_ilac] FOREIGN KEY([ilac_id])
REFERENCES [dbo].[ilac] ([id])
GO
ALTER TABLE [dbo].[tedavide_kullanilan_ilaclar] CHECK CONSTRAINT [FK_tedavide_kullanilan_ilaclar_ilac]
GO
ALTER TABLE [dbo].[vatandas]  WITH CHECK ADD  CONSTRAINT [FK_vatandas_asi_guven_durumu] FOREIGN KEY([asi_guven_durumu])
REFERENCES [dbo].[asi_guven_durumu] ([id])
GO
ALTER TABLE [dbo].[vatandas] CHECK CONSTRAINT [FK_vatandas_asi_guven_durumu]
GO
ALTER TABLE [dbo].[vatandas]  WITH CHECK ADD  CONSTRAINT [FK_vatandas_egitim] FOREIGN KEY([egitim_durumu])
REFERENCES [dbo].[egitim] ([id])
GO
ALTER TABLE [dbo].[vatandas] CHECK CONSTRAINT [FK_vatandas_egitim]
GO
ALTER TABLE [dbo].[vatandas]  WITH CHECK ADD  CONSTRAINT [FK_vatandas_sehir1] FOREIGN KEY([sehir])
REFERENCES [dbo].[sehir] ([id])
GO
ALTER TABLE [dbo].[vatandas] CHECK CONSTRAINT [FK_vatandas_sehir1]
GO
