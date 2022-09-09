USE [Movies]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 09/09/2022 20:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 09/09/2022 20:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 09/09/2022 20:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[ReleaseDate] [date] NULL,
	[GenreId] [int] NULL,
	[Duration] [int] NULL,
	[DirectorId] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Directors] ON 
GO
INSERT [dbo].[Directors] ([Id], [Surname], [Name]) VALUES (1, N'Lumet', N'Sidney ')
GO
INSERT [dbo].[Directors] ([Id], [Surname], [Name]) VALUES (2, N'Shinkai', N'Makoto')
GO
INSERT [dbo].[Directors] ([Id], [Surname], [Name]) VALUES (3, N'Tarantino', N'Quentin')
GO
SET IDENTITY_INSERT [dbo].[Directors] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 
GO
INSERT [dbo].[Genres] ([Id], [Title]) VALUES (1, N'Crime')
GO
INSERT [dbo].[Genres] ([Id], [Title]) VALUES (2, N'Romance')
GO
INSERT [dbo].[Genres] ([Id], [Title]) VALUES (3, N'Drama')
GO
INSERT [dbo].[Genres] ([Id], [Title]) VALUES (4, N'Action')
GO
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 
GO
INSERT [dbo].[Movies] ([Id], [Title], [ReleaseDate], [GenreId], [Duration], [DirectorId]) VALUES (1, N'12 angry men', CAST(N'1957-04-01' AS Date), 1, 96, 1)
GO
INSERT [dbo].[Movies] ([Id], [Title], [ReleaseDate], [GenreId], [Duration], [DirectorId]) VALUES (2, N'5 centimeters per second', CAST(N'2007-03-01' AS Date), 2, 65, 2)
GO
INSERT [dbo].[Movies] ([Id], [Title], [ReleaseDate], [GenreId], [Duration], [DirectorId]) VALUES (3, N'Weathering with you', CAST(N'2020-01-01' AS Date), 2, 116, 2)
GO
INSERT [dbo].[Movies] ([Id], [Title], [ReleaseDate], [GenreId], [Duration], [DirectorId]) VALUES (4, N'Garden of words', CAST(N'2013-05-31' AS Date), 2, 46, 2)
GO
INSERT [dbo].[Movies] ([Id], [Title], [ReleaseDate], [GenreId], [Duration], [DirectorId]) VALUES (5, N'Pulp Fiction', CAST(N'1994-11-09' AS Date), 3, 165, 3)
GO
INSERT [dbo].[Movies] ([Id], [Title], [ReleaseDate], [GenreId], [Duration], [DirectorId]) VALUES (6, N'Django Unchained', CAST(N'2013-01-16' AS Date), 4, 165, 3)
GO
INSERT [dbo].[Movies] ([Id], [Title], [ReleaseDate], [GenreId], [Duration], [DirectorId]) VALUES (7, N'test', CAST(N'2022-01-01' AS Date), 1, 24, 1)
GO
INSERT [dbo].[Movies] ([Id], [Title], [ReleaseDate], [GenreId], [Duration], [DirectorId]) VALUES (8, N'test', CAST(N'2022-01-01' AS Date), 1, 24, 1)
GO
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
