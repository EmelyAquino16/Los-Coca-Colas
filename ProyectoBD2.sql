
/*Nombre(1):  Victor Benzant       |    Matricula(1): 16-SIIT-1-017    |    Seccion(1): 0541*/
/*Nombre(2):  Anyi Paola Mendez    |    Matricula(2): 16-SIIT-1-044    |    Seccion(2): 0541*/
/*Nombre(3):  Emely Aquino         |    Matricula(3): 16-SIIT-1-040    |    Seccion(3): 0541*/


USE [master]
GO
/****** Object:  Database [ProyectoBD2]    Script Date: 06/04/2018 15:14:45 ******/
CREATE DATABASE [ProyectoBD2]

USE [ProyectoBD2]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 06/04/2018 15:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Presupuesto] [int] NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 06/04/2018 15:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[DNI] [varchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
	[Departamento] [int] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (1, N'Dept. 1', 500000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (2, N'Dept. 2', 420000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (3, N'Dept. 3', 850000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (4, N'Dept. 4', 760000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (5, N'Dept. 5', 357000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (6, N'Dept. 6', 140000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (7, N'Dept. 7', 300000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (8, N'Dept. 8', 820000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (9, N'Dept. 9', 280000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (10, N'Dept. 10', 645000)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'1', N'Andres', N'Polanco', 1)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'10', N'Javier', N'Duran', 10)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'2', N'Argenis', N'Marte', 2)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'3', N'Alejandra', N'Peralta', 3)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'4', N'Francia', N'Santana', 4)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'5', N'Diosmery', N'Jimenez', 5)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'6', N'Franny', N'De la Rosa', 6)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'7', N'Wilson', N'Cruz', 7)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'8', N'Evenezer', N'Suero', 8)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'9', N'Oliver', N'Liz', 9)
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Departamentos] FOREIGN KEY([Departamento])
REFERENCES [dbo].[Departamentos] ([Codigo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Departamentos]
GO
USE [master]
GO
ALTER DATABASE [ProyectoBD2] SET  READ_WRITE 
GO
