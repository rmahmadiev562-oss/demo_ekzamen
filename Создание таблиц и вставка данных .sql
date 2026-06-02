USE [Mol]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 14.05.2026 15:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID_customer] [int] NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[INN] [nvarchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](20) NULL,
	[Salesman] [nvarchar](50) NULL,
	[Buyer] [nvarchar](50) NULL,
 CONSTRAINT [PK__Customer__929E6C61C3A79D9E] PRIMARY KEY CLUSTERED 
(
	[ID_customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 14.05.2026 15:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[ID_material] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[Unit] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 14.05.2026 15:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[ID_customer] [int] NOT NULL,
	[ID_product] [int] NOT NULL,
	[Quantity] [decimal](18, 5) NOT NULL,
	[TotalCost] [decimal](18, 2) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 14.05.2026 15:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID_product] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[Unit] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specifications]    Script Date: 14.05.2026 15:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specifications](
	[ID_spec] [int] NOT NULL,
	[ID_product] [int] NOT NULL,
	[ID_material] [int] NOT NULL,
	[Quantity] [decimal](18, 5) NOT NULL,
	[NormConsumption] [decimal](18, 5) NOT NULL,
	[PriceAtMoment] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_spec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 14.05.2026 15:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](100) NOT NULL,
	[PasswordHash] [nvarchar](255) NOT NULL,
	[FullName] [nvarchar](255) NULL,
	[Role] [nvarchar](20) NOT NULL,
	[IsBlocked] [bit] NULL,
	[FailedAttempts] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customers] ([ID_customer], [CompanyName], [INN], [Address], [Phone], [Salesman], [Buyer]) VALUES (1, N'ООО "Поставка"', N'', N'г.Пятигорск', N'+79198634592', N'ИСТИНА', N'ИСТИНА')
GO
INSERT [dbo].[Customers] ([ID_customer], [CompanyName], [INN], [Address], [Phone], [Salesman], [Buyer]) VALUES (2, N'ООО "Кинотеатр Квант"', N'26320045123', N'г. Железноводск, ул. Мира, 123', N'+79884581555', N'ИСТИНА', N'ЛОЖЬ')
GO
INSERT [dbo].[Customers] ([ID_customer], [CompanyName], [INN], [Address], [Phone], [Salesman], [Buyer]) VALUES (3, N'ООО "Ромашка"', N'4140784214', N'г. Омск, ул. Строителей, 294', N'+79882584546', N'ЛОЖЬ', N'ИСТИНА')
GO
INSERT [dbo].[Customers] ([ID_customer], [CompanyName], [INN], [Address], [Phone], [Salesman], [Buyer]) VALUES (8, N'ООО "Новый JDTO"', N'26320045111', N'г. Железноводсу', N'+79884581555', N'ИСТИНА', N'ЛОЖЬ')
GO
INSERT [dbo].[Customers] ([ID_customer], [CompanyName], [INN], [Address], [Phone], [Salesman], [Buyer]) VALUES (9, N'ООО "Ипподром"', N'5874045632', N'г. Уфа, ул. Набережная,  37', N'+79627486389', N'ИСТИНА', N'ИСТИНА')
GO
INSERT [dbo].[Customers] ([ID_customer], [CompanyName], [INN], [Address], [Phone], [Salesman], [Buyer]) VALUES (10, N'ООО "Ассоль"', N'2629011278', N'г. Калуга, ул. Пушкина, 94', N'+79184572398', N'ЛОЖЬ', N'ИСТИНА')
GO
INSERT [dbo].[Materials] ([ID_material], [Name], [Cost], [Unit]) VALUES (1, N'Молоко сырое', CAST(60.00 AS Decimal(18, 2)), N'л')
GO
INSERT [dbo].[Materials] ([ID_material], [Name], [Cost], [Unit]) VALUES (2, N'Закваска', CAST(150.00 AS Decimal(18, 2)), N'кг')
GO
INSERT [dbo].[Materials] ([ID_material], [Name], [Cost], [Unit]) VALUES (3, N'Упаковка пластиковая', CAST(5.00 AS Decimal(18, 2)), N'шт')
GO
INSERT [dbo].[Materials] ([ID_material], [Name], [Cost], [Unit]) VALUES (4, N'Сахар', CAST(40.00 AS Decimal(18, 2)), N'кг')
GO
INSERT [dbo].[Orders] ([OrderID], [ID_customer], [ID_product], [Quantity], [TotalCost], [OrderDate]) VALUES (1, 1, 1, CAST(10.00000 AS Decimal(18, 5)), CAST(900.00 AS Decimal(18, 2)), CAST(N'2026-05-12T12:39:16.7583188' AS DateTime2))
GO
INSERT [dbo].[Orders] ([OrderID], [ID_customer], [ID_product], [Quantity], [TotalCost], [OrderDate]) VALUES (2, 2, 2, CAST(5.00000 AS Decimal(18, 5)), CAST(600.00 AS Decimal(18, 2)), CAST(N'2026-05-12T12:39:16.7583188' AS DateTime2))
GO
INSERT [dbo].[Orders] ([OrderID], [ID_customer], [ID_product], [Quantity], [TotalCost], [OrderDate]) VALUES (3, 1, 1, CAST(2.00000 AS Decimal(18, 5)), CAST(180.00 AS Decimal(18, 2)), CAST(N'2026-05-12T12:39:16.7583188' AS DateTime2))
GO
INSERT [dbo].[Orders] ([OrderID], [ID_customer], [ID_product], [Quantity], [TotalCost], [OrderDate]) VALUES (4, 1, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(50.00 AS Decimal(18, 2)), CAST(N'2026-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Products] ([ID_product], [Name], [Cost], [Unit]) VALUES (1, N'Кефир 1%', CAST(90.00 AS Decimal(18, 2)), N'л')
GO
INSERT [dbo].[Products] ([ID_product], [Name], [Cost], [Unit]) VALUES (2, N'Йогурт натуральный', CAST(120.00 AS Decimal(18, 2)), N'л')
GO
INSERT [dbo].[Products] ([ID_product], [Name], [Cost], [Unit]) VALUES (3, N'Сметана 20%', CAST(150.00 AS Decimal(18, 2)), N'кг')
GO
INSERT [dbo].[Specifications] ([ID_spec], [ID_product], [ID_material], [Quantity], [NormConsumption], [PriceAtMoment]) VALUES (1, 1, 1, CAST(1.00000 AS Decimal(18, 5)), CAST(1.05000 AS Decimal(18, 5)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Specifications] ([ID_spec], [ID_product], [ID_material], [Quantity], [NormConsumption], [PriceAtMoment]) VALUES (2, 1, 2, CAST(0.01000 AS Decimal(18, 5)), CAST(0.01500 AS Decimal(18, 5)), CAST(150.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Specifications] ([ID_spec], [ID_product], [ID_material], [Quantity], [NormConsumption], [PriceAtMoment]) VALUES (3, 1, 3, CAST(1.00000 AS Decimal(18, 5)), CAST(1.00000 AS Decimal(18, 5)), CAST(5.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Specifications] ([ID_spec], [ID_product], [ID_material], [Quantity], [NormConsumption], [PriceAtMoment]) VALUES (4, 2, 1, CAST(1.00000 AS Decimal(18, 5)), CAST(1.05000 AS Decimal(18, 5)), CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Specifications] ([ID_spec], [ID_product], [ID_material], [Quantity], [NormConsumption], [PriceAtMoment]) VALUES (5, 2, 2, CAST(0.02000 AS Decimal(18, 5)), CAST(0.02500 AS Decimal(18, 5)), CAST(150.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Specifications] ([ID_spec], [ID_product], [ID_material], [Quantity], [NormConsumption], [PriceAtMoment]) VALUES (6, 2, 4, CAST(0.10000 AS Decimal(18, 5)), CAST(0.11000 AS Decimal(18, 5)), CAST(40.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Specifications] ([ID_spec], [ID_product], [ID_material], [Quantity], [NormConsumption], [PriceAtMoment]) VALUES (7, 2, 3, CAST(1.00000 AS Decimal(18, 5)), CAST(1.00000 AS Decimal(18, 5)), CAST(5.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Login], [PasswordHash], [FullName], [Role], [IsBlocked], [FailedAttempts]) VALUES (1, N'admin', N'123', N'Администратор', N'Администратор', 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Login], [PasswordHash], [FullName], [Role], [IsBlocked], [FailedAttempts]) VALUES (2, N'user', N'123', N'Иванов Иван', N'Пользователь', 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__C490CCF511350B68]    Script Date: 14.05.2026 15:45:21 ******/
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [UQ__Customer__C490CCF511350B68] UNIQUE NONCLUSTERED 
(
	[INN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Material__737584F6C9C31EE3]    Script Date: 14.05.2026 15:45:21 ******/
ALTER TABLE [dbo].[Materials] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__5E55825B294EDC50]    Script Date: 14.05.2026 15:45:21 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (sysutcdatetime()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [FailedAttempts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ID_product])
REFERENCES [dbo].[Products] ([ID_product])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([ID_customer])
REFERENCES [dbo].[Customers] ([ID_customer])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Specifications]  WITH CHECK ADD  CONSTRAINT [FK_Spec_Material] FOREIGN KEY([ID_material])
REFERENCES [dbo].[Materials] ([ID_material])
GO
ALTER TABLE [dbo].[Specifications] CHECK CONSTRAINT [FK_Spec_Material]
GO
ALTER TABLE [dbo].[Specifications]  WITH CHECK ADD  CONSTRAINT [FK_Spec_Product] FOREIGN KEY([ID_product])
REFERENCES [dbo].[Products] ([ID_product])
GO
ALTER TABLE [dbo].[Specifications] CHECK CONSTRAINT [FK_Spec_Product]
GO
