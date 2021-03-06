USE [master]
GO
/****** Object:  Database [SendMyMessage]    Script Date: 07/12/2015 5:42:42 p. m. ******/
CREATE DATABASE [SendMyMessage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SendMyMessage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2012\MSSQL\DATA\SendMyMessage.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SendMyMessage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2012\MSSQL\DATA\SendMyMessage_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SendMyMessage] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SendMyMessage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SendMyMessage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SendMyMessage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SendMyMessage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SendMyMessage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SendMyMessage] SET ARITHABORT OFF 
GO
ALTER DATABASE [SendMyMessage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SendMyMessage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SendMyMessage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SendMyMessage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SendMyMessage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SendMyMessage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SendMyMessage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SendMyMessage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SendMyMessage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SendMyMessage] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SendMyMessage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SendMyMessage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SendMyMessage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SendMyMessage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SendMyMessage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SendMyMessage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SendMyMessage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SendMyMessage] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SendMyMessage] SET  MULTI_USER 
GO
ALTER DATABASE [SendMyMessage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SendMyMessage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SendMyMessage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SendMyMessage] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SendMyMessage] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SendMyMessage]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 07/12/2015 5:42:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[From] [varchar](50) NULL,
	[To] [varchar](50) NULL,
 CONSTRAINT [PK_Message1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (1, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (2, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (3, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (4, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (5, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (6, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (7, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (8, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (9, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (10, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (11, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (12, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (13, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (14, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (15, N'66666', N'66666')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (16, N'+5715088380', N'+573005755916')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (17, N'+5715088380', N'+573005755916')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (18, N'+5715088380', N'+573003459783')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (19, N'+5715088380', N'+573148140124')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (20, N'+5715088380', N'+573148140124')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (21, N'+5715088380', N'+573148140124')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (22, N'+5715088380', N'+573003459783')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (23, N'+5715088380', N'+573003459783')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (24, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (25, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (26, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (27, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (28, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (29, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (30, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (31, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (32, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (33, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (34, N'444444', N'444444')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (35, N'+5715088380', N'+573148140124')
INSERT [dbo].[Message] ([Id], [From], [To]) VALUES (36, N'+5715088380', N'+573133336141')
SET IDENTITY_INSERT [dbo].[Message] OFF
USE [master]
GO
ALTER DATABASE [SendMyMessage] SET  READ_WRITE 
GO
