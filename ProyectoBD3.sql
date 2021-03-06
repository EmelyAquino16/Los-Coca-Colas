
/*Nombre(1):  Victor Benzant       |    Matricula(1): 16-SIIT-1-017    |    Seccion(1): 0541*/
/*Nombre(2):  Anyi Paola Mendez    |    Matricula(2): 16-SIIT-1-044    |    Seccion(2): 0541*/
/*Nombre(3):  Emely Aquino         |    Matricula(3): 16-SIIT-1-040    |    Seccion(3): 0541*/


USE [master]
GO
/****** Object:  Database [ProyectoBD3]    Script Date: 06/04/2018 15:23:07 ******/
CREATE DATABASE [ProyectoBD3]

USE [ProyectoBD3]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 06/04/2018 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[CalificacionEdad] [int] NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salas]    Script Date: 06/04/2018 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Pelicula] [int] NULL,
 CONSTRAINT [PK_Salas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (1, N'El Tesoro Escondido', 14)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (2, N'Los Pinguinos de Madagascar', 10)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (3, N'Ice 3', 8)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (4, N'Los 5 Fantasticos', 10)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (5, N'Toy Story', 5)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (6, N'Capitan America', 14)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (7, N'Bad Boys', 17)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (8, N'Big Mama', 15)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (9, N'Perico Ripiao', 10)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (10, N'Navidad', 13)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (1, N'Puerta 1', 10)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (2, N'Puerta 2', 9)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (3, N'Puerta 3', 8)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (4, N'Puerta 4', 7)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (5, N'Puerta 5', 6)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (6, N'Puerta 6', 5)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (7, N'Puerta 7', 4)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (8, N'Puerta 8', 3)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (9, N'Puerta 9', 2)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (10, N'Puerta 10', 1)
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [FK_Salas_Peliculas] FOREIGN KEY([Pelicula])
REFERENCES [dbo].[Peliculas] ([Codigo])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [FK_Salas_Peliculas]
GO
USE [master]
GO
ALTER DATABASE [ProyectoBD3] SET  READ_WRITE 
GO
