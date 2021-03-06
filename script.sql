USE [master]
GO
/****** Object:  Database [FinanceManagementAPI]    Script Date: 12/8/2020 12:14:42 AM ******/
CREATE DATABASE [FinanceManagementAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FinanceManagementAPI_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FinanceManagementAPI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FinanceManagementAPI_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FinanceManagementAPI.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FinanceManagementAPI] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FinanceManagementAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FinanceManagementAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FinanceManagementAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FinanceManagementAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FinanceManagementAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FinanceManagementAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FinanceManagementAPI] SET  MULTI_USER 
GO
ALTER DATABASE [FinanceManagementAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FinanceManagementAPI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FinanceManagementAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FinanceManagementAPI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FinanceManagementAPI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FinanceManagementAPI] SET QUERY_STORE = OFF
GO
USE [FinanceManagementAPI]
GO
/****** Object:  Table [dbo].[ComplaintRecord]    Script Date: 12/8/2020 12:14:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplaintRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Complaint] [varchar](50) NULL,
 CONSTRAINT [PK_ComplaintRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 12/8/2020 12:14:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Head_Login]    Script Date: 12/8/2020 12:14:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Head_Login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Head_Name] [varchar](50) NULL,
	[Head_Password] [varchar](50) NULL,
 CONSTRAINT [PK_Head_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceRecord]    Script Date: 12/8/2020 12:14:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceRecord](
	[ID] [int] NOT NULL,
	[ServiceName] [varchar](50) NULL,
	[Features] [varchar](50) NULL,
 CONSTRAINT [PK_ServiceRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffMemberRecord]    Script Date: 12/8/2020 12:14:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffMemberRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
 CONSTRAINT [PK_StaffMemberRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([id], [Name], [Email], [Contact], [Message]) VALUES (1, N'qwwq', N'qw@as.com', N'123', N'qwqwqqwqw')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
SET IDENTITY_INSERT [dbo].[Head_Login] ON 

INSERT [dbo].[Head_Login] ([ID], [Head_Name], [Head_Password]) VALUES (1, N'head@gmail.com', N'head')
SET IDENTITY_INSERT [dbo].[Head_Login] OFF
INSERT [dbo].[ServiceRecord] ([ID], [ServiceName], [Features]) VALUES (1, N'Get money on no Interest', N'No interest')
USE [master]
GO
ALTER DATABASE [FinanceManagementAPI] SET  READ_WRITE 
GO
