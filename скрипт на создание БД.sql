USE [MolokoDB]
GO
/****** Объект:  Table [dbo].[Costomers]    Дата создания скрипта: 02.06.2026 14:19:26 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Costomers](
	[ID_costomer] [int] NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[INN] [nvarchar](20) NOT NULL,
	[Adress] [nvarchar](200) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Salesmon] [nvarchar](50) NOT NULL,
	[Bayer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Costomers] PRIMARY KEY CLUSTERED 
(
	[ID_costomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Materials]    Дата создания скрипта: 02.06.2026 14:19:26 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[ID_material] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Cost] [decimal](18, 2) NULL,
	[Unit] [nvarchar](50) NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[ID_material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Orders]    Дата создания скрипта: 02.06.2026 14:19:26 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[ID_costomers] [int] NULL,
	[ID_product] [int] NULL,
	[Quantity] [decimal](18, 5) NULL,
	[TotalCost] [decimal](18, 2) NULL,
	[OrderDate] [datetime] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Products]    Дата создания скрипта: 02.06.2026 14:19:26 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID_product] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Cost] [decimal](18, 2) NULL,
	[Unit] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Specifications]    Дата создания скрипта: 02.06.2026 14:19:26 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specifications](
	[ID_spec] [int] NOT NULL,
	[ID_product] [int] NULL,
	[ID_material] [int] NULL,
	[Quantity] [decimal](18, 5) NULL,
	[NormConsumption] [decimal](18, 5) NULL,
	[PriceAtMoment] [decimal](18, 5) NULL,
 CONSTRAINT [PK_Specifications] PRIMARY KEY CLUSTERED 
(
	[ID_spec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Costomers] ([ID_costomer], [CompanyName], [INN], [Adress], [Phone], [Salesmon], [Bayer]) VALUES (1, N'ООО "Поставка"', N'', N'г.Пятигорск', N'+79198634592', N'ИСТИНА', N'ИСТИНА')
GO
INSERT [dbo].[Costomers] ([ID_costomer], [CompanyName], [INN], [Adress], [Phone], [Salesmon], [Bayer]) VALUES (2, N'ООО "Кинотеатр Квант"', N'26320045123', N'г. Железноводск, ул. Мира, 123', N'+79884581555', N'ИСТИНА', N'ЛОЖЬ')
GO
INSERT [dbo].[Costomers] ([ID_costomer], [CompanyName], [INN], [Adress], [Phone], [Salesmon], [Bayer]) VALUES (3, N'ООО "Ромашка"', N'4140784214', N'г. Омск, ул. Строителей, 294', N'+79882584546', N'ЛОЖЬ', N'ИСТИНА')
GO
INSERT [dbo].[Costomers] ([ID_costomer], [CompanyName], [INN], [Adress], [Phone], [Salesmon], [Bayer]) VALUES (8, N'ООО "Новый JDTO"', N'26320045111', N'г. Железноводсу', N'+79884581555', N'ИСТИНА', N'ЛОЖЬ')
GO
INSERT [dbo].[Costomers] ([ID_costomer], [CompanyName], [INN], [Adress], [Phone], [Salesmon], [Bayer]) VALUES (9, N'ООО "Ипподром"', N'5874045632', N'г. Уфа, ул. Набережная,  37', N'+79627486389', N'ИСТИНА', N'ИСТИНА')
GO
INSERT [dbo].[Costomers] ([ID_costomer], [CompanyName], [INN], [Adress], [Phone], [Salesmon], [Bayer]) VALUES (10, N'ООО "Ассоль"', N'2629011278', N'г. Калуга, ул. Пушкина, 94', N'+79184572398', N'ЛОЖЬ', N'ИСТИНА')
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Costomers] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Costomers] ([ID_costomer])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Costomers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products] FOREIGN KEY([ID_product])
REFERENCES [dbo].[Products] ([ID_product])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products]
GO
ALTER TABLE [dbo].[Specifications]  WITH CHECK ADD  CONSTRAINT [FK_Specifications_Materials] FOREIGN KEY([ID_material])
REFERENCES [dbo].[Materials] ([ID_material])
GO
ALTER TABLE [dbo].[Specifications] CHECK CONSTRAINT [FK_Specifications_Materials]
GO
ALTER TABLE [dbo].[Specifications]  WITH CHECK ADD  CONSTRAINT [FK_Specifications_Products] FOREIGN KEY([ID_product])
REFERENCES [dbo].[Products] ([ID_product])
GO
ALTER TABLE [dbo].[Specifications] CHECK CONSTRAINT [FK_Specifications_Products]
GO
