USE [master]
GO
/****** Object:  Database [POKEDB_U7]    Script Date: 23/09/2022 15:52:19 ******/
CREATE DATABASE [POKEDB_U7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POKEDB_U7', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\POKEDB_U7.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'POKEDB_U7_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\POKEDB_U7_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [POKEDB_U7] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [POKEDB_U7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [POKEDB_U7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [POKEDB_U7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [POKEDB_U7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [POKEDB_U7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [POKEDB_U7] SET ARITHABORT OFF 
GO
ALTER DATABASE [POKEDB_U7] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [POKEDB_U7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [POKEDB_U7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [POKEDB_U7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [POKEDB_U7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [POKEDB_U7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [POKEDB_U7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [POKEDB_U7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [POKEDB_U7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [POKEDB_U7] SET  ENABLE_BROKER 
GO
ALTER DATABASE [POKEDB_U7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [POKEDB_U7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [POKEDB_U7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [POKEDB_U7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [POKEDB_U7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [POKEDB_U7] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [POKEDB_U7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [POKEDB_U7] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [POKEDB_U7] SET  MULTI_USER 
GO
ALTER DATABASE [POKEDB_U7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [POKEDB_U7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [POKEDB_U7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [POKEDB_U7] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [POKEDB_U7] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [POKEDB_U7] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [POKEDB_U7] SET QUERY_STORE = OFF
GO
USE [POKEDB_U7]
GO
/****** Object:  Table [dbo].[ELEMENTOS]    Script Date: 23/09/2022 15:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELEMENTOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_ELEMENTOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POKEMONS]    Script Date: 23/09/2022 15:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POKEMONS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[UrlImagen] [varchar](300) NULL,
	[IdTipo] [int] NULL,
	[IdDebilidad] [int] NULL,
	[IdEvolucion] [int] NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_POKEMONS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ELEMENTOS] ON 

INSERT [dbo].[ELEMENTOS] ([Id], [Descripcion]) VALUES (1, N'Planta')
INSERT [dbo].[ELEMENTOS] ([Id], [Descripcion]) VALUES (2, N'Fuego')
INSERT [dbo].[ELEMENTOS] ([Id], [Descripcion]) VALUES (3, N'Agua')
SET IDENTITY_INSERT [dbo].[ELEMENTOS] OFF
GO
SET IDENTITY_INSERT [dbo].[POKEMONS] ON 

INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (2, 4, N'Charmander', N'Pokemon de fuego', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png', 2, 3, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (3, 11, N'Butterfree', N'mariposa', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/012.png', 1, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (16, 25, N'Pikachu', N'Rata amarilla', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png', 2, 2, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (22, 23, N'Mate', N'Torpedo', N'https://th.bing.com/th/id/OIP.TtDl1QS9a7zzLkgT2mzCfAHaHN?pid=ImgDet&rs=1', 1, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (23, 24, N'Mate', N'Camionero', N'https://rongo.ar/wp-content/uploads/2021/02/254952FB-73D9-4FB7-8761-F3251214DDB4-scaled.jpeg', 1, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (28, 25, N'Mate', N'Torpedo 2', N'https://th.bing.com/th/id/OIP.TtDl1QS9a7zzLkgT2mzCfAHaHN?pid=ImgDet&rs=1', 1, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (34, 123, N'Pastrami', N'Rica carnita', N'C:\Users\cbasa\Desktop\JPG.jpg', 2, 3, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (35, 55, N'GFDGDS', N'SFGS', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/015.png', 2, 3, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (36, 551, N'Prueba', N'Probando..', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/133.png', 2, 3, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (37, 347, N'Eevee', N'Perrito', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/133.png', 1, 3, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (38, 456, N'dfg', N'dfg', N'C:\Users\cbasa\Desktop\PNG.png', 2, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (39, 456, N'HDHDFH', N'fhfhfgh', N'C:\Users\cbasa\Desktop\PNG.png', 3, 2, NULL, 1)
SET IDENTITY_INSERT [dbo].[POKEMONS] OFF
GO
ALTER TABLE [dbo].[POKEMONS]  WITH CHECK ADD  CONSTRAINT [FK_POKEMONS_ELEMENTOS] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[ELEMENTOS] ([Id])
GO
ALTER TABLE [dbo].[POKEMONS] CHECK CONSTRAINT [FK_POKEMONS_ELEMENTOS]
GO
ALTER TABLE [dbo].[POKEMONS]  WITH CHECK ADD  CONSTRAINT [FK_POKEMONS_ELEMENTOS1] FOREIGN KEY([IdDebilidad])
REFERENCES [dbo].[ELEMENTOS] ([Id])
GO
ALTER TABLE [dbo].[POKEMONS] CHECK CONSTRAINT [FK_POKEMONS_ELEMENTOS1]
GO
ALTER TABLE [dbo].[POKEMONS]  WITH CHECK ADD  CONSTRAINT [FK_POKEMONS_POKEMONS] FOREIGN KEY([IdEvolucion])
REFERENCES [dbo].[POKEMONS] ([Id])
GO
ALTER TABLE [dbo].[POKEMONS] CHECK CONSTRAINT [FK_POKEMONS_POKEMONS]
GO
USE [master]
GO
ALTER DATABASE [POKEDB_U7] SET  READ_WRITE 
GO
