USE [master]
GO
/****** Object:  Database [RentalHome]    Script Date: 12/1/2020 12:24:20 AM ******/
CREATE DATABASE [RentalHome]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RentalHome_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\RentalHome.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RentalHome_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\RentalHome.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RentalHome] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RentalHome].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RentalHome] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RentalHome] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RentalHome] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RentalHome] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RentalHome] SET ARITHABORT OFF 
GO
ALTER DATABASE [RentalHome] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RentalHome] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RentalHome] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RentalHome] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RentalHome] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RentalHome] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RentalHome] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RentalHome] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RentalHome] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RentalHome] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RentalHome] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RentalHome] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RentalHome] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RentalHome] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RentalHome] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RentalHome] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RentalHome] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RentalHome] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RentalHome] SET  MULTI_USER 
GO
ALTER DATABASE [RentalHome] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RentalHome] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RentalHome] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RentalHome] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RentalHome] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RentalHome] SET QUERY_STORE = OFF
GO
USE [RentalHome]
GO
/****** Object:  Table [dbo].[ContactDetails]    Script Date: 12/1/2020 12:24:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
 CONSTRAINT [PK_ContactDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 12/1/2020 12:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginDetails]    Script Date: 12/1/2020 12:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginDetails](
	[LoginName] [varchar](50) NULL,
	[LoginPassword] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceDetails]    Script Date: 12/1/2020 12:24:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_ServiceDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [RentalHome] SET  READ_WRITE 
GO
