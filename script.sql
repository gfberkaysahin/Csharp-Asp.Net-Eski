USE [master]
GO
/****** Object:  Database [Ders]    Script Date: 7.06.2020 21:57:51 ******/
CREATE DATABASE [Ders]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ders', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Ders.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ders_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Ders_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ders] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ders].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ders] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ders] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ders] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ders] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ders] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ders] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ders] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Ders] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ders] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ders] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ders] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ders] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ders] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ders] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ders] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ders] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ders] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ders] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ders] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ders] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ders] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ders] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ders] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ders] SET RECOVERY FULL 
GO
ALTER DATABASE [Ders] SET  MULTI_USER 
GO
ALTER DATABASE [Ders] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ders] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ders] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ders] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ders', N'ON'
GO
USE [Ders]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 7.06.2020 21:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Duyurular]    Script Date: 7.06.2020 21:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Duyurular](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](50) NULL,
	[Duyuru] [nvarchar](1000) NULL,
	[Tarih] [datetime] NULL,
 CONSTRAINT [PK_Duyurular] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 7.06.2020 21:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[reklam]    Script Date: 7.06.2020 21:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reklam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[spot] [nvarchar](50) NULL,
	[fiyat] [nvarchar](50) NULL,
 CONSTRAINT [PK_reklam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[seçtiklerimiz]    Script Date: 7.06.2020 21:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seçtiklerimiz](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[seçilen] [nvarchar](50) NULL,
 CONSTRAINT [PK_seçtiklerimiz] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sosyal]    Script Date: 7.06.2020 21:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sosyal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[uygulama] [nvarchar](50) NULL,
	[kadi] [nvarchar](50) NULL,
 CONSTRAINT [PK_sosyal] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[yayinci]    Script Date: 7.06.2020 21:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yayinci](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Yayıncı Adı] [nvarchar](50) NULL,
	[Yayın Türü] [nvarchar](50) NULL,
	[Yayın Saati] [nvarchar](50) NULL,
 CONSTRAINT [PK_yayinci] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID], [KullaniciAdi], [Sifre]) VALUES (1, N'admin', N'vanfm970')
INSERT [dbo].[Admin] ([ID], [KullaniciAdi], [Sifre]) VALUES (2, N'ercan', N'4400121')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Duyurular] ON 

INSERT [dbo].[Duyurular] ([ID], [Baslik], [Duyuru], [Tarih]) VALUES (7, N'Duyuru 1', N'Van Valisi Sayın Muhammed Berkay Şahin, Pazartesi günü saat 17:00 canlı yayında konuğumuz olacaktır.', CAST(0x0000ABF000000000 AS DateTime))
INSERT [dbo].[Duyurular] ([ID], [Baslik], [Duyuru], [Tarih]) VALUES (8, N'Duyuru 2', N'Yüzüncü Yıl Üniversitesinin düzenlediğini "Van''ın en iyi radyoları" yarışmasında radyomuz 1. olmuştur.', CAST(0x0000AC2E00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Duyurular] OFF
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (1, N'ercan', N'12345')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (2, N'berksfokfka', N'32331323')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (4, N'berkaysahin', N'1212121')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (5, N'tuanasahin', N'1232132131')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (6, N'tysadsaa', N'1232132312')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (1002, N'batu', N'1232132131')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (1003, N'batuh', N'1232312321')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (1004, N'rego', N'1231321')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (1005, N'rego', N'123213211')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (1006, N'tuanasahinim', N'123a')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (1007, N'regaip', N'12345')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (1008, N'berkayımben', N'tuana')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre]) VALUES (1009, N'berkay', N'123')
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
SET IDENTITY_INSERT [dbo].[reklam] ON 

INSERT [dbo].[reklam] ([ID], [spot], [fiyat]) VALUES (1, N'10', N'50')
INSERT [dbo].[reklam] ([ID], [spot], [fiyat]) VALUES (2, N'20', N'100')
INSERT [dbo].[reklam] ([ID], [spot], [fiyat]) VALUES (3, N'özel sponsorluk', N'300')
SET IDENTITY_INSERT [dbo].[reklam] OFF
SET IDENTITY_INSERT [dbo].[seçtiklerimiz] ON 

INSERT [dbo].[seçtiklerimiz] ([ID], [seçilen]) VALUES (2, N'Murat Kekili - Bu akşam ölürüm')
INSERT [dbo].[seçtiklerimiz] ([ID], [seçilen]) VALUES (3, N'Berkay - Gel')
INSERT [dbo].[seçtiklerimiz] ([ID], [seçilen]) VALUES (4, N'Kaan Boşnak - Bırakma kendini')
INSERT [dbo].[seçtiklerimiz] ([ID], [seçilen]) VALUES (5, N'Kahraman Deniz - Tuzaklara Düştüm')
SET IDENTITY_INSERT [dbo].[seçtiklerimiz] OFF
SET IDENTITY_INSERT [dbo].[sosyal] ON 

INSERT [dbo].[sosyal] ([ID], [uygulama], [kadi]) VALUES (3, N'instagram', N'vanfm97.0')
INSERT [dbo].[sosyal] ([ID], [uygulama], [kadi]) VALUES (4, N'twitter', N'vanfm97.0')
INSERT [dbo].[sosyal] ([ID], [uygulama], [kadi]) VALUES (5, N'facebook', N'vanfm97.0')
INSERT [dbo].[sosyal] ([ID], [uygulama], [kadi]) VALUES (6, N'snapchat', N'vanfm97.0')
INSERT [dbo].[sosyal] ([ID], [uygulama], [kadi]) VALUES (7, N'gmail', N'vanfm97.0@hotmail.com')
SET IDENTITY_INSERT [dbo].[sosyal] OFF
SET IDENTITY_INSERT [dbo].[yayinci] ON 

INSERT [dbo].[yayinci] ([ID], [Yayıncı Adı], [Yayın Türü], [Yayın Saati]) VALUES (2, N'Berkay', N'Komedi', N'19.00')
INSERT [dbo].[yayinci] ([ID], [Yayıncı Adı], [Yayın Türü], [Yayın Saati]) VALUES (3, N'tuana', N'komedi', N'20.00')
INSERT [dbo].[yayinci] ([ID], [Yayıncı Adı], [Yayın Türü], [Yayın Saati]) VALUES (4, N'Duyguseli', N'Şiir', N'23.00')
INSERT [dbo].[yayinci] ([ID], [Yayıncı Adı], [Yayın Türü], [Yayın Saati]) VALUES (5, N'Nuray', N'Sohbet', N'14.00')
INSERT [dbo].[yayinci] ([ID], [Yayıncı Adı], [Yayın Türü], [Yayın Saati]) VALUES (6, N'Canan', N'Arabesk', N'16.00')
SET IDENTITY_INSERT [dbo].[yayinci] OFF
USE [master]
GO
ALTER DATABASE [Ders] SET  READ_WRITE 
GO
