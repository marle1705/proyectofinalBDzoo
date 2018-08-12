

/*NOMBRE: Marleny Asencio MATRICULA: 17-EIIN-1-135 SECCION: 0541*/

USE [master]
GO
/****** Object:  Database [zoologico22]    Script Date: 11/08/2018 13:52:37 ******/
CREATE DATABASE [zoologico22]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'zoologico22', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MARLENY\MSSQL\DATA\zoologico22.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'zoologico22_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MARLENY\MSSQL\DATA\zoologico22_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [zoologico22] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [zoologico22].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [zoologico22] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [zoologico22] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [zoologico22] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [zoologico22] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [zoologico22] SET ARITHABORT OFF 
GO
ALTER DATABASE [zoologico22] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [zoologico22] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [zoologico22] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [zoologico22] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [zoologico22] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [zoologico22] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [zoologico22] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [zoologico22] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [zoologico22] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [zoologico22] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [zoologico22] SET  ENABLE_BROKER 
GO
ALTER DATABASE [zoologico22] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [zoologico22] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [zoologico22] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [zoologico22] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [zoologico22] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [zoologico22] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [zoologico22] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [zoologico22] SET RECOVERY FULL 
GO
ALTER DATABASE [zoologico22] SET  MULTI_USER 
GO
ALTER DATABASE [zoologico22] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [zoologico22] SET DB_CHAINING OFF 
GO
ALTER DATABASE [zoologico22] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [zoologico22] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'zoologico22', N'ON'
GO
USE [zoologico22]
GO
/****** Object:  Table [dbo].[animal]    Script Date: 11/08/2018 13:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[animal](
	[id_animal] [int] NOT NULL,
	[sexo] [varchar](30) NOT NULL,
	[año_nac] [int] NOT NULL,
	[pais_origen] [varchar](30) NOT NULL,
	[id_esp] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[especie]    Script Date: 11/08/2018 13:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[especie](
	[id_especie] [int] NOT NULL,
	[momb_animal] [varchar](30) NOT NULL,
	[familia] [varchar](30) NOT NULL,
	[peligro_ext] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_especie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[zoo]    Script Date: 11/08/2018 13:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zoo](
	[id_zoo] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[pais] [varchar](30) NOT NULL,
	[ciudad] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_zoo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[zoo_animal]    Script Date: 11/08/2018 13:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zoo_animal](
	[id_zoo] [int] NOT NULL,
	[id_animal] [int] NOT NULL,
	[cantidad] [int] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[animal] ([id_animal], [sexo], [año_nac], [pais_origen], [id_esp]) VALUES (11, N'F', 2010, N'Aafrica', 1010)
INSERT [dbo].[animal] ([id_animal], [sexo], [año_nac], [pais_origen], [id_esp]) VALUES (22, N'F', 2000, N'africa', 2020)
INSERT [dbo].[animal] ([id_animal], [sexo], [año_nac], [pais_origen], [id_esp]) VALUES (33, N'M', 2003, N'africa', 3030)
INSERT [dbo].[animal] ([id_animal], [sexo], [año_nac], [pais_origen], [id_esp]) VALUES (44, N'M', 2007, N'africa', 4040)
INSERT [dbo].[animal] ([id_animal], [sexo], [año_nac], [pais_origen], [id_esp]) VALUES (55, N'F', 2002, N'africa', 5050)
INSERT [dbo].[animal] ([id_animal], [sexo], [año_nac], [pais_origen], [id_esp]) VALUES (66, N'F', 2012, N'africa', 6060)
INSERT [dbo].[animal] ([id_animal], [sexo], [año_nac], [pais_origen], [id_esp]) VALUES (77, N'M', 2008, N'africa', 7070)
INSERT [dbo].[animal] ([id_animal], [sexo], [año_nac], [pais_origen], [id_esp]) VALUES (88, N'M', 2005, N'africa', 8080)
INSERT [dbo].[animal] ([id_animal], [sexo], [año_nac], [pais_origen], [id_esp]) VALUES (99, N'F', 2004, N'africa', 9090)
INSERT [dbo].[animal] ([id_animal], [sexo], [año_nac], [pais_origen], [id_esp]) VALUES (1010, N'M', 2001, N'africa', 10000)
INSERT [dbo].[especie] ([id_especie], [momb_animal], [familia], [peligro_ext]) VALUES (1010, N'puma', N'felino', N'no')
INSERT [dbo].[especie] ([id_especie], [momb_animal], [familia], [peligro_ext]) VALUES (2020, N'leon', N'felino', N'no')
INSERT [dbo].[especie] ([id_especie], [momb_animal], [familia], [peligro_ext]) VALUES (3030, N'tigre', N'felino', N'no')
INSERT [dbo].[especie] ([id_especie], [momb_animal], [familia], [peligro_ext]) VALUES (4040, N'coyote', N'canido', N'si')
INSERT [dbo].[especie] ([id_especie], [momb_animal], [familia], [peligro_ext]) VALUES (5050, N'elefante', N'proboscidea', N'si')
INSERT [dbo].[especie] ([id_especie], [momb_animal], [familia], [peligro_ext]) VALUES (6060, N'jaguar', N'felino', N'si')
INSERT [dbo].[especie] ([id_especie], [momb_animal], [familia], [peligro_ext]) VALUES (7070, N'koala', N'phascarlartide', N'si')
INSERT [dbo].[especie] ([id_especie], [momb_animal], [familia], [peligro_ext]) VALUES (8080, N'lechuza', N'strigidae', N'si')
INSERT [dbo].[especie] ([id_especie], [momb_animal], [familia], [peligro_ext]) VALUES (9090, N'lobo', N'canidos', N'no')
INSERT [dbo].[especie] ([id_especie], [momb_animal], [familia], [peligro_ext]) VALUES (10000, N'oso', N'mamifero carnivoro', N'si')
INSERT [dbo].[zoo] ([id_zoo], [nombre], [pais], [ciudad]) VALUES (1, N'safari', N'estados unidos', N'washintong dc')
INSERT [dbo].[zoo] ([id_zoo], [nombre], [pais], [ciudad]) VALUES (2, N'jardin zoo', N'argentina', N'buenos aire')
INSERT [dbo].[zoo] ([id_zoo], [nombre], [pais], [ciudad]) VALUES (3, N'zoo', N'chile', N'santiago')
INSERT [dbo].[zoo] ([id_zoo], [nombre], [pais], [ciudad]) VALUES (4, N'parque ecology', N'venezuela', N'caracas')
INSERT [dbo].[zoo] ([id_zoo], [nombre], [pais], [ciudad]) VALUES (5, N'super zoo', N'canada', N'otawa')
INSERT [dbo].[zoo] ([id_zoo], [nombre], [pais], [ciudad]) VALUES (6, N'ecology zoo', N'brasil', N'brasilia')
INSERT [dbo].[zoo] ([id_zoo], [nombre], [pais], [ciudad]) VALUES (7, N'natural zoo', N'costa rica', N'san jose')
INSERT [dbo].[zoo] ([id_zoo], [nombre], [pais], [ciudad]) VALUES (8, N'central zoo', N'cuba', N'la habana')
INSERT [dbo].[zoo] ([id_zoo], [nombre], [pais], [ciudad]) VALUES (9, N'hiper zoo', N'puerto rico', N'san juan')
INSERT [dbo].[zoo] ([id_zoo], [nombre], [pais], [ciudad]) VALUES (10, N'salvage', N'colombia', N'bogota')
INSERT [dbo].[zoo_animal] ([id_zoo], [id_animal], [cantidad]) VALUES (1, 11, 2)
INSERT [dbo].[zoo_animal] ([id_zoo], [id_animal], [cantidad]) VALUES (2, 22, 5)
INSERT [dbo].[zoo_animal] ([id_zoo], [id_animal], [cantidad]) VALUES (3, 33, 5)
INSERT [dbo].[zoo_animal] ([id_zoo], [id_animal], [cantidad]) VALUES (4, 44, 6)
INSERT [dbo].[zoo_animal] ([id_zoo], [id_animal], [cantidad]) VALUES (5, 55, 7)
INSERT [dbo].[zoo_animal] ([id_zoo], [id_animal], [cantidad]) VALUES (6, 66, 3)
INSERT [dbo].[zoo_animal] ([id_zoo], [id_animal], [cantidad]) VALUES (7, 77, 2)
INSERT [dbo].[zoo_animal] ([id_zoo], [id_animal], [cantidad]) VALUES (8, 88, 3)
INSERT [dbo].[zoo_animal] ([id_zoo], [id_animal], [cantidad]) VALUES (9, 99, 6)
INSERT [dbo].[zoo_animal] ([id_zoo], [id_animal], [cantidad]) VALUES (10, 1010, 3)
ALTER TABLE [dbo].[animal]  WITH CHECK ADD  CONSTRAINT [FK_animal_especie] FOREIGN KEY([id_esp])
REFERENCES [dbo].[especie] ([id_especie])
GO
ALTER TABLE [dbo].[animal] CHECK CONSTRAINT [FK_animal_especie]
GO
ALTER TABLE [dbo].[zoo_animal]  WITH CHECK ADD  CONSTRAINT [FK_zoo_animal_animal] FOREIGN KEY([id_animal])
REFERENCES [dbo].[animal] ([id_animal])
GO
ALTER TABLE [dbo].[zoo_animal] CHECK CONSTRAINT [FK_zoo_animal_animal]
GO
ALTER TABLE [dbo].[zoo_animal]  WITH CHECK ADD  CONSTRAINT [FK_zoo_animal_zoo] FOREIGN KEY([id_zoo])
REFERENCES [dbo].[zoo] ([id_zoo])
GO
ALTER TABLE [dbo].[zoo_animal] CHECK CONSTRAINT [FK_zoo_animal_zoo]
GO
USE [master]
GO
ALTER DATABASE [zoologico22] SET  READ_WRITE 
GO
