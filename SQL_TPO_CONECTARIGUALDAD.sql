USE [Tpo_Conectar_Igualdad_final]
GO
/****** Object:  Table [dbo].[APLICACIONES_COMPU]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APLICACIONES_COMPU](
	[NOMBRE] [varchar](30) NOT NULL,
	[NUMERO_VERSION] [int] NOT NULL,
	[DISTRIBUIDOR] [varchar](30) NOT NULL,
	[CAPACIDAD_NECESITADA] [int] NOT NULL,
	[ID_COMPU] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NOMBRE] ASC,
	[NUMERO_VERSION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASIGNACION_SERVIDOR]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASIGNACION_SERVIDOR](
	[IP_IDENTIFICADOR] [int] NOT NULL,
	[FECHA_INICIO] [date] NULL,
	[FECHA_FINAL] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPUTADORA]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPUTADORA](
	[ID_COMPU] [varchar](10) NOT NULL,
	[CAPACIDAD_RAM] [int] NOT NULL,
	[CAPACIDAD_DISCO] [int] NOT NULL,
	[MARCA_DISCO] [varchar](30) NOT NULL,
	[DNI_DOCENTE] [int] NOT NULL,
	[IP_SERVIDOR] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_COMPU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_TALLER]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_TALLER](
	[ID_TALLER] [int] NOT NULL,
	[FECHA_INICIO] [date] NOT NULL,
	[FECHA_FINAL] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCENTE]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCENTE](
	[DNI] [int] NOT NULL,
	[NOMBRE] [varchar](30) NOT NULL,
	[APELLIDO] [varchar](30) NOT NULL,
	[DOMICILIO] [varchar](40) NOT NULL,
	[FECHA_NAC] [date] NOT NULL,
	[MATERIAS] [varchar](20) NOT NULL,
	[ID_COMPU] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESCUELA]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESCUELA](
	[NUMERO_ESC] [int] NOT NULL,
	[LOCALIDAD] [varchar](30) NOT NULL,
	[ORIENTACION] [varchar](30) NOT NULL,
	[DOMICILIO] [varchar](40) NOT NULL,
	[NOMBRE_DIRECTOR] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NUMERO_ESC] ASC,
	[LOCALIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SERVIDOR]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVIDOR](
	[IP_IDENTIFICADOR] [int] NOT NULL,
	[NOMBRE] [varchar](30) NOT NULL,
	[CAPACIDAD_SERVIDOR] [int] NOT NULL,
	[MARCA_DISCO] [varchar](30) NOT NULL,
	[OFICINA] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IP_IDENTIFICADOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TALLER]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TALLER](
	[ID_TALLER] [int] NOT NULL,
	[NOMBRE] [varchar](30) NOT NULL,
	[DURACION_HORAS] [int] NOT NULL,
	[RECURSOS] [varchar](20) NULL,
	[NUMERO_ESC] [int] NOT NULL,
	[LOCALIDAD] [varchar](30) NOT NULL,
	[DNI_DOCENTE] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TALLER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[APLICACIONES_COMPU] ([NOMBRE], [NUMERO_VERSION], [DISTRIBUIDOR], [CAPACIDAD_NECESITADA], [ID_COMPU]) VALUES (N'AutoCad', 2000000, N'AutoDesk', 1, N'4')
GO
INSERT [dbo].[APLICACIONES_COMPU] ([NOMBRE], [NUMERO_VERSION], [DISTRIBUIDOR], [CAPACIDAD_NECESITADA], [ID_COMPU]) VALUES (N'Eclipse', 4000000, N'Eclipse Foundation', 2, N'3')
GO
INSERT [dbo].[APLICACIONES_COMPU] ([NOMBRE], [NUMERO_VERSION], [DISTRIBUIDOR], [CAPACIDAD_NECESITADA], [ID_COMPU]) VALUES (N'PowerPoint', 5000000, N'Office', 3, N'5')
GO
INSERT [dbo].[APLICACIONES_COMPU] ([NOMBRE], [NUMERO_VERSION], [DISTRIBUIDOR], [CAPACIDAD_NECESITADA], [ID_COMPU]) VALUES (N'Visual Studio Code', 3000000, N'Microsoft', 0, N'3')
GO
INSERT [dbo].[APLICACIONES_COMPU] ([NOMBRE], [NUMERO_VERSION], [DISTRIBUIDOR], [CAPACIDAD_NECESITADA], [ID_COMPU]) VALUES (N'Word', 1000000, N'Office', 1, N'1')
GO
INSERT [dbo].[ASIGNACION_SERVIDOR] ([IP_IDENTIFICADOR], [FECHA_INICIO], [FECHA_FINAL]) VALUES (12345, CAST(N'2020-04-23' AS Date), NULL)
GO
INSERT [dbo].[ASIGNACION_SERVIDOR] ([IP_IDENTIFICADOR], [FECHA_INICIO], [FECHA_FINAL]) VALUES (12346, CAST(N'2015-02-11' AS Date), CAST(N'2018-09-03' AS Date))
GO
INSERT [dbo].[ASIGNACION_SERVIDOR] ([IP_IDENTIFICADOR], [FECHA_INICIO], [FECHA_FINAL]) VALUES (12347, CAST(N'2022-09-01' AS Date), NULL)
GO
INSERT [dbo].[ASIGNACION_SERVIDOR] ([IP_IDENTIFICADOR], [FECHA_INICIO], [FECHA_FINAL]) VALUES (12348, CAST(N'2018-09-03' AS Date), NULL)
GO
INSERT [dbo].[ASIGNACION_SERVIDOR] ([IP_IDENTIFICADOR], [FECHA_INICIO], [FECHA_FINAL]) VALUES (12349, CAST(N'2020-12-17' AS Date), CAST(N'2022-09-01' AS Date))
GO
INSERT [dbo].[COMPUTADORA] ([ID_COMPU], [CAPACIDAD_RAM], [CAPACIDAD_DISCO], [MARCA_DISCO], [DNI_DOCENTE], [IP_SERVIDOR]) VALUES (N'1', 16, 500, N'GigaByte', 100000, 12345)
GO
INSERT [dbo].[COMPUTADORA] ([ID_COMPU], [CAPACIDAD_RAM], [CAPACIDAD_DISCO], [MARCA_DISCO], [DNI_DOCENTE], [IP_SERVIDOR]) VALUES (N'2', 32, 280, N'Patriot', 100001, 12346)
GO
INSERT [dbo].[COMPUTADORA] ([ID_COMPU], [CAPACIDAD_RAM], [CAPACIDAD_DISCO], [MARCA_DISCO], [DNI_DOCENTE], [IP_SERVIDOR]) VALUES (N'3', 8, 1000, N'Samsung', 100002, 12347)
GO
INSERT [dbo].[COMPUTADORA] ([ID_COMPU], [CAPACIDAD_RAM], [CAPACIDAD_DISCO], [MARCA_DISCO], [DNI_DOCENTE], [IP_SERVIDOR]) VALUES (N'4', 16, 1500, N'Crucial', 100003, 12348)
GO
INSERT [dbo].[COMPUTADORA] ([ID_COMPU], [CAPACIDAD_RAM], [CAPACIDAD_DISCO], [MARCA_DISCO], [DNI_DOCENTE], [IP_SERVIDOR]) VALUES (N'5', 8, 500, N'Kioxia', 100004, 12349)
GO
INSERT [dbo].[DETALLE_TALLER] ([ID_TALLER], [FECHA_INICIO], [FECHA_FINAL]) VALUES (100, CAST(N'2022-01-01' AS Date), NULL)
GO
INSERT [dbo].[DETALLE_TALLER] ([ID_TALLER], [FECHA_INICIO], [FECHA_FINAL]) VALUES (200, CAST(N'2022-03-01' AS Date), NULL)
GO
INSERT [dbo].[DETALLE_TALLER] ([ID_TALLER], [FECHA_INICIO], [FECHA_FINAL]) VALUES (300, CAST(N'2022-01-01' AS Date), CAST(N'2022-07-30' AS Date))
GO
INSERT [dbo].[DETALLE_TALLER] ([ID_TALLER], [FECHA_INICIO], [FECHA_FINAL]) VALUES (400, CAST(N'2022-02-01' AS Date), CAST(N'2022-09-11' AS Date))
GO
INSERT [dbo].[DETALLE_TALLER] ([ID_TALLER], [FECHA_INICIO], [FECHA_FINAL]) VALUES (500, CAST(N'2020-12-10' AS Date), CAST(N'2021-05-10' AS Date))
GO
INSERT [dbo].[DOCENTE] ([DNI], [NOMBRE], [APELLIDO], [DOMICILIO], [FECHA_NAC], [MATERIAS], [ID_COMPU]) VALUES (100000, N'Julian', N'Oubiña', N'Sarmiento 123', CAST(N'2002-09-11' AS Date), N'Matematica', N'1')
GO
INSERT [dbo].[DOCENTE] ([DNI], [NOMBRE], [APELLIDO], [DOMICILIO], [FECHA_NAC], [MATERIAS], [ID_COMPU]) VALUES (100001, N'Kevin', N'Alajarin', N'Jujuy 123', CAST(N'2001-02-01' AS Date), N'Educacion Fisica', N'2')
GO
INSERT [dbo].[DOCENTE] ([DNI], [NOMBRE], [APELLIDO], [DOMICILIO], [FECHA_NAC], [MATERIAS], [ID_COMPU]) VALUES (100002, N'Franco', N'Feresini', N'Mendoza 123', CAST(N'1985-04-27' AS Date), N'Informatica', N'3')
GO
INSERT [dbo].[DOCENTE] ([DNI], [NOMBRE], [APELLIDO], [DOMICILIO], [FECHA_NAC], [MATERIAS], [ID_COMPU]) VALUES (100003, N'Juan Ignacio', N'Witenas', N'Mitre 1200', CAST(N'1999-10-04' AS Date), N'Biologia', N'4')
GO
INSERT [dbo].[DOCENTE] ([DNI], [NOMBRE], [APELLIDO], [DOMICILIO], [FECHA_NAC], [MATERIAS], [ID_COMPU]) VALUES (100004, N'Julian', N'Bautista', N'Independencia 100', CAST(N'2000-12-08' AS Date), N'Costura', N'5')
GO
INSERT [dbo].[ESCUELA] ([NUMERO_ESC], [LOCALIDAD], [ORIENTACION], [DOMICILIO], [NOMBRE_DIRECTOR]) VALUES (2, N'Avellaneda', N'Tecnico', N'Colon 111', N'Ricardo Fernandez')
GO
INSERT [dbo].[ESCUELA] ([NUMERO_ESC], [LOCALIDAD], [ORIENTACION], [DOMICILIO], [NOMBRE_DIRECTOR]) VALUES (23, N'Barracas', N'Informatica', N'Palaa 642', N'Roberto Lopez')
GO
INSERT [dbo].[ESCUELA] ([NUMERO_ESC], [LOCALIDAD], [ORIENTACION], [DOMICILIO], [NOMBRE_DIRECTOR]) VALUES (31, N'Lugano', N'Tecnico', N'Alsina 123', N'Gustavo Perez')
GO
INSERT [dbo].[ESCUELA] ([NUMERO_ESC], [LOCALIDAD], [ORIENTACION], [DOMICILIO], [NOMBRE_DIRECTOR]) VALUES (58, N'Martinez', N'Bachiller', N'Lavalle 131', N'Marcelo Garcia')
GO
INSERT [dbo].[ESCUELA] ([NUMERO_ESC], [LOCALIDAD], [ORIENTACION], [DOMICILIO], [NOMBRE_DIRECTOR]) VALUES (86, N'Flores', N'Religioso', N'Belgrano 78', N'Maria Ines Gonzalez')
GO
INSERT [dbo].[SERVIDOR] ([IP_IDENTIFICADOR], [NOMBRE], [CAPACIDAD_SERVIDOR], [MARCA_DISCO], [OFICINA]) VALUES (12345, N'Ionos', 500, N'Gigabyte', N'De la serna 123')
GO
INSERT [dbo].[SERVIDOR] ([IP_IDENTIFICADOR], [NOMBRE], [CAPACIDAD_SERVIDOR], [MARCA_DISCO], [OFICINA]) VALUES (12346, N'Hostinger', 1500, N'Patriot', N'Florencio varela 653')
GO
INSERT [dbo].[SERVIDOR] ([IP_IDENTIFICADOR], [NOMBRE], [CAPACIDAD_SERVIDOR], [MARCA_DISCO], [OFICINA]) VALUES (12347, N'BlueHost', 5100, N'Samsung', N'Lacarra 89')
GO
INSERT [dbo].[SERVIDOR] ([IP_IDENTIFICADOR], [NOMBRE], [CAPACIDAD_SERVIDOR], [MARCA_DISCO], [OFICINA]) VALUES (12348, N'DreamHost', 1500, N'Crucial', N'Carabelas 31')
GO
INSERT [dbo].[SERVIDOR] ([IP_IDENTIFICADOR], [NOMBRE], [CAPACIDAD_SERVIDOR], [MARCA_DISCO], [OFICINA]) VALUES (12349, N'GoDaddy', 2500, N'Kioxia', N'Cangallo 621')
GO
INSERT [dbo].[TALLER] ([ID_TALLER], [NOMBRE], [DURACION_HORAS], [RECURSOS], [NUMERO_ESC], [LOCALIDAD], [DNI_DOCENTE]) VALUES (100, N'Matematica', 72, N'Pizarras', 31, N'Lugano', 100000)
GO
INSERT [dbo].[TALLER] ([ID_TALLER], [NOMBRE], [DURACION_HORAS], [RECURSOS], [NUMERO_ESC], [LOCALIDAD], [DNI_DOCENTE]) VALUES (200, N'Educacion Fisica', 32, N'Bolsa de pelotas', 58, N'Martinez', 100001)
GO
INSERT [dbo].[TALLER] ([ID_TALLER], [NOMBRE], [DURACION_HORAS], [RECURSOS], [NUMERO_ESC], [LOCALIDAD], [DNI_DOCENTE]) VALUES (300, N'Informatica', 72, N'Proyector', 23, N'Barracas', 100002)
GO
INSERT [dbo].[TALLER] ([ID_TALLER], [NOMBRE], [DURACION_HORAS], [RECURSOS], [NUMERO_ESC], [LOCALIDAD], [DNI_DOCENTE]) VALUES (400, N'Biologia', 180, N'Balanza', 2, N'Avellaneda', 100003)
GO
INSERT [dbo].[TALLER] ([ID_TALLER], [NOMBRE], [DURACION_HORAS], [RECURSOS], [NUMERO_ESC], [LOCALIDAD], [DNI_DOCENTE]) VALUES (500, N'Costura', 32, N'Caja de hilos', 86, N'Flores', 100004)
GO
/****** Object:  StoredProcedure [dbo].[delete_Aplicaciones]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Aplicaciones]
	@NOMBRE varchar(30),
	@NUMERO_VERSION int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE  
	FROM APLICACIONES_COMPU
	WHERE NOMBRE = @NOMBRE AND NUMERO_VERSION = @NUMERO_VERSION
    
END
GO
/****** Object:  StoredProcedure [dbo].[delete_AsignacionServidor]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_AsignacionServidor]
	@IP_IDENTIFICADOR int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE  
	FROM ASIGNACION_SERVIDOR
	WHERE IP_IDENTIFICADOR = @IP_IDENTIFICADOR
    
END
GO
/****** Object:  StoredProcedure [dbo].[delete_Computadora]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Computadora]
	@ID_COMPU varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE  
	FROM COMPUTADORA
	WHERE ID_COMPU = @ID_COMPU
    
END
GO
/****** Object:  StoredProcedure [dbo].[delete_DetalleTaller]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_DetalleTaller]
	@ID_TALLER int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE  
	FROM DETALLE_TALLER
	WHERE ID_TALLER = @ID_TALLER
    
END
GO
/****** Object:  StoredProcedure [dbo].[delete_Docente]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Docente]
	@DNI int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE  
	FROM DOCENTE 
	WHERE DNI = @DNI
    
END
GO
/****** Object:  StoredProcedure [dbo].[delete_Escuela]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Escuela]
	@NUMERO_ESC int,
	@LOCALIDAD varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE  
	FROM ESCUELA
	WHERE NUMERO_ESC = @NUMERO_ESC AND LOCALIDAD = @LOCALIDAD
    
END
GO
/****** Object:  StoredProcedure [dbo].[delete_Servidor]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Servidor]
	@IP_IDENTIFICADOR int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE  
	FROM SERVIDOR
	WHERE IP_IDENTIFICADOR = @IP_IDENTIFICADOR
    
END
GO
/****** Object:  StoredProcedure [dbo].[delete_Taller]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Taller]
	@ID_TALLER int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE  
	FROM TALLER
	WHERE ID_TALLER = @ID_TALLER
    
END
GO
/****** Object:  StoredProcedure [dbo].[insert_Aplicaciones]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_Aplicaciones]
	@NOMBRE varchar(30),
	@NUMERO_VERSION int, 
	@DISTRIBUIDOR varchar(30),
	@CAPACIDAD_NECESITADA int,
	@ID_COMPU varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO APLICACIONES_COMPU
	VALUES (@NOMBRE, @NUMERO_VERSION, @DISTRIBUIDOR, @CAPACIDAD_NECESITADA, @ID_COMPU)
END
GO
/****** Object:  StoredProcedure [dbo].[insert_AsignacionServidor]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_AsignacionServidor]
	@IP_IDENTIFICADOR int,
	@FECHA_INICIO date,
	@FECHA_FINAL date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO ASIGNACION_SERVIDOR
	VALUES (@IP_IDENTIFICADOR, @FECHA_INICIO, @FECHA_FINAL) 
END
GO
/****** Object:  StoredProcedure [dbo].[insert_Computadora]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_Computadora]
	@ID_COMPU varchar(10),
	@CAPACIDAD_RAM int, 
	@CAPACIDAD_DISCO int,
	@MARCA_DISCO varchar(30),
	@DNI_DOCENTE int,
	@IP_SERVIDOR int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO COMPUTADORA
	VALUES (@ID_COMPU, @CAPACIDAD_RAM, @CAPACIDAD_DISCO, @MARCA_DISCO, @DNI_DOCENTE, @IP_SERVIDOR) 
END
GO
/****** Object:  StoredProcedure [dbo].[insert_DetalleTaller]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_DetalleTaller]
	@ID_TALLER int,
	@FECHA_INICIO date,
	@FECHA_FINAL date 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO DETALLE_TALLER
	VALUES (@ID_TALLER, @FECHA_INICIO, @FECHA_FINAL)
END
GO
/****** Object:  StoredProcedure [dbo].[insert_Docente]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_Docente]
	@DNI int,
	@NOMBRE varchar(30), 
	@APELLIDO varchar(30),
	@DOMICILIO varchar(40),
	@FECHA_NAC date,
	@MATERIAS varchar(20),
	@ID_COMPU varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO DOCENTE
	VALUES (@DNI, @NOMBRE, @APELLIDO, @DOMICILIO, @FECHA_NAC, @MATERIAS, @ID_COMPU) 
END
GO
/****** Object:  StoredProcedure [dbo].[insert_Escuela]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_Escuela]
	@NUMERO_ESC int,
	@LOCALIDAD varchar(30),
	@ORIENTACION varchar(30),
	@DOMICILIO varchar(40),
	@NOMBRE_DIRECTOR varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO ESCUELA
	VALUES (@NUMERO_ESC, @LOCALIDAD, @ORIENTACION, @DOMICILIO, @NOMBRE_DIRECTOR) 
END
GO
/****** Object:  StoredProcedure [dbo].[insert_Servidor]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_Servidor]
	@IP_IDENTIFICADOR int,
	@NOMBRE varchar(30),
	@CAPACIDAD_SERVIDOR int,
	@MARCA_DISCO varchar(30),
	@OFICINA varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO SERVIDOR
	VALUES (@IP_IDENTIFICADOR, @NOMBRE, @CAPACIDAD_SERVIDOR, @MARCA_DISCO, @OFICINA) 
END
GO
/****** Object:  StoredProcedure [dbo].[insert_Taller]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_Taller]
	@ID_TALLER int,
	@NOMBRE varchar(30),
	@DURACION_HORAS int,
	@RECURSOS varchar(20),
	@NUMERO_ESC int,
	@LOCALIDAD varchar(30),
	@DNI_DOCENTE int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO TALLER
	VALUES (@ID_TALLER, @NOMBRE, @DURACION_HORAS, @RECURSOS, @NUMERO_ESC, @LOCALIDAD, @DNI_DOCENTE)
END
GO
/****** Object:  StoredProcedure [dbo].[select_Aplicaciones]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_Aplicaciones]
	@NOMBRE varchar(30),
	@NUMERO_VERSION int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT * 
	FROM APLICACIONES_COMPU
	WHERE NOMBRE = @NOMBRE AND NUMERO_VERSION = @NUMERO_VERSION
END
GO
/****** Object:  StoredProcedure [dbo].[select_AsignacionServidor]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_AsignacionServidor]
	@IP_IDENTIFICADOR int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT * 
	FROM ASIGNACION_SERVIDOR
	WHERE IP_IDENTIFICADOR = @IP_IDENTIFICADOR
END
GO
/****** Object:  StoredProcedure [dbo].[select_Computadora]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_Computadora]
	@ID_COMPU varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT * 
	FROM COMPUTADORA 
	WHERE ID_COMPU = @ID_COMPU
END
GO
/****** Object:  StoredProcedure [dbo].[select_DetalleTaller]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_DetalleTaller]
	@ID_TALLER int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT * 
	FROM DETALLE_TALLER
	WHERE ID_TALLER = @ID_TALLER
END
GO
/****** Object:  StoredProcedure [dbo].[select_Docente]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_Docente]
	@DNI int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT * 
	FROM DOCENTE 
	WHERE DNI = @DNI
END
GO
/****** Object:  StoredProcedure [dbo].[select_Escuela]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_Escuela]
	@NUMERO_ESC int,
	@LOCALIDAD varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT * 
	FROM ESCUELA
	WHERE NUMERO_ESC = @NUMERO_ESC AND LOCALIDAD = @LOCALIDAD
END
GO
/****** Object:  StoredProcedure [dbo].[select_Servidor]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_Servidor]
	@IP_IDENTIFICADOR int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT * 
	FROM SERVIDOR
	WHERE IP_IDENTIFICADOR = @IP_IDENTIFICADOR
END
GO
/****** Object:  StoredProcedure [dbo].[select_Taller]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_Taller]
	@ID_TALLER int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT * 
	FROM TALLER
	WHERE ID_TALLER = @ID_TALLER
END
GO
/****** Object:  StoredProcedure [dbo].[update_Aplicaciones]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_Aplicaciones]
	@NOMBRE varchar(30),
	@NUMERO_VERSION int, 
	@DISTRIBUIDOR varchar(30),
	@CAPACIDAD_NECESITADA int,
	@ID_COMPU varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE APLICACIONES_COMPU SET  
       [NOMBRE] = @NOMBRE,
	   [NUMERO_VERSION] = @NUMERO_VERSION,
       [DISTRIBUIDOR] = @DISTRIBUIDOR,
	   [CAPACIDAD_NECESITADA] = @CAPACIDAD_NECESITADA,
	   [ID_COMPU] = @ID_COMPU
       WHERE NOMBRE = @ID_COMPU AND NUMERO_VERSION = @NUMERO_VERSION
END
GO
/****** Object:  StoredProcedure [dbo].[update_AsignacionServidor]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_AsignacionServidor]
	@IP_IDENTIFICADOR int,
	@FECHA_INICIO date,
	@FECHA_FINAL date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE ASIGNACION_SERVIDOR SET  
       [IP_IDENTIFICADOR] = @IP_IDENTIFICADOR,
	   [FECHA_INICIO] = @FECHA_INICIO,
       [FECHA_FINAL] = @FECHA_FINAL
	   
       WHERE IP_IDENTIFICADOR = @IP_IDENTIFICADOR
END
GO
/****** Object:  StoredProcedure [dbo].[update_Computadora]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_Computadora]
	@ID_COMPU varchar(10),
	@CAPACIDAD_RAM int, 
	@CAPACIDAD_DISCO int,
	@MARCA_DISCO varchar(30),
	@DNI_DOCENTE int,
	@IP_SERVIDOR int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE COMPUTADORA SET  
       [ID_COMPU] = @ID_COMPU,
	   [CAPACIDAD_RAM] = @CAPACIDAD_RAM,
       [CAPACIDAD_DISCO] = @CAPACIDAD_DISCO,
	   [MARCA_DISCO] = @MARCA_DISCO,
	   [DNI_DOCENTE] = @DNI_DOCENTE,
	   [IP_SERVIDOR] = @IP_SERVIDOR
       WHERE IP_SERVIDOR = @ID_COMPU
END
GO
/****** Object:  StoredProcedure [dbo].[update_DetalleTaller]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_DetalleTaller]
	@ID_TALLER int,
	@FECHA_INICIO date,
	@FECHA_FINAL date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE DETALLE_TALLER SET  
       [ID_TALLER] = @ID_TALLER,
	   [FECHA_INICIO] = @FECHA_INICIO,
       [FECHA_FINAL] = @FECHA_FINAL
	   
       WHERE ID_TALLER = @ID_TALLER
END
GO
/****** Object:  StoredProcedure [dbo].[update_Docente]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_Docente]
	@DNI int,
	@NOMBRE varchar(30), 
	@APELLIDO varchar(30),
	@DOMICILIO varchar(40),
	@FECHA_NAC date,
	@MATERIAS varchar(20),
	@ID_COMPU varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE DOCENTE SET  
       [DNI] = @nombre,
	   [NOMBRE] = @NOMBRE,
       [APELLIDO] = @APELLIDO,
	   [DOMICILIO] = @DOMICILIO,
	   [MATERIAS] = @MATERIAS,
	   [ID_COMPU] = @ID_COMPU
       WHERE DNI = @DNI
END
GO
/****** Object:  StoredProcedure [dbo].[update_Escuela]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_Escuela]
	@NUMERO_ESC int,
	@LOCALIDAD varchar(30),
	@ORIENTACION varchar(30),
	@DOMICILIO varchar(40),
	@NOMBRE_DIRECTOR varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE ESCUELA SET  
       [NUMERO_ESC] = @NUMERO_ESC,
	   [LOCALIDAD] = @LOCALIDAD,
       [ORIENTACION] = @ORIENTACION,
	   [DOMICILIO] = @DOMICILIO,
	   [NOMBRE_DIRECTOR] = @NOMBRE_DIRECTOR
	   
       WHERE NUMERO_ESC = @NUMERO_ESC AND LOCALIDAD = @LOCALIDAD
END
GO
/****** Object:  StoredProcedure [dbo].[update_Servidor]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_Servidor]
	@IP_IDENTIFICADOR int,
	@NOMBRE varchar(30),
	@CAPACIDAD_SERVIDOR int,
	@MARCA_DISCO varchar(30),
	@OFICINA varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE SERVIDOR SET  
       [IP_IDENTIFICADOR] = @IP_IDENTIFICADOR,
	   [NOMBRE] = @NOMBRE,
       [CAPACIDAD_SERVIDOR] = @CAPACIDAD_SERVIDOR,
	   [MARCA_DISCO] = @MARCA_DISCO,
	   [OFICINA] = @OFICINA
	   
       WHERE IP_IDENTIFICADOR = @IP_IDENTIFICADOR
END
GO
/****** Object:  StoredProcedure [dbo].[update_Taller]    Script Date: 24/11/2022 03:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_Taller]
	@ID_TALLER int,
	@NOMBRE varchar(30),
	@DURACION_HORAS int,
	@RECURSOS varchar(20),
	@NUMERO_ESC int,
	@LOCALIDAD varchar(30),
	@DNI_DOCENTE int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE TALLER SET  
       [ID_TALLER] = @ID_TALLER,
	   [NOMBRE] = @NOMBRE,
       [DURACION_HORAS] = @DURACION_HORAS,
	   [RECURSOS] = @RECURSOS,
	   [NUMERO_ESC] = @NUMERO_ESC,
	   [LOCALIDAD] = @LOCALIDAD,
	   [DNI_DOCENTE] = @DNI_DOCENTE
       WHERE ID_TALLER = @ID_TALLER AND NOMBRE = @NOMBRE
END
GO
