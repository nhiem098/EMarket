USE [master]
GO
/****** Object:  Database [EMarket]    Script Date: 6/5/2019 7:36:54 PM ******/
CREATE DATABASE [EMarket]
GO
ALTER DATABASE [EMarket] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EMarket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EMarket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EMarket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EMarket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EMarket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EMarket] SET ARITHABORT OFF 
GO
ALTER DATABASE [EMarket] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EMarket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EMarket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EMarket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EMarket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EMarket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EMarket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EMarket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EMarket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EMarket] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EMarket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EMarket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EMarket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EMarket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EMarket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EMarket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EMarket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EMarket] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EMarket] SET  MULTI_USER 
GO
ALTER DATABASE [EMarket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EMarket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EMarket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EMarket] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EMarket]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/5/2019 7:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 6/5/2019 7:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ChiTietHoaDonId] [int] IDENTITY(1,1) NOT NULL,
	[HoaDonId] [int] NOT NULL,
	[HangHoaId] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongTien] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ChiTietHoaDonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 6/5/2019 7:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoanId] [int] NOT NULL,
	[HangHoaId] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Rating] [int] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 6/5/2019 7:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[HangHoaID] [int] IDENTITY(1,1) NOT NULL,
	[TenHangHoa] [nvarchar](200) NOT NULL,
	[NhaCungCapID] [int] NOT NULL,
	[LoaiID] [int] NOT NULL,
	[Gia] [float] NOT NULL,
	[Hinh] [varchar](255) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[HangHoaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/5/2019 7:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[HoaDonId] [int] IDENTITY(1,1) NOT NULL,
	[NgayLapHoaDon] [datetime2](7) NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[TenKhachHang] [nvarchar](max) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[SDT] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[HoaDonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 6/5/2019 7:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoHang](
	[KhoHangID] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[HangHoaID] [int] NOT NULL,
 CONSTRAINT [PK_KhoHang] PRIMARY KEY CLUSTERED 
(
	[KhoHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 6/5/2019 7:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[LoaiID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[LoaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/5/2019 7:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[NhaCungCapID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](200) NOT NULL,
	[MoTa] [nvarchar](200) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[NhaCungCapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/5/2019 7:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TaiKhoanID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[NgayDK] [datetime] NOT NULL,
	[LoaiTaiKhoan] [bit] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TaiKhoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinTaiKhoan]    Script Date: 6/5/2019 7:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinTaiKhoan](
	[ThongTinTaiKhoanID] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](200) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[SDT] [varchar](20) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[TaiKhoanId] [int] NOT NULL,
 CONSTRAINT [PK_ThongTinTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[ThongTinTaiKhoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopSelling]    Script Date: 6/5/2019 7:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopSelling](
	[TopSellingID] [int] IDENTITY(1,1) NOT NULL,
	[HangHoaID] [int] NOT NULL,
	[SoLan] [int] NULL,
	[DanhGia] [int] NULL,
 CONSTRAINT [PK_TopSelling] PRIMARY KEY CLUSTERED 
(
	[TopSellingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181205044138_CreateKhoHang', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181207075028_thaydoitabletaikhoan', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181208021429_ThemEmailVaoTaiKhoan', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181212123537_ThemHoaDon', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181213105927_ThemHoaDon', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181214113737_ThemChiTietHoaDon', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181216143315_SuaTableHoaDon', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181219112638_AddRatingTable', N'2.1.4-rtm-31024')
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (1, 15, 1, 2, 1999.8)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (2, 36, 2, 1, 1600)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (3, 37, 2, 1, 1600)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (4, 38, 3, 1, 2222)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (5, 39, 3, 1, 1700)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (6, 40, 4, 1, 1600)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (7, 41, 2, 1, 2500)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (8, 42, 5, 1, 555.5)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (9, 43, 6, 1, 1600)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (10, 43, 3, 1, 7800)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (11, 43, 2, 1, 3600)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (12, 46, 1, 2, 1999.8)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (13, 46, 2, 1, 1600)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (14, 46, 3, 1, 475)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (15, 47, 1, 1, 999.9)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (16, 48, 2, 1, 1600)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (17, 48, 1, 1, 999.9)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (18, 48, 6, 1, 499.9)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (19, 51, 1, 1, 999.9)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (20, 51, 2, 1, 1600)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (21, 52, 5, 1, 799.9)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (22, 52, 3, 1, 475)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (23, 53, 1, 1, 999.9)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (24, 53, 2, 1, 1600)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (25, 54, 1, 2, 1999.8)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (26, 54, 2, 1, 1600)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDonId], [HoaDonId], [HangHoaId], [SoLuong], [TongTien]) VALUES (27, 54, 3, 1, 475)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([Id], [TaiKhoanId], [HangHoaId], [Comment], [Rating]) VALUES (1, 9, 1, N'123123', 4)
INSERT [dbo].[DanhGia] ([Id], [TaiKhoanId], [HangHoaId], [Comment], [Rating]) VALUES (2, 9, 1, N'This Is AWESOME!!!!!!', 5)
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
SET IDENTITY_INSERT [dbo].[HangHoa] ON 

INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (1, N'IPhone XS', 3, 1, 999.9, N'iphonexs.jpg', N'Super Retina in two sizes — including the largest display ever on an iPhone. Even faster Face ID. The smartest, most powerful chip in a smartphone.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (2, N'MacBook-Air', 3, 2, 1600, N'macbookair.jpg', N'The most loved Mac is about to make you fall in love all over again. Available in silver, space gray, and gold, the new thinner and lighter MacBook Air features a brilliant Retina display, Touch ID, the latest-generation keyboard, and a Force Touch trackpad.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (3, N'IPad-Pro', 3, 4, 475, N'ipadpro.jpg', N'The new all-screen design means iPad Pro is a magical piece of glass that does everything you need, any way you hold it.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (4, N'SamSung Galaxy S9+', 2, 1, 899.9, N'samsunggalaxys9.jpg', N'Our category-defining Dual Aperture lens adapts like the human eye. It†s able to automatically switch between various lighting conditions with ease—making your photos look great whether it†s bright or dark, day or night.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (5, N'Galaxy Note9', 2, 1, 799.9, N'galaxynote9.jpg', N'Galaxy Note has always put powerful technology in the hands of those who demand more. Now, the all new Galaxy Note9 surpasses even these high expectations, focusing on what matters most in today’s always-on, mobile world.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (6, N'Galaxy Tab S', 2, 4, 499.9, N'galaxytabs.jpg', N'inge watch your favourite movies and TV shows. The slim bezels and 10.5" immersive screen show every moment in crisp detail and rich colour.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (7, N'Samsung NX1', 2, 3, 1499.9, N'samsungnx1.jpg', N'Samsung’s NX1 camera is ready to capture life as it happens. Thanks to 205 phase-detection points and 209 contrast-detection points, the NX AF System III covers an incredible 90% of the sensor area. This super-wide AF area is superior to those in digital SLRs.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (8, N'Samsung Sound+ SWA-9000S', 2, 5, 299.6, N'samsungsoundswa9000s.jpg', N'The Wireless Surround Kit* lets you expand your surround sound system easily without the mess of wires**. Together with your Soundbar, you can create a multi-channel system for a true surround sound experience.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (9, N'Xperia XZ3', 4, 1, 399.9, N'xperiaxz3.jpg', N'The beauty of Sony OLED, now on Xperia. Escape from the everyday into your world of entertainment with the Xperia XZ3.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (10, N'A9-CMOS', 4, 3, 3499.9, N'a9cmos.jpg', N'A game-changing image sensor from Sony makes conventional camera mechanisms redundant, achieving speed and performance that are beyond the capabilities of mechanical devices.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (11, N'Z1R Premium Headphones', 4, 5, 149.9, N'z1rpremiumheadphones.jpg', N'Capture pure sound with the 2.76" HD Driver The newly developed diaphragm with magnesium dome and liquid crystal polymer edge enables up to 120-kHz playback in High-Resolution Audio.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (12, N'Nokia 7.1', 1, 1, 399.9, N'nokia7.jpg', N'Nokia 7.1 is all about capturing photos that look so good, you just have to share them. The dual rear cameras with ZEISS optics deliver stunning shots, while the AI technology lets you add an artistic touch to every photo with 3D personas, masks and filters.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (13, N'Lumia 950 XL', 5, 1, 499.9, N'lumia950xl.jpg', N'With a stunning 5.7” Quad HD display and a powerful octa-core processor, it’s the Lumia you’ve been waiting for. Get the phone that works like your PC and push the limits of what’s possible.')
INSERT [dbo].[HangHoa] ([HangHoaID], [TenHangHoa], [NhaCungCapID], [LoaiID], [Gia], [Hinh], [MoTa]) VALUES (14, N'Lenovo Ideapad 720S', 5, 2, 799.9, N'lenovoideapad720s.jpg', N'Lightweight, powerful, and stylish, the Lenovo Ideapad 720S Touch easily keeps pace with your mobile lifestyle. Its a breeze to carry at just 4 pounds and comes loaded with a 7th Gen Intel Core i7 processor, NVIDIA graphics, and a fingerprint reader for extra security.')
SET IDENTITY_INSERT [dbo].[HangHoa] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (15, CAST(N'2018-12-05T00:00:00.0000000' AS DateTime2), 1, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (36, CAST(N'2018-12-05T00:00:00.0000000' AS DateTime2), 0, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (37, CAST(N'2018-07-08T00:00:00.0000000' AS DateTime2), 0, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (38, CAST(N'2018-02-08T00:00:00.0000000' AS DateTime2), 0, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (39, CAST(N'2018-02-19T00:00:00.0000000' AS DateTime2), 0, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (40, CAST(N'2018-03-07T00:00:00.0000000' AS DateTime2), 0, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (41, CAST(N'2018-09-15T00:00:00.0000000' AS DateTime2), 0, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (42, CAST(N'2018-08-07T00:00:00.0000000' AS DateTime2), 0, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (43, CAST(N'2018-11-02T00:00:00.0000000' AS DateTime2), 0, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (44, CAST(N'2018-12-07T00:00:00.0000000' AS DateTime2), 0, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (45, CAST(N'2018-12-15T00:00:00.0000000' AS DateTime2), 0, N'Ðàm Nh?t Phong', N'blablablablaSomWhereOverTheRainbow', N'0903373103', N'phongdeptrai@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (46, CAST(N'2018-12-19T11:19:12.8279493' AS DateTime2), 0, N'Đàm Nhật Phong', N'BlaBlaBla', N'0903373103', N'damnhatphong671998@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (47, CAST(N'2018-12-20T11:35:56.3500952' AS DateTime2), 0, N'Đàm Nhật Phong', N'113/84/44', N'0903373103', N'damnhatphong671998@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (48, CAST(N'2018-12-20T13:55:49.7547710' AS DateTime2), 1, N'Đàm Nhật Phong', N'113/84/44', N'0903373103', N'damnhatphong671998@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (51, CAST(N'2018-12-20T15:25:23.8103042' AS DateTime2), 1, N'Phong', N'BlaBlaBla 113/84/44a', N'21321313123', N'damnhatphong671998@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (52, CAST(N'2018-12-20T18:23:44.7335029' AS DateTime2), 1, N'Phong', N'BlaBlaBla 113/84/44a', N'21321313123', N'damnhatphong671998@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (53, CAST(N'2018-12-21T13:00:25.7312903' AS DateTime2), 1, N'Phong', N'BlaBlaBla 113/84/44a', N'21321313123', N'damnhatphong671998@gmail.com')
INSERT [dbo].[HoaDon] ([HoaDonId], [NgayLapHoaDon], [TinhTrang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (54, CAST(N'2018-12-22T08:19:39.8346241' AS DateTime2), 1, N'Phong', N'BlaBlaBla 113/84/44a', N'21321313123', N'damnhatphong671998@gmail.com')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhoHang] ON 

INSERT [dbo].[KhoHang] ([KhoHangID], [SoLuong], [HangHoaID]) VALUES (1, 20, 1)
INSERT [dbo].[KhoHang] ([KhoHangID], [SoLuong], [HangHoaID]) VALUES (2, 41, 2)
INSERT [dbo].[KhoHang] ([KhoHangID], [SoLuong], [HangHoaID]) VALUES (3, 41, 3)
INSERT [dbo].[KhoHang] ([KhoHangID], [SoLuong], [HangHoaID]) VALUES (4, 60, 3)
INSERT [dbo].[KhoHang] ([KhoHangID], [SoLuong], [HangHoaID]) VALUES (5, 50, 10)
INSERT [dbo].[KhoHang] ([KhoHangID], [SoLuong], [HangHoaID]) VALUES (6, 28, 6)
SET IDENTITY_INSERT [dbo].[KhoHang] OFF
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([LoaiID], [TenLoai], [MoTa]) VALUES (1, N'Điện Thoại', N'Điện thoại di động, còn gọi là điện thoại cầm tay, là loại điện thoại kết nối dựa trên sóng điện từ vào mạng viễn thông.')
INSERT [dbo].[Loai] ([LoaiID], [TenLoai], [MoTa]) VALUES (2, N'Laptop', N'A laptop is a computer designed for portability. Laptops are usually less than 3 inches thick, weigh less than 5 pounds and can be powered by a battery.')
INSERT [dbo].[Loai] ([LoaiID], [TenLoai], [MoTa]) VALUES (3, N'Máy Ảnh', N'Máy ảnh hay máy chụp hình là một dụng cụ dùng để thu ảnh thành một ảnh tĩnh hay thành một loạt các ảnh chuyển động (gọi là phim hay video). ')
INSERT [dbo].[Loai] ([LoaiID], [TenLoai], [MoTa]) VALUES (4, N'Tablet', N'A tablet is a wireless touch screen personal computer (PC) that is smaller than a notebook but larger than a smartphone.')
INSERT [dbo].[Loai] ([LoaiID], [TenLoai], [MoTa]) VALUES (5, N'Phụ Kiện', N'Phụ Kiện máy ảnh, Máy tính, Điện Thoại')
INSERT [dbo].[Loai] ([LoaiID], [TenLoai], [MoTa]) VALUES (7, N'Đồng Hồ', N'Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla ')
SET IDENTITY_INSERT [dbo].[Loai] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [MoTa]) VALUES (1, N'NOKIA', N'Nokia is a global leader in creating the technologies at the heart of our connected world')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [MoTa]) VALUES (2, N'SAMSUNG', N'Samsung is a South Korean electronics company which sells televisions, household appliances and perhaps most notably, mobile devices.')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [MoTa]) VALUES (3, N'APPLE', N'Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, ...')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [MoTa]) VALUES (4, N'SONY', N'Sony Corporation is a Japanese multinational conglomerate corporation headquartered in Konan, Minato, Tokyo.')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [MoTa]) VALUES (5, N'MICROSOFT', N'Microsoft Corporation (MS) is an American multinational technology company with headquarters in Redmond, Washington.')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [NgayDK], [LoaiTaiKhoan], [Email]) VALUES (8, N'phong3', N'202cb962ac59075b964b07152d234b70', CAST(N'2018-12-09T12:22:37.010' AS DateTime), 0, N'damnhatphong671998@gmail.com')
INSERT [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [NgayDK], [LoaiTaiKhoan], [Email]) VALUES (9, N'phong', N'202cb962ac59075b964b07152d234b70', CAST(N'2018-12-13T15:09:15.707' AS DateTime), 1, N'damnhatphong671998@gmail.com')
INSERT [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [NgayDK], [LoaiTaiKhoan], [Email]) VALUES (11, N'phong2', N'202cb962ac59075b964b07152d234b70', CAST(N'2018-12-13T15:40:35.563' AS DateTime), 1, N'damnhatphong671998@gmail.com')
INSERT [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [NgayDK], [LoaiTaiKhoan], [Email]) VALUES (12, N'admin', N'21232f297a57a5a743894a0e4a801fc3', CAST(N'2018-12-21T13:53:33.723' AS DateTime), 0, N'damnhatphong671998@gmail.com')
INSERT [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [NgayDK], [LoaiTaiKhoan], [Email]) VALUES (13, N'customer', N'91ec1f9324753048c0096d036a694f86', CAST(N'2018-12-21T13:53:55.123' AS DateTime), 1, N'damnhatphong671998@gmail.com')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] ON 

INSERT [dbo].[ThongTinTaiKhoan] ([ThongTinTaiKhoanID], [HoVaTen], [NgaySinh], [SDT], [DiaChi], [TaiKhoanId]) VALUES (14, N'Đàm Nhật Dukes', CAST(N'1998-06-07T00:00:00.000' AS DateTime), N'0903373103', N'113/84/44', 9)
INSERT [dbo].[ThongTinTaiKhoan] ([ThongTinTaiKhoanID], [HoVaTen], [NgaySinh], [SDT], [DiaChi], [TaiKhoanId]) VALUES (15, N'Đàm Nhật Phong', CAST(N'1998-06-07T00:00:00.000' AS DateTime), N'0903373103', N'HCMUP HO CHI MINH City', 12)
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[TopSelling] ON 

INSERT [dbo].[TopSelling] ([TopSellingID], [HangHoaID], [SoLan], [DanhGia]) VALUES (1, 1, 15, 10)
INSERT [dbo].[TopSelling] ([TopSellingID], [HangHoaID], [SoLan], [DanhGia]) VALUES (2, 4, 8, 7)
INSERT [dbo].[TopSelling] ([TopSellingID], [HangHoaID], [SoLan], [DanhGia]) VALUES (3, 2, 14, 9)
INSERT [dbo].[TopSelling] ([TopSellingID], [HangHoaID], [SoLan], [DanhGia]) VALUES (4, 14, 7, 7)
INSERT [dbo].[TopSelling] ([TopSellingID], [HangHoaID], [SoLan], [DanhGia]) VALUES (5, 3, 12, 10)
INSERT [dbo].[TopSelling] ([TopSellingID], [HangHoaID], [SoLan], [DanhGia]) VALUES (6, 5, 9, 8)
INSERT [dbo].[TopSelling] ([TopSellingID], [HangHoaID], [SoLan], [DanhGia]) VALUES (7, 6, 1, NULL)
SET IDENTITY_INSERT [dbo].[TopSelling] OFF
/****** Object:  Index [IX_ChiTietHoaDon_HangHoaId]    Script Date: 6/5/2019 7:36:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDon_HangHoaId] ON [dbo].[ChiTietHoaDon]
(
	[HangHoaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietHoaDon_HoaDonId]    Script Date: 6/5/2019 7:36:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDon_HoaDonId] ON [dbo].[ChiTietHoaDon]
(
	[HoaDonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangHoa_LoaiID]    Script Date: 6/5/2019 7:36:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangHoa_LoaiID] ON [dbo].[HangHoa]
(
	[LoaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangHoa_NhaCungCapID]    Script Date: 6/5/2019 7:36:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangHoa_NhaCungCapID] ON [dbo].[HangHoa]
(
	[NhaCungCapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_KhoHang_HangHoaID]    Script Date: 6/5/2019 7:36:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_KhoHang_HangHoaID] ON [dbo].[KhoHang]
(
	[HangHoaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ThongTinTaiKhoan_TaiKhoanId]    Script Date: 6/5/2019 7:36:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_ThongTinTaiKhoan_TaiKhoanId] ON [dbo].[ThongTinTaiKhoan]
(
	[TaiKhoanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TopSelling_HangHoaID]    Script Date: 6/5/2019 7:36:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_TopSelling_HangHoaID] ON [dbo].[TopSelling]
(
	[HangHoaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan] ADD  DEFAULT ((0)) FOR [TaiKhoanId]
GO
ALTER TABLE [dbo].[TopSelling] ADD  DEFAULT ((0)) FOR [SoLan]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HangHoa_HangHoaId] FOREIGN KEY([HangHoaId])
REFERENCES [dbo].[HangHoa] ([HangHoaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HangHoa_HangHoaId]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon_HoaDonId] FOREIGN KEY([HoaDonId])
REFERENCES [dbo].[HoaDon] ([HoaDonId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon_HoaDonId]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_LoaiID] FOREIGN KEY([LoaiID])
REFERENCES [dbo].[Loai] ([LoaiID])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_LoaiID]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_NhaCungCap] FOREIGN KEY([NhaCungCapID])
REFERENCES [dbo].[NhaCungCap] ([NhaCungCapID])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_NhaCungCap]
GO
ALTER TABLE [dbo].[KhoHang]  WITH CHECK ADD  CONSTRAINT [FK_KhoHang_HangHoa_HangHoaID] FOREIGN KEY([HangHoaID])
REFERENCES [dbo].[HangHoa] ([HangHoaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhoHang] CHECK CONSTRAINT [FK_KhoHang_HangHoa_HangHoaID]
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinTaiKhoan_TaiKhoan] FOREIGN KEY([TaiKhoanId])
REFERENCES [dbo].[TaiKhoan] ([TaiKhoanID])
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan] CHECK CONSTRAINT [FK_ThongTinTaiKhoan_TaiKhoan]
GO
ALTER TABLE [dbo].[TopSelling]  WITH CHECK ADD  CONSTRAINT [FK_TopSelling_HangHoa] FOREIGN KEY([HangHoaID])
REFERENCES [dbo].[HangHoa] ([HangHoaID])
GO
ALTER TABLE [dbo].[TopSelling] CHECK CONSTRAINT [FK_TopSelling_HangHoa]
GO
USE [master]
GO
ALTER DATABASE [EMarket] SET  READ_WRITE 
GO
