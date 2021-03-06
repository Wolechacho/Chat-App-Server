USE [ChatDB]
GO
/****** Object:  Table [dbo].[ConnectionDetails]    Script Date: 5/25/2019 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConnectionDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ConnectionId] [nvarchar](max) NOT NULL,
	[GroupId] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[OnlineStatus] [bit] NOT NULL,
 CONSTRAINT [PK_ConnectionDetails_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Group]    Script Date: 5/25/2019 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupId] [nvarchar](100) NOT NULL,
	[GroupName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 5/25/2019 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_User_1] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ConnectionDetails] ON 

INSERT [dbo].[ConnectionDetails] ([Id], [ConnectionId], [GroupId], [UserName], [OnlineStatus]) VALUES (1, N'GqUXDR7XXXfQzAtXU4Ti7A', N'Football', N'tosin', 0)
INSERT [dbo].[ConnectionDetails] ([Id], [ConnectionId], [GroupId], [UserName], [OnlineStatus]) VALUES (2, N'LijIOSsrF-Gx0r7hLrPBrg', N'Football', N'wole', 0)
INSERT [dbo].[ConnectionDetails] ([Id], [ConnectionId], [GroupId], [UserName], [OnlineStatus]) VALUES (20014, N'g3x9xtrT6q_VWZFqECYyug', N'Football', N'biola', 0)
INSERT [dbo].[ConnectionDetails] ([Id], [ConnectionId], [GroupId], [UserName], [OnlineStatus]) VALUES (30014, N'uu-AmzqAwID11jAyDZhb2Q', N'Football', N'victor', 0)
INSERT [dbo].[ConnectionDetails] ([Id], [ConnectionId], [GroupId], [UserName], [OnlineStatus]) VALUES (30015, N'YD6GdMjvf4s2aDpmqVBTaQ', N'Football', N'ajayi', 0)
SET IDENTITY_INSERT [dbo].[ConnectionDetails] OFF
INSERT [dbo].[Group] ([GroupId], [GroupName]) VALUES (N'1', N'Football')
INSERT [dbo].[Group] ([GroupId], [GroupName]) VALUES (N'2', N'Politics')
INSERT [dbo].[Group] ([GroupId], [GroupName]) VALUES (N'3', N'Lifestyle')
INSERT [dbo].[Group] ([GroupId], [GroupName]) VALUES (N'4', N'Education')
SET IDENTITY_INSERT [dbo].[UserLogin] ON 

INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (10010, N'ajayi', N'ajayi')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (10005, N'biola', N'biola')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (10006, N'fandago', N'fandago')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (10009, N'femo', N'femo')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (10007, N'femzy', N'femzy')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (10003, N'modupe', N'modupe')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (7, N'seun', N'tobi')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (10004, N'taiwo', N'taiwo')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (10002, N'tope', N'tope')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (10011, N'tosin', N'tosin')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (2, N'tunde', N'ednut')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (10008, N'victor', N'victor')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password]) VALUES (1, N'wole', N'wole')
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
ALTER TABLE [dbo].[ConnectionDetails]  WITH CHECK ADD  CONSTRAINT [FK_ConnectionDetails_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[UserLogin] ([UserName])
GO
ALTER TABLE [dbo].[ConnectionDetails] CHECK CONSTRAINT [FK_ConnectionDetails_User]
GO
