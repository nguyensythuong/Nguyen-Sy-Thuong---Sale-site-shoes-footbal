USE [ProjectWeb1]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 19/3/2021 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](max) NULL,
	[passWord] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[phone] [nvarchar](10) NULL,
	[address] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 19/3/2021 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
	[price] [nvarchar](max) NULL,
	[productName] [nvarchar](max) NULL,
	[userName] [nvarchar](max) NULL,
	[quanity] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 19/3/2021 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InformationUser]    Script Date: 19/3/2021 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[phone] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 19/3/2021 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[MDH] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](max) NULL,
	[productName] [nvarchar](max) NULL,
	[totalMoney] [float] NULL,
	[phone] [nvarchar](10) NULL,
	[address] [nvarchar](max) NULL,
	[date] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 19/3/2021 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [float] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([userID], [userName], [passWord], [email], [isSell], [isAdmin], [phone], [address]) VALUES (1, N'Admin', N'admin', N'admin@gmail.com', 1, 1, N'0368128093', N'Tan An- Thanh Ha- Hai Duong')
INSERT [dbo].[Account] ([userID], [userName], [passWord], [email], [isSell], [isAdmin], [phone], [address]) VALUES (2, N'Thuong', N'thuong', N'thuong@gmai.com', 1, 0, N'0123142341', N'Thach That - Ha Noi')
INSERT [dbo].[Account] ([userID], [userName], [passWord], [email], [isSell], [isAdmin], [phone], [address]) VALUES (4, N'NSThuong', N'thuong', N'thuong@gmail.com', 1, 0, N'0368128093', N'Tan An- Thanh Ha -Hai Duong')
INSERT [dbo].[Account] ([userID], [userName], [passWord], [email], [isSell], [isAdmin], [phone], [address]) VALUES (8, N'chelsea2606', N'chelsea', N'nguyensythuong26062000@gmail.com', 1, 0, N'0368128093', N'Hoa Lac - Ha Noi')
INSERT [dbo].[Account] ([userID], [userName], [passWord], [email], [isSell], [isAdmin], [phone], [address]) VALUES (7, N'Tetkookie', N'tet', N'nguyensythuong26062000@gmail.com', 1, 0, N'0368128093', N'Tan An- Thanh Ha -Hai Duong')
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Cart] ([id], [image], [price], [productName], [userName], [quanity]) VALUES (5, N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/03514fb6-5988-44be-b9c8-996dd31c22e7/blazer-mid-77-vintage-shoe-nPJtzc.jpg', N'1', N'Nike Jr. Mercurial Vapor 13 Club MG', N'Admin', 1)
SET IDENTITY_INSERT [dbo].[InformationUser] ON 

INSERT [dbo].[InformationUser] ([id], [name], [email], [address], [phone]) VALUES (1, N'admin', N'admin@gmail.com', N'Dubai city- Dubai', N'0368128093')
INSERT [dbo].[InformationUser] ([id], [name], [email], [address], [phone]) VALUES (2, N'tet', N'tetkookie@gmail.com', N'Tan An- Thanh Ha- Hai Duong', N'368128093')
INSERT [dbo].[InformationUser] ([id], [name], [email], [address], [phone]) VALUES (3, N'tet', N'tetkookie@gmail.com', N'Tan An- Thanh Ha- Hai Duong', N'0368128093')
SET IDENTITY_INSERT [dbo].[InformationUser] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([MDH], [userName], [productName], [totalMoney], [phone], [address], [date]) VALUES (10, N'Thuong', N'Thuong', 502, N'0123142341', N'Thach That - Ha Noi', CAST(N'2021-03-14' AS Date))
INSERT [dbo].[Orders] ([MDH], [userName], [productName], [totalMoney], [phone], [address], [date]) VALUES (12, N'Thuong', N'Thuong', 601, N'0123142341', N'Thach That - Ha Noi', CAST(N'2021-03-16' AS Date))
INSERT [dbo].[Orders] ([MDH], [userName], [productName], [totalMoney], [phone], [address], [date]) VALUES (7, N'Thuong', N'Thuong', 1290, N'0123142341', N'Thach That - Ha Noi', CAST(N'2021-03-12' AS Date))
INSERT [dbo].[Orders] ([MDH], [userName], [productName], [totalMoney], [phone], [address], [date]) VALUES (8, N'Thuong', N'Thuong', 1002, N'0123142341', N'Thach That - Ha Noi', CAST(N'2021-03-14' AS Date))
INSERT [dbo].[Orders] ([MDH], [userName], [productName], [totalMoney], [phone], [address], [date]) VALUES (9, N'Thuong', N'Thuong', 1000, N'0123142341', N'Thach That - Ha Noi', CAST(N'2021-03-14' AS Date))
INSERT [dbo].[Orders] ([MDH], [userName], [productName], [totalMoney], [phone], [address], [date]) VALUES (11, N'Thuong', N'Thuong', 1501, N'0123142341', N'Thach That - Ha Noi', CAST(N'2021-03-15' AS Date))
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'Nike mercurial Vapor 13 Academy MDS MG', N'https://file.hstatic.net/1000061481/file/t2-nike-euphoria-pack-min_7761b4eda3b84876b9a3f0de56cb5424.jpg', 299, N'Multi-Ground Football Boot', N'artificial grass', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Nike mercurial Vapor 13 Academy MDS TF', N'https://file.hstatic.net/1000061481/file/5-mbappe-mercurial-bondy-nike-boots-min_8dd49779ea2548898efce2433d72cd17.jpg', 499, N'Artificial-Turf Football Shoe', N'nature', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Nike mercurial Vapor 7 Academy MDS MG', N'https://cf.shopee.vn/file/6aec2b944cafc51cf927cd07d623a044', 999, N'Aritificial-Turf Football Shoe', N'artificial grass', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Nike Jr. mercurial Vapor 13 Academy MDS MG', N'https://cf.shopee.vn/file/c18d639430ec3ce2154ac8ba73628527', 199, N'Younger/Older kids'' Multi-Ground Football', N'artificial grass', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Nike Jr. Mercurial Vapor 13 Club MG', N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/03514fb6-5988-44be-b9c8-996dd31c22e7/blazer-mid-77-vintage-shoe-nPJtzc.jpg', 99, N'Younger/Older kids'' Multi-Ground Football', N'nature', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Nike Mercurial Superfly 7 Elite ', N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/8c5056f2-abc1-48e8-b7c2-879573a164b5/mercurial-vapor-13-academy-mds-mg-multi-ground-football-boot-Qr8W84.jpg', 299, N'Custom Football Boot', N'artificial grass', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Adizero New Reign Cleats', N'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/6cbf163b98fc4f7bbf88ab1200315dce_9366/Adizero_New_Reign_Cleats_White_EH2724_01_standard.jpg', 199, N'Men''s Football', N'artificial grass', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Adizero X Anniversary Cleats', N'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/e62e4791a2fd40beb7ccab0c010f160e_9366/Adizero_Spark_MD_Cleats_Black_EH3468_01_standard.jpg', 129, N'Custom Football Boot', N'nature', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Adizero Spark MD Cleats', N'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/3b1dbc71dce7489681e8aaf200124670_9366/Adizero_X_Anniversary_Cleats_White_EH3472_01_standard.jpg', 199, N'Children FootBall', N'nature', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Adizero Cleats', N'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/2df772a67f4d4ff79bbaab0b0010dc81_9366/Adizero_New_Reign_Cleats_Red_EF8607_01_standard.jpg', 149, N'Multi-Ground Football Boot', N'artificial grass', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Adizero Primeknit SK Cleats', N'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/4481fa00c03d42dba772ab0c01159038_9366/Adizero_Cleats_Black_EH2707_01_standard.jpg', 199, N'Custom Football Boot', N'artificial grass', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Nike tiempo Legend 8 Academy TF', N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b226f036-93f6-4de9-981e-88303e0cb2a3/phantom-gt-elite-fg-football-boot-rXskN1.jpg', 169, N'Multi-Ground Football Boot', N'nature', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'Nike Mercuial Vapor 13 Pro Neymar Jr. FG', N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b226f036-93f6-4de9-981e-88303e0cb2a3/phantom-gt-elite-fg-football-boot-rXskN1.jpg', 499, N'Younger/Older kids'' Multi-Ground Football', N'artificial grass', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Nike Jr. Phantom GT Academy MG', N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/3b646992-f51e-45dc-a165-3ef3cc726666/jr-phantom-scorpion-academy-dynamic-fit-mg-older-younger-multi-ground-football-boot-Z5JVgh.jpg', 199, N'Custom Football Boot', N'artificial grass', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Nike Phantom GT Elite', N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/bf4ffee0-a084-4819-90cf-18a93022a20b/phantom-vision-2-club-dynamic-fit-mg-multi-ground-football-boot-0r9fNX.jpg', 199, N'Multi-Ground Football Boot', N'futsal', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Nike Phantom GT Elite ', N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/a35d9f50-a168-493b-9b70-ff8a18bebebe/phantom-gt-club-ic-indoor-court-football-shoe-T729Mt.jpg', 299, N'Younger/Older kids'' Multi-Ground Football', N'artificial grass', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1029, N'Adizero New Reign Cleats', N'https://file.hstatic.net/1000061481/file/t2-nike-euphoria-pack-min_7761b4eda3b84876b9a3f0de56cb5424.jpg', 99, N'Custom Football Boot', N'artificial grass', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'FUTURE Z 1.1 FG/AG Men''s', N'https://danhbashop.com/wp-content/uploads/2020/04/Puma-One-4-IL-Syn-TF-10493401.png', 1200, N'Multi-Ground Football Boot', N'nature', 3, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Nike Phantom GT Elite By Lautaro', N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/8c5056f2-abc1-48e8-b7c2-879573a164b5/mercurial-vapor-13-academy-mds-mg-multi-ground-football-boot-Qr8W84.jpg', 99, N'Custom Football Boot', N'artificial grass', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Nike Phantom Scorpion Academy Dynamic Fit TF', N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/7ec0190a-44ce-4cc6-9e78-351462d014fe/jr-mercurial-superfly-7-academy-cr7-safari-tf-younger-older-artificial-football-shoe-pT8FWs.jpg', 149, N'Younger/Older kids'' Multi-Ground Football', N'artificial grass', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'FUTURE Z 1.1 FG/AG Men''s', N'https://giaydabongtot.com/wp-content/uploads/2019/07/Giay-da-banh-Puma-future-4.1-moi-nhat-2019-5-1000x573.jpg', 199, N'Multi-Ground Football Boot', N'futsal', 3, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'FUTURE Z 1.1 MxSG Men''s', N'https://danhbashop.com/wp-content/uploads/2020/04/Puma-One-4-IL-Syn-TF-10493401.png', 299, N'Custom Football Boot', N'artificial grass', 3, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'FUTURE Z 1.1 NETFIT Fear FG/AG', N'https://file.hstatic.net/1000061481/file/t2-nike-euphoria-pack-min_7761b4eda3b84876b9a3f0de56cb5424.jpg', 99, N'Multi-Ground Football Boot', N'artificial grass', 3, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (22, N'FUTURE Z 1.1 FG/AG Men''s', N'https://danhbashop.com/wp-content/uploads/2020/04/Puma-One-4-IL-Syn-TF-10493401.png', 199, N'Custom Football Boot', N'futsal', 3, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'FUTURE 6.2 NETFIT MxSG', N'https://soccerstore.vn/wp-content/uploads/2020/08/106044-01-c.png', 199, N'Younger/Older kids'' Multi-Ground Football', N'artificial grass', 3, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (24, N'Nike mercurial Vapor 13 Academy MDS MG', N'https://danhbashop.com/wp-content/uploads/2020/04/Puma-One-4-IL-Syn-TF-10493401.png', 299, N'Multi-Ground Football Boot', N'futsal', 2, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'Adizero Cleats', N'https://file.hstatic.net/1000061481/file/t2-nike-euphoria-pack-min_7761b4eda3b84876b9a3f0de56cb5424.jpg', 299, N'Multi-Ground Football Boot', N'artificial grass', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1030, N'Adizero X Anniversary Cleats', N'https://danhbashop.com/wp-content/uploads/2020/04/Puma-One-4-IL-Syn-TF-10493401.png', 199, N'Custom Football Boot', N'artificial grass', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1032, N'FUTURE Z 1.1 FG/AG Men''s', N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/a35d9f50-a168-493b-9b70-ff8a18bebebe/phantom-gt-club-ic-indoor-court-football-shoe-T729Mt.jpg', 199, N'Younger/Older kids'' Multi-Ground Football', N'futsal', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1033, N'FUTURE Z 1.1 FG/AG Men''s', N'https://danhbashop.com/wp-content/uploads/2020/04/Puma-One-4-IL-Syn-TF-10493401.png', 199, N'Multi-Ground Football Boot', N'artificial grass', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1034, N'Puma Ultra 4.2 TF- Energy Blue/ Yellow Alert 106357-01', N'https://soccerstore.vn/wp-content/uploads/2021/03/106357-01.png', 99, N'Multi-Ground Football Boot', N'futsal', 4, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1031, N'Adizero Primeknit SK Cleats', N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/03514fb6-5988-44be-b9c8-996dd31c22e7/blazer-mid-77-vintage-shoe-nPJtzc.jpg', 199, N'Multi-Ground Football Boot', N'artificial grass', 1, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
