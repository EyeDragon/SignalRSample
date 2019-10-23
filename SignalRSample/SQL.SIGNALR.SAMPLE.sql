USE [master]
GO

/****** Object:  Database [SIGNALR.SAMPLE]    Script Date: 10/23/2019 6:47:06 PM ******/
CREATE DATABASE [SIGNALR.SAMPLE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SIGNALR.SAMPLE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\SIGNALR.SAMPLE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SIGNALR.SAMPLE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\SIGNALR.SAMPLE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SIGNALR.SAMPLE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET ARITHABORT OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET  ENABLE_BROKER 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET  MULTI_USER 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET QUERY_STORE = OFF
GO

USE [SIGNALR.SAMPLE]
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [SIGNALR.SAMPLE] SET  READ_WRITE 
GO


