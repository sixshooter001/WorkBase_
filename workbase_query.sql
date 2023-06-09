CREATE DATABASE [workbase]
GO
ALTER DATABASE [workbase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [workbase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [workbase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [workbase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [workbase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [workbase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [workbase] SET ARITHABORT OFF 
GO
ALTER DATABASE [workbase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [workbase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [workbase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [workbase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [workbase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [workbase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [workbase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [workbase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [workbase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [workbase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [workbase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [workbase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [workbase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [workbase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [workbase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [workbase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [workbase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [workbase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [workbase] SET  MULTI_USER 
GO
ALTER DATABASE [workbase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [workbase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [workbase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [workbase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [workbase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [workbase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [workbase] SET QUERY_STORE = OFF
GO
ALTER DATABASE [workbase] SET  READ_WRITE 
GO

USE [workbase]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Clients](
	[CLIENTID] [int] IDENTITY(1,1) NOT NULL,
	[FIRSTNAME] [nvarchar](50) NULL,
	[LASTNAME] [nvarchar](50) NULL,
	[SURNAME] [nvarchar](50) NULL,
	[GENDER] [varchar](1) NULL,
	[BIRTHDAY] [date] NULL,
	[PHONEHOME] [varchar](50) NULL,
	[PHONEMOBIL] [varchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[CITY] [nvarchar](50) NULL,
	[STREET] [nvarchar](100) NULL,
	[HOUSE] [nvarchar](50) NULL,
	[APARTAMENT] [nvarchar](50) NULL,
	[CARDCODE] [varchar](50) NULL,
	[STARTDATE] [date] NULL,
	[FINISHDATE] [date] NULL,
 CONSTRAINT [PK_Cards] PRIMARY KEY CLUSTERED 
(
	[CLIENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
