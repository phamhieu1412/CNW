USE [master]
GO
/****** Object:  Database [FastFood]    Script Date: 14-Mar-20 9:31:06 PM ******/
CREATE DATABASE [FastFood]
 CONTAINMENT = NONE
 ON  PRIMARY 

ALTER DATABASE [FastFood] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FastFood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FastFood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FastFood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FastFood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FastFood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FastFood] SET ARITHABORT OFF 
GO
ALTER DATABASE [FastFood] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FastFood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FastFood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FastFood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FastFood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FastFood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FastFood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FastFood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FastFood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FastFood] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FastFood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FastFood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FastFood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FastFood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FastFood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FastFood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FastFood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FastFood] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FastFood] SET  MULTI_USER 
GO
ALTER DATABASE [FastFood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FastFood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FastFood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FastFood] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FastFood] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FastFood', N'ON'
GO
USE [FastFood]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 14-Mar-20 9:31:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog](
	[MaBlog] [bigint] IDENTITY(1,1) NOT NULL,
	[TenBlog] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[MaND] [bigint] NULL,
	[urlImg] [nvarchar](50) NULL,
	[ThoiGian] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 14-Mar-20 9:31:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[SoLuong] [int] NOT NULL,
	[SoHD] [bigint] NOT NULL,
	[MaMon] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC,
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 14-Mar-20 9:31:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiaChi](
	[MaDC] [bigint] IDENTITY(1,1) NOT NULL,
	[DiaChiCuThe] [nvarchar](20) NOT NULL,
	[Phuong] [nvarchar](20) NOT NULL,
	[Quan] [nvarchar](20) NOT NULL,
	[ThanhPho] [nvarchar](20) NOT NULL,
	[MaND] [bigint] NULL,
	[SDT] [char](10) NULL,
	[HoTen] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 14-Mar-20 9:31:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[SoHD] [bigint] IDENTITY(1,1) NOT NULL,
	[MaND] [bigint] NOT NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[ThoiGianDat] [datetime] NOT NULL,
	[NguoiXacNhan] [bigint] NULL,
	[ThoiGianLap] [datetime] NULL,
	[MaDC] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiMon]    Script Date: 14-Mar-20 9:31:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMon](
	[MaLM] [bigint] IDENTITY(1,1) NOT NULL,
	[TenLM] [nvarchar](50) NULL,
	[urlIcon] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mon]    Script Date: 14-Mar-20 9:31:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mon](
	[MaMon] [bigint] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](30) NULL,
	[UrlImg] [nvarchar](80) NULL,
	[MaLM] [bigint] NULL,
	[MoTaNgan] [nvarchar](700) NULL,
	[Gia] [decimal](18, 0) NOT NULL,
	[MoTaDai] [nvarchar](4000) NULL,
	[DVT] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 14-Mar-20 9:31:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [bigint] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
	[isAdmin] [bit] NOT NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[blog] ON 

INSERT [dbo].[blog] ([MaBlog], [TenBlog], [NoiDung], [MaND], [urlImg], [ThoiGian]) VALUES (1, N'Blog1', N'Nguyên liệu để làm lớp phủ trên bánh pizza gồm có: 
-Bột ngũ cốc (hoặc thay bằng bột mì): 1 chén (bột này giúp giữ bánh không bị trượt khỏi đá nướng) 
-Phô mai Mozzarella: 15gr 
-Phô mai Parmesan: 15gr 
-Phô mai Feta: 15gr 
-Xúc xích Pepperoni: 15gr 
-Xúc xích Ý: 15gr 
-Ớt chuông xanh: 1 trái 
-Nấm rơm: 100gr 
-Hành tây: 1/2 củ 
-Sốt cà chua: 10ml 
-Dầu olive: 1 muỗng cafe 
-Tương ớt 9', 1, N'~/Content/img/pizza/pizza1.PNG', CAST(N'1905-07-11 00:00:00.000' AS DateTime))
INSERT [dbo].[blog] ([MaBlog], [TenBlog], [NoiDung], [MaND], [urlImg], [ThoiGian]) VALUES (2, N'Blog1', N'Nếu trời lạnh, bạn có thể dùng lò nướng để ủ bánh. Cách làm như sau: bật lò khoảng 20 phút với nhiệt độ là 150○F (tương đương 65○C). Sau 20 phút, tắt lò, để lò nguội dần đến khi còn ấm thì cho bột vào ủ, khi thấy bột nở to gấp đôi là được. Nếu bạn muốn để dành bột cho lần sau, khi bột nở to, bạn lấy phần bột muốn để lại cho vào chén và bọc kín bằng màng bọc thực phẩm cho vào ngăn đá tủ lạnh. Thời gian bảo quản có thể lên đến 2 tuần.', 1, N'~/Content/img/pizza/pizza1.PNG', CAST(N'1905-07-11 00:00:00.000' AS DateTime))
INSERT [dbo].[blog] ([MaBlog], [TenBlog], [NoiDung], [MaND], [urlImg], [ThoiGian]) VALUES (3, N'Blog1', N'Nguyên liệu để làm lớp phủ trên bánh pizza gồm có: 
-Bột ngũ cốc (hoặc thay bằng bột mì): 1 chén (bột này giúp giữ bánh không bị trượt khỏi đá nướng) 
-Phô mai Mozzarella: 15gr 
-Phô mai Parmesan: 15gr 
-Phô mai Feta: 15gr 
-Xúc xích Pepperoni: 15gr 
-Xúc xích Ý: 15gr 
-Ớt chuông xanh: 1 trái 
-Nấm rơm: 100gr 
-Hành tây: 1/2 củ 
-Sốt cà chua: 10ml 
-Dầu olive: 1 muỗng cafe 
-Tương ớt 9', 1, N'~/Content/img/pizza/pizza1.PNG', CAST(N'1905-07-11 00:00:00.000' AS DateTime))
INSERT [dbo].[blog] ([MaBlog], [TenBlog], [NoiDung], [MaND], [urlImg], [ThoiGian]) VALUES (4, N'Blog1', N'Nếu trời lạnh, bạn có thể dùng lò nướng để ủ bánh. Cách làm như sau: bật lò khoảng 20 phút với nhiệt độ là 150○F (tương đương 65○C). Sau 20 phút, tắt lò, để lò nguội dần đến khi còn ấm thì cho bột vào ủ, khi thấy bột nở to gấp đôi là được. Nếu bạn muốn để dành bột cho lần sau, khi bột nở to, bạn lấy phần bột muốn để lại cho vào chén và bọc kín bằng màng bọc thực phẩm cho vào ngăn đá tủ lạnh. Thời gian bảo quản có thể lên đến 2 tuần.', 1, N'~/Content/img/pizza/pizza1.PNG', CAST(N'1905-07-11 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[blog] OFF
SET IDENTITY_INSERT [dbo].[DiaChi] ON 

INSERT [dbo].[DiaChi] ([MaDC], [DiaChiCuThe], [Phuong], [Quan], [ThanhPho], [MaND], [SDT], [HoTen]) VALUES (1, N'170 Hoàng Quốc Việt ', N'Nghĩa Đô', N'Cầu Giấy', N'Hà Nội', 1, N'0123456789', N'Hoài')
INSERT [dbo].[DiaChi] ([MaDC], [DiaChiCuThe], [Phuong], [Quan], [ThanhPho], [MaND], [SDT], [HoTen]) VALUES (2, N'28 Trần Cung', N'Cổ Nhuế', N'Bắc Từ Liêm', N'Hà Nội', 2, N'0123456789', N'Hiếu')
INSERT [dbo].[DiaChi] ([MaDC], [DiaChiCuThe], [Phuong], [Quan], [ThanhPho], [MaND], [SDT], [HoTen]) VALUES (3, N'158 Hồ Tùng Mậu', N'Cầu diễn', N'Nam Từ Liêm', N'Hà Nội', 3, N'0123456789', N'Lực')
INSERT [dbo].[DiaChi] ([MaDC], [DiaChiCuThe], [Phuong], [Quan], [ThanhPho], [MaND], [SDT], [HoTen]) VALUES (4, N'198 Kim Mã', N'Kim Mã', N'Ba Đình', N'Hà Nội', 2, N'0123456789', N'Nam')
INSERT [dbo].[DiaChi] ([MaDC], [DiaChiCuThe], [Phuong], [Quan], [ThanhPho], [MaND], [SDT], [HoTen]) VALUES (5, N'136 Xuân Thủy', N'Quan Hoa', N'Cầu Giấy', N'Hà Nội', 2, N'0123456789', N'Tuyên')
INSERT [dbo].[DiaChi] ([MaDC], [DiaChiCuThe], [Phuong], [Quan], [ThanhPho], [MaND], [SDT], [HoTen]) VALUES (6, N'170 Hoàng Quốc Việt ', N'Nghĩa Đô', N'Cầu Giấy', N'Hà Nội', 1, N'0123456789', N'Hoa')
INSERT [dbo].[DiaChi] ([MaDC], [DiaChiCuThe], [Phuong], [Quan], [ThanhPho], [MaND], [SDT], [HoTen]) VALUES (7, N'28 Trần Cung', N'Cổ Nhuế', N'Bắc Từ Liêm', N'Hà Nội', 2, N'0123456789', N'Huyền')
INSERT [dbo].[DiaChi] ([MaDC], [DiaChiCuThe], [Phuong], [Quan], [ThanhPho], [MaND], [SDT], [HoTen]) VALUES (8, N'158 Hồ Tùng Mậu', N'Cầu diễn', N'Nam Từ Liêm', N'Hà Nội', 3, N'0123456789', N'Trang')
INSERT [dbo].[DiaChi] ([MaDC], [DiaChiCuThe], [Phuong], [Quan], [ThanhPho], [MaND], [SDT], [HoTen]) VALUES (9, N'198 Kim Mã', N'Kim Mã', N'Ba Đình', N'Hà Nội', 1, N'0123456789', N'Hoài')
INSERT [dbo].[DiaChi] ([MaDC], [DiaChiCuThe], [Phuong], [Quan], [ThanhPho], [MaND], [SDT], [HoTen]) VALUES (10, N'136 Xuân Thủy', N'Quan Hoa', N'Cầu Giấy', N'Hà Nội', 3, N'0123456789', N'Tuyên')
SET IDENTITY_INSERT [dbo].[DiaChi] OFF
SET IDENTITY_INSERT [dbo].[LoaiMon] ON 

INSERT [dbo].[LoaiMon] ([MaLM], [TenLM], [urlIcon]) VALUES (1, N'Pizza', N'/ImgIcon/icon-pizza.png')
INSERT [dbo].[LoaiMon] ([MaLM], [TenLM], [urlIcon]) VALUES (2, N'Pasta', N'/ImgIcon/icon-my.png')
INSERT [dbo].[LoaiMon] ([MaLM], [TenLM], [urlIcon]) VALUES (3, N'Đồ uống', N'/ImgIcon/icon-drink.png')
INSERT [dbo].[LoaiMon] ([MaLM], [TenLM], [urlIcon]) VALUES (4, N'Suờn BBQ', N'/ImgIcon/icon-suon.png')
INSERT [dbo].[LoaiMon] ([MaLM], [TenLM], [urlIcon]) VALUES (9, N'Salad', N'/ImgIcon/icon-salad.png')
SET IDENTITY_INSERT [dbo].[LoaiMon] OFF
SET IDENTITY_INSERT [dbo].[Mon] ON 

INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (1, N'BBQ Chicken Pizza', N'~/Content/images/Pizza/BBQ-Chicken-Pizza.jpg', 1, N'Giải nhiệt mùa hè, đồ uống không thể thiếu trong mọi bữa ăn', CAST(10000 AS Decimal(18, 0)), N'Coca-Cola thêm cà phê nguyên chất, trong 100ml dung tích giảm 50% lượng đường (tương đương với 5g đường) so với sản phẩm Coca-Cola nguyên bản và bổ sung 30% caffein (tương đương với 13mg caffein). Sản phẩm một lần nữa khẳng định cam kết của mình trong việc không ngừng đem đến cho người tiêu dùng những sản phẩm chất lượng cao, phục vụ nhu cầu, khẩu vị, chế độ dinh dưỡng và phong cách sống đa dạng của người dùng.', N'Lon')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (2, N'Chorizo Pizza', N'~/Content/images/Pizza/Chorizo-Pizza.jpg', 1, N'Pizza hải sản là một món ăn độc đáo mang phong cách ẩm thực châu Âu. Bánh pizza gồm hai phần nhân bánh và vỏ bánh. Tùy vào sự kết hợp các nguyên liệu làm nhân bánh khác nhau mà tạo nên hương vị đặc trưng riêng cho mỗi loại bánh', CAST(135000 AS Decimal(18, 0)), N'Pizza ngon là có loại bánh có vỏ bánh dẹt, được chế biến từ bột mì, nấm men, nước ủ trong vòng nhiều tiếng đồng hồ. Nhân là các loại hải sản tươi ngon như tôm, mực thêm nấm, cà chua, phô mai…Tất cả được hòa quyện với nhau mang đến hương vị cực kỳ ấn tượng. Tuy có nhiều bước thực hiện, nhưng các bước lại không quá phức tạp và rất dễ hiểu cho những ai mới bắt đầu làm loại bánh này. Có khá nhiều loại pizza khác nhau và rất phổ biến trên thị trường như pizza hải sản, pizza gà, thịt bò, xúc xích, rau củ… Mỗi cuối tuần, nếu bạn đã chán phải ra tiệm hay nấu những món ăn quen thuộc thì hãy thử với Pizza hải sản để thay đổi thực đơn cho cả nhà. Công thức chuẩn ở ngay phía dưới, bắt đầu trổ tài ngay trong gian bếp nhà bạn nhé!', N'Đĩa')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (3, N'Hawaii Pizza', N'~/Content/images/Pizza/Hawaii-Pizza.jpg', 1, N'Ngày nay, Pizza Ý không chỉ dừng chân ở trên đất nước của họ mà còn đi khắp thế giới trong đó có Việt Nam. Hãy cùng thử làm bánh Pizza Ý để xem nó có giống bánh ngoài cửa hàng không nhé!', CAST(125000 AS Decimal(18, 0)), N'Bánh pizza thập cẩm với nguyên liệu quan trọng là trứng bổ sung protein và dinh dưỡng tốt cho sức khoẻ, ngoài ra gồm các nguyên liệu thịt và rau củ khác dinh dưỡng không kém. Hơn nữa còn có thể làm mới thực đơn bữa trưa cho gia đình. Còn chờ gì nữa đây sẽ là gợi ý hay cho bạn xuống bếp thực hiện món ngon đơn giản đấy', N'Chiếc')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (4, N'Meat Lovers Pizza', N'~/Content/images/Pizza/Meat-Lovers-Pizza.jpg', 1, N'Khác với những chiếc bánh pizza truyền thống, 1 chút sáng tạo cùng với những loại quả mình yêu thích bạn đã có bánh pizza với sự kết hợp giữa bánh và các loại quả đó', CAST(100000 AS Decimal(18, 0)), N'Tương tự với cách làm bánh mì, cách làm bánh pizza chỉ mất công nhất phần nhào và ủ bột. Các thao tác còn lại quá dễ dàng và nhanh chóng để bạn sớm sở hữu một chiếc bánh pizza hoa quả tự tay làm lấy rất ngon! Khi đã quen nhào bột rồi bạn sẽ thấy vui tay và hiểu được sự "bõ công" của mình sẽ được bù đắp bằng mẻ bánh ngon tinh tế. Ngày hè, bạn gần như chỉ muốn ăn hoa quả thay cho các đồ ăn khác. Pizza hoa quả sẽ chiều lòng bạn về sự hấp dẫn đủ hương vị trái cây đặc trưng cho pizza ngọt như táo, chuối, cà chua,... cùng với hương vị phomai Mozzarella không thể thiếu trong bánh pizza nói chung!

', N'Chiếc')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (5, N'Mexican Pizza', N'~/Content/images/Pizza/Mexican-Pizza.jpg', 1, N'Nếu bạn là một người yêu thích phong cách cũng như hương vị ẩm thực phương Tây, chắc hẳn Mì Ý (Spagetti) là món không còn xa lạ nữa, thế nhưng khi Mì Ý được thêm chút biến tấu tinh tế dành riêng cho khẩu vị người Việt, thì chắc chắn chỉ có Double-B mới là nơi mà bạn tìm thấy sự hòa quyện tuyệt vời giữa hương vị thuần túy và sự phá cách độc đáo', CAST(40000 AS Decimal(18, 0)), N'Món Mì Ý Double B cũng là tên riêng của quán. Đây là món chiếm trọn tình cảm của thực khách khi đến với Double-B. Nét đặc trưng của món này béo ít, có vị sốt kem bò bằm, sốt kem riêng quán tự chế.

Với kinh nghiệm nhiều năm, Double-B luôn thấu hiểu và không ngừng phát triển đa dạng menu nhằm mang món mì Ý đến gần hơn với người Việt, đồng thời sáng tạo công thức chế biến để mì Ý được “Việt hóa”, trở nên gần gũi và hợp khẩu vị hơn. Double-B đã rất tâm lý khi dành hẳn 5 combo hoành tráng trong thực đơn với giá giảm từ 10-15% cho tất cả các ngày trong tuần, đây cũng là một trong những nét đặc biệt khiến Double-B luôn ghi điểm trong lòng các fan “ruột”.

', N'Đĩa')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (6, N'Salami Pizza', N'~/Content/images/Pizza/Salami-Pizza.jpg', 1, N'Bánh burger thịt cừu với gia vị Ấn độ và nước sốt ya-ua vị bạc hà', CAST(350000 AS Decimal(18, 0)), N'Phần nhân bánh được chế biến từ thịt cừu chăn nuôi ngoài đồng, loại thịt nạc vai chứa 2/3 lượng mỡ ít hơn thịt cừu nuôi siêu thịt. Để thịt ngon hơn thì nên xay nó nhỏ hơn trước khi chế biến. Thịt sau khi xay được tẩm ướp vadouvan, loại gia vị hỗn hợp của Ấn Độ được sử dụng nhiều trong việc tẩm ướp thịt nướng. Gia vị này kết hợp từ bột cà ri, thêm tỏi, hành khô.Cuối cùng, một ít nước sốt ya-ua vị bạc hà, ít vị ngọt của ớt đỏ nướng và vị đắng của radicchio ở xung quanh sẽ đem đến một bánh burger đầy mùi vị.', N'Chiếc')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (7, N'Smoke Chicken Pizza', N'~/Content/images/Pizza/Smoke-Chicken-Pizza.jpg', 1, N'Giải nhiệt mùa hè, đồ uống không thể thiếu trong mọi bữa ăn', CAST(10000 AS Decimal(18, 0)), N'Coca-Cola thêm cà phê nguyên chất, trong 100ml dung tích giảm 50% lượng đường (tương đương với 5g đường) so với sản phẩm Coca-Cola nguyên bản và bổ sung 30% caffein (tương đương với 13mg caffein). Sản phẩm một lần nữa khẳng định cam kết của mình trong việc không ngừng đem đến cho người tiêu dùng những sản phẩm chất lượng cao, phục vụ nhu cầu, khẩu vị, chế độ dinh dưỡng và phong cách sống đa dạng của người dùng.', N'Lon')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (8, N'Veggie Pizza', N'~/Content/images/Pizza/Veggie-Pizza.jpg', 1, N'Pizza hải sản là một món ăn độc đáo mang phong cách ẩm thực châu Âu. Bánh pizza gồm hai phần nhân bánh và vỏ bánh. Tùy vào sự kết hợp các nguyên liệu làm nhân bánh khác nhau mà tạo nên hương vị đặc trưng riêng cho mỗi loại bánh', CAST(125000 AS Decimal(18, 0)), N'Pizza ngon là có loại bánh có vỏ bánh dẹt, được chế biến từ bột mì, nấm men, nước ủ trong vòng nhiều tiếng đồng hồ. Nhân là các loại hải sản tươi ngon như tôm, mực thêm nấm, cà chua, phô mai…
Tất cả được hòa quyện với nhau mang đến hương vị cực kỳ ấn tượng. Tuy có nhiều bước thực hiện, nhưng các bước lại không quá phức tạp và rất dễ hiểu cho những ai mới bắt đầu làm loại bánh này. Có khá nhiều loại pizza khác nhau và rất phổ biến trên thị trường như pizza hải sản, pizza gà, thịt bò, xúc xích, rau củ… Mỗi cuối tuần, nếu bạn đã chán phải ra tiệm hay nấu những món ăn quen thuộc thì hãy thử với Pizza hải sản để thay đổi thực đơn cho cả nhà. Công thức chuẩn ở ngay phía dưới, bắt đầu trổ tài ngay trong gian bếp nhà bạn nhé!', N'Đĩa')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (10, N'Sườn nướng BBQ', N'~/Content/images/Suon/Sườn-nướng-BBQ.png', 4, N'Khác với những chiếc bánh pizza truyền thống, 1 chút sáng tạo cùng với những loại quả mình yêu thích bạn đã có bánh pizza với sự kết hợp giữa bánh và các loại quả đó', CAST(100000 AS Decimal(18, 0)), N'Tương tự với cách làm bánh mì, cách làm bánh pizza chỉ mất công nhất phần nhào và ủ bột. Các thao tác còn lại quá dễ dàng và nhanh chóng để bạn sớm sở hữu một chiếc bánh pizza hoa quả tự tay làm lấy rất ngon! Khi đã quen nhào bột rồi bạn sẽ thấy vui tay và hiểu được sự "bõ công" của mình sẽ được bù đắp bằng mẻ bánh ngon tinh tế. Ngày hè, bạn gần như chỉ muốn ăn hoa quả thay cho các đồ ăn khác. Pizza hoa quả sẽ chiều lòng bạn về sự hấp dẫn đủ hương vị trái cây đặc trưng cho pizza ngọt như táo, chuối, cà chua,... cùng với hương vị phomai Mozzarella không thể thiếu trong bánh pizza nói chung!

', N'Chiếc')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (11, N'Mì Bolognese', N'~/Content/images/Pasta/Spaghetti-Bolognese.jpg', 2, N'Nếu bạn là một người yêu thích phong cách cũng như hương vị ẩm thực phương Tây, chắc hẳn Mì Ý (Spagetti) là món không còn xa lạ nữa, thế nhưng khi Mì Ý được thêm chút biến tấu tinh tế dành riêng cho khẩu vị người Việt, thì chắc chắn chỉ có Double-B mới là nơi mà bạn tìm thấy sự hòa quyện tuyệt vời giữa hương vị thuần túy và sự phá cách độc đáo', CAST(40000 AS Decimal(18, 0)), N'Món Mì Ý Double B cũng là tên riêng của quán. Đây là món chiếm trọn tình cảm của thực khách khi đến với Double-B. Nét đặc trưng của món này béo ít, có vị sốt kem bò bằm, sốt kem riêng quán tự chế.

Với kinh nghiệm nhiều năm, Double-B luôn thấu hiểu và không ngừng phát triển đa dạng menu nhằm mang món mì Ý đến gần hơn với người Việt, đồng thời sáng tạo công thức chế biến để mì Ý được “Việt hóa”, trở nên gần gũi và hợp khẩu vị hơn. Double-B đã rất tâm lý khi dành hẳn 5 combo hoành tráng trong thực đơn với giá giảm từ 10-15% cho tất cả các ngày trong tuần, đây cũng là một trong những nét đặc biệt khiến Double-B luôn ghi điểm trong lòng các fan “ruột”.

', N'Đĩa')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (12, N'Mì Carbonara ', N'~/Content/images/Pasta/Spaghetti-Carbonara.jpg', 2, N'Bánh burger thịt cừu với gia vị Ấn độ và nước sốt ya-ua vị bạc hà', CAST(350000 AS Decimal(18, 0)), N'Phần nhân bánh được chế biến từ thịt cừu chăn nuôi ngoài đồng, loại thịt nạc vai chứa 2/3 lượng mỡ ít hơn thịt cừu nuôi siêu thịt. Để thịt ngon hơn thì nên xay nó nhỏ hơn trước khi chế biến. Thịt sau khi xay được tẩm ướp vadouvan, loại gia vị hỗn hợp của Ấn Độ được sử dụng nhiều trong việc tẩm ướp thịt nướng. Gia vị này kết hợp từ bột cà ri, thêm tỏi, hành khô.Cuối cùng, một ít nước sốt ya-ua vị bạc hà, ít vị ngọt của ớt đỏ nướng và vị đắng của radicchio ở xung quanh sẽ đem đến một bánh burger đầy mùi vị.', N'Chiếc')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (20, N'Mì Seafood ', N'~/Content/images/Pasta/Spaghetti-Seafood.jpg', 2, NULL, CAST(35000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (22, N'CocaCola 1,5l', N'~/Content/images/Drink/Coca-Cola-1.5l.jpg', 3, NULL, CAST(25000 AS Decimal(18, 0)), NULL, N'Chai')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (23, N'CocaCola 390ml', N'~/Content/images/Drink/Coca-Cola-390ml.jpg', 3, NULL, CAST(15000 AS Decimal(18, 0)), NULL, N'Chai')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (24, N'Garden Salad', N'~/Content/images/Salad/Garden-Salad.jpg', 9, NULL, CAST(50000 AS Decimal(18, 0)), NULL, N'Đĩa')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (25, N'Greek Salad', N'~/Content/images/Salad/Greek-Salad.jpg', 9, NULL, CAST(50000 AS Decimal(18, 0)), NULL, N'Đĩa')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (26, N'Nicoise Salad', N'~/Content/images/Salad/Nicoise-Salad.jpg', 9, NULL, CAST(50000 AS Decimal(18, 0)), NULL, N'Đĩa')
INSERT [dbo].[Mon] ([MaMon], [TenMon], [UrlImg], [MaLM], [MoTaNgan], [Gia], [MoTaDai], [DVT]) VALUES (27, N'Seasonal Salad', N'~Content/images/Salad/Seasonal-salad.jpg', NULL, NULL, CAST(50000 AS Decimal(18, 0)), NULL, N'Đĩa')
SET IDENTITY_INSERT [dbo].[Mon] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaND], [HoTen], [SDT], [MatKhau], [isAdmin], [NgaySinh]) VALUES (1, N'Phạm Trung Hiếu', N'0964250559', N'matkhau1', 1, CAST(N'1999-12-14' AS Date))
INSERT [dbo].[NguoiDung] ([MaND], [HoTen], [SDT], [MatKhau], [isAdmin], [NgaySinh]) VALUES (2, N'Hoài', N'0357948877', N'030997', 1, CAST(N'1999-12-01' AS Date))
INSERT [dbo].[NguoiDung] ([MaND], [HoTen], [SDT], [MatKhau], [isAdmin], [NgaySinh]) VALUES (3, N'Anh C', N'0367894425', N'abc1234', 0, CAST(N'1998-01-01' AS Date))
INSERT [dbo].[NguoiDung] ([MaND], [HoTen], [SDT], [MatKhau], [isAdmin], [NgaySinh]) VALUES (19, N'hieunq1111', N'0948124635', N'123456h', 0, CAST(N'2020-02-14' AS Date))
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
ALTER TABLE [dbo].[blog]  WITH CHECK ADD FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[Mon] ([MaMon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([SoHD])
REFERENCES [dbo].[HoaDon] ([SoHD])
GO
ALTER TABLE [dbo].[DiaChi]  WITH CHECK ADD FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DiaChi] FOREIGN KEY([MaDC])
REFERENCES [dbo].[DiaChi] ([MaDC])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DiaChi]
GO
ALTER TABLE [dbo].[Mon]  WITH CHECK ADD FOREIGN KEY([MaLM])
REFERENCES [dbo].[LoaiMon] ([MaLM])
GO
USE [master]
GO
ALTER DATABASE [FastFood] SET  READ_WRITE 
GO
