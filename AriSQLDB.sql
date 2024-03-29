USE [master]
GO
/****** Object:  Database [AriSqlDb]    Script Date: 16.02.2024 20:53:33 ******/
CREATE DATABASE [AriSqlDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AriSqlDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AriSqlDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AriSqlDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AriSqlDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AriSqlDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AriSqlDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AriSqlDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AriSqlDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AriSqlDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AriSqlDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AriSqlDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [AriSqlDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AriSqlDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AriSqlDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AriSqlDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AriSqlDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AriSqlDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AriSqlDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AriSqlDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AriSqlDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AriSqlDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AriSqlDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AriSqlDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AriSqlDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AriSqlDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AriSqlDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AriSqlDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AriSqlDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AriSqlDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AriSqlDb] SET  MULTI_USER 
GO
ALTER DATABASE [AriSqlDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AriSqlDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AriSqlDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AriSqlDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AriSqlDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AriSqlDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AriSqlDb] SET QUERY_STORE = OFF
GO
USE [AriSqlDb]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 16.02.2024 20:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](50) NOT NULL,
	[KategoriAciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 16.02.2024 20:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[musteriNo] [int] NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[dTarih] [date] NULL,
	[sehir] [nvarchar](50) NULL,
	[cinsiyet] [nvarchar](5) NULL,
	[puan] [int] NULL,
	[meslek] [nvarchar](50) NULL,
	[gelir] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 16.02.2024 20:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[personelNo] [int] IDENTITY(1000,13) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[gorevi] [nvarchar](50) NULL,
	[yoneticisi] [int] NULL,
	[girisTarihi] [date] NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[personelNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 16.02.2024 20:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [nvarchar](50) NOT NULL,
	[UrunAciklama] [nvarchar](max) NULL,
	[UrunFiyat] [money] NOT NULL,
	[UrunStokAdet] [int] NOT NULL,
	[KategoriRefID] [int] NOT NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi], [KategoriAciklama]) VALUES (1, N'Elektronik', N'Elektronik eşyalar satış yeri')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi], [KategoriAciklama]) VALUES (2, N'Beyaz Eşya', N'Buzdolabı, fırın, çamaşır mak vs..')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi], [KategoriAciklama]) VALUES (3, N'Mobilya', N'sehpa,masa,koltuk')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
GO
INSERT [dbo].[Musteriler] ([musteriNo], [ad], [soyad], [dTarih], [sehir], [cinsiyet], [puan], [meslek], [gelir]) VALUES (1, N'Yılmaz', N'Can', CAST(N'2000-01-01' AS Date), N'Burdur', N'Erkek', 99, N'OfisBoy', 23500)
INSERT [dbo].[Musteriler] ([musteriNo], [ad], [soyad], [dTarih], [sehir], [cinsiyet], [puan], [meslek], [gelir]) VALUES (2, N'Ayfer', N'Can', CAST(N'1988-05-05' AS Date), N'Ankara', N'Kadin', 80, N'Yazilim', 55000)
INSERT [dbo].[Musteriler] ([musteriNo], [ad], [soyad], [dTarih], [sehir], [cinsiyet], [puan], [meslek], [gelir]) VALUES (3, N'Türker', N'Canlı', CAST(N'1989-07-07' AS Date), N'Adana', N'Erkek', 55, N'Memur', 23450)
INSERT [dbo].[Musteriler] ([musteriNo], [ad], [soyad], [dTarih], [sehir], [cinsiyet], [puan], [meslek], [gelir]) VALUES (4, N'Osman', N'Yıldız', CAST(N'1987-01-01' AS Date), N'Kars', N'Erkek', 55, N'Muhasebeci', 25600)
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([personelNo], [adi], [soyadi], [gorevi], [yoneticisi], [girisTarihi]) VALUES (1000, N'Ahmet', N'Veli', N'Müdür', 1, CAST(N'1999-01-01' AS Date))
INSERT [dbo].[Personel] ([personelNo], [adi], [soyadi], [gorevi], [yoneticisi], [girisTarihi]) VALUES (1013, N'Veli', N'Yıldız', N'Şef', 2, CAST(N'1998-01-01' AS Date))
INSERT [dbo].[Personel] ([personelNo], [adi], [soyadi], [gorevi], [yoneticisi], [girisTarihi]) VALUES (1026, N'Ayşe', N'Cansız', N'Koordinatör', 1, CAST(N'1996-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklama], [UrunFiyat], [UrunStokAdet], [KategoriRefID]) VALUES (1, N'Asus Laptop', N'Çok iyi', 25000.0000, 100, 1)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklama], [UrunFiyat], [UrunStokAdet], [KategoriRefID]) VALUES (2, N'Tablet IOS', N'Güzel', 30000.0000, 100, 1)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklama], [UrunFiyat], [UrunStokAdet], [KategoriRefID]) VALUES (3, N'Arçelik Buzdolabı', N'Dayanıklı', 40000.0000, 50, 2)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklama], [UrunFiyat], [UrunStokAdet], [KategoriRefID]) VALUES (4, N'Samsung Fırın', N'Sağlam', 15000.0000, 22, 2)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklama], [UrunFiyat], [UrunStokAdet], [KategoriRefID]) VALUES (5, N'Köşe Koltuk', N'Köşeyi dönenlere', 25000.0000, 100, 3)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklama], [UrunFiyat], [UrunStokAdet], [KategoriRefID]) VALUES (6, N'Sehpa', N'İyi sehpa', 5000.0000, 25, 3)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklama], [UrunFiyat], [UrunStokAdet], [KategoriRefID]) VALUES (7, N'TV', N'', 25000.0000, 100, 1)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklama], [UrunFiyat], [UrunStokAdet], [KategoriRefID]) VALUES (8, N'Dolap', N'', 3000.0000, 25, 3)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklama], [UrunFiyat], [UrunStokAdet], [KategoriRefID]) VALUES (9, N'Kurutma Mak.', N'', 12500.0000, 12, 2)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategoriler] FOREIGN KEY([KategoriRefID])
REFERENCES [dbo].[Kategoriler] ([KategoriID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategoriler]
GO
USE [master]
GO
ALTER DATABASE [AriSqlDb] SET  READ_WRITE 
GO
