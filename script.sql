USE [master]
GO
/****** Object:  Database [Partner]    Script Date: 06/11/2019 14:32:50 ******/
CREATE DATABASE [Partner]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Partner', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Partner.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Partner_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Partner_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Partner] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Partner].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Partner] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Partner] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Partner] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Partner] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Partner] SET ARITHABORT OFF 
GO
ALTER DATABASE [Partner] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Partner] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Partner] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Partner] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Partner] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Partner] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Partner] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Partner] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Partner] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Partner] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Partner] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Partner] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Partner] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Partner] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Partner] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Partner] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Partner] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Partner] SET RECOVERY FULL 
GO
ALTER DATABASE [Partner] SET  MULTI_USER 
GO
ALTER DATABASE [Partner] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Partner] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Partner] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Partner] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Partner] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Partner', N'ON'
GO
ALTER DATABASE [Partner] SET QUERY_STORE = OFF
GO
USE [Partner]
GO
/****** Object:  Table [dbo].[item]    Script Date: 06/11/2019 14:32:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[id] [int] NOT NULL,
	[type] [nchar](10) NULL,
	[color] [nchar](10) NULL,
	[size] [int] NULL,
	[cost] [int] NULL,
	[time] [int] NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 06/11/2019 14:32:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] NOT NULL,
	[name] [nchar](50) NULL,
	[done] [bit] NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[item] ([id], [type], [color], [size], [cost], [time]) VALUES (1, N'dress     ', N'blue      ', 10, 100, 10)
INSERT [dbo].[item] ([id], [type], [color], [size], [cost], [time]) VALUES (2, N'socks     ', N'red       ', 2, 10, 1)
INSERT [dbo].[status] ([id], [name], [done]) VALUES (1, N'composition                                       ', 1)
INSERT [dbo].[status] ([id], [name], [done]) VALUES (2, N'shipping                                          ', 0)
INSERT [dbo].[status] ([id], [name], [done]) VALUES (3, N'collection                                        ', 0)
USE [master]
GO
ALTER DATABASE [Partner] SET  READ_WRITE 
GO
