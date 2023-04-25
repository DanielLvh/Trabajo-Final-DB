USE [master]
GO
/****** Object:  Database [FarmaciaLaPaz]    Script Date: 24/4/2023 9:53:50 p. m. ******/
CREATE DATABASE [FarmaciaLaPaz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FarmaciaLaPaz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FarmaciaLaPaz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FarmaciaLaPaz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FarmaciaLaPaz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FarmaciaLaPaz] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FarmaciaLaPaz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FarmaciaLaPaz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET ARITHABORT OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FarmaciaLaPaz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FarmaciaLaPaz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FarmaciaLaPaz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FarmaciaLaPaz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET RECOVERY FULL 
GO
ALTER DATABASE [FarmaciaLaPaz] SET  MULTI_USER 
GO
ALTER DATABASE [FarmaciaLaPaz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FarmaciaLaPaz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FarmaciaLaPaz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FarmaciaLaPaz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FarmaciaLaPaz] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FarmaciaLaPaz] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FarmaciaLaPaz', N'ON'
GO
ALTER DATABASE [FarmaciaLaPaz] SET QUERY_STORE = ON
GO
ALTER DATABASE [FarmaciaLaPaz] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FarmaciaLaPaz]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 24/4/2023 9:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Nombre_cliente] [varchar](100) NOT NULL,
	[Apellido_empleado] [varchar](100) NOT NULL,
	[Celular_cliente] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 24/4/2023 9:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [char](2) NOT NULL,
	[Nombre_Empleado] [varchar](200) NOT NULL,
	[Apellido_Empleado] [varchar](200) NOT NULL,
	[celular_Empleado] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 24/4/2023 9:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[Nombre_cliente] [varchar](100) NOT NULL,
	[Producto] [varchar](200) NOT NULL,
	[Fecha_compra] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 24/4/2023 9:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Nombre_producto] [varchar](200) NOT NULL,
	[Fecha_vencimiento] [varchar](12) NOT NULL,
	[Precio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suplidores]    Script Date: 24/4/2023 9:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suplidores](
	[Nombre] [varchar](100) NOT NULL,
	[Producto] [varchar](200) NOT NULL,
	[Fecha_entrega] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([Nombre_cliente], [Apellido_empleado], [Celular_cliente]) VALUES (N'Ana', N'González', N'809-555-3456')
GO
INSERT [dbo].[Clientes] ([Nombre_cliente], [Apellido_empleado], [Celular_cliente]) VALUES (N'Carlos', N'Gómez', N'809-555-4567')
GO
INSERT [dbo].[Clientes] ([Nombre_cliente], [Apellido_empleado], [Celular_cliente]) VALUES (N'Diego', N'Hernández', N'809-555-7890')
GO
INSERT [dbo].[Clientes] ([Nombre_cliente], [Apellido_empleado], [Celular_cliente]) VALUES (N'Javier', N'Ramírez', N'809-555-6789')
GO
INSERT [dbo].[Clientes] ([Nombre_cliente], [Apellido_empleado], [Celular_cliente]) VALUES (N'Juan', N'Sánchez', N'809-555-9012')
GO
INSERT [dbo].[Clientes] ([Nombre_cliente], [Apellido_empleado], [Celular_cliente]) VALUES (N'Laura', N'Martínez', N'809-555-5678')
GO
INSERT [dbo].[Clientes] ([Nombre_cliente], [Apellido_empleado], [Celular_cliente]) VALUES (N'Lucía', N'Vargas', N'809-555-0123')
GO
INSERT [dbo].[Clientes] ([Nombre_cliente], [Apellido_empleado], [Celular_cliente]) VALUES (N'María', N'Pérez', N'809-555-2345')
GO
INSERT [dbo].[Clientes] ([Nombre_cliente], [Apellido_empleado], [Celular_cliente]) VALUES (N'Miguel', N'García', N'809-555-1234')
GO
INSERT [dbo].[Clientes] ([Nombre_cliente], [Apellido_empleado], [Celular_cliente]) VALUES (N'Sofía', N'Díaz', N'809-555-8901')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [celular_Empleado]) VALUES (N'1 ', N'Luis', N'Herrera', N'8291234567')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [celular_Empleado]) VALUES (N'10', N'Esther', N'Ortega', N'8290123456')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [celular_Empleado]) VALUES (N'2 ', N'Camila', N'Santos', N'8292345678')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [celular_Empleado]) VALUES (N'3 ', N'Pedro', N'González', N'8293456789')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [celular_Empleado]) VALUES (N'4 ', N'Valeria', N'García', N'8294567890')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [celular_Empleado]) VALUES (N'5 ', N'Fernando', N'Morales', N'8295678901')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [celular_Empleado]) VALUES (N'6 ', N'Isabela', N'Castillo', N'8296789012')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [celular_Empleado]) VALUES (N'7 ', N'David', N'Vásquez', N'8297890123')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [celular_Empleado]) VALUES (N'8 ', N'Carolina', N'Rodríguez', N'8298901234')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [celular_Empleado]) VALUES (N'9 ', N'Sebastián', N'Peralta', N'8299012345')
GO
INSERT [dbo].[Pedidos] ([Nombre_cliente], [Producto], [Fecha_compra]) VALUES (N'Ana', N'Morfina', N'12-12-18')
GO
INSERT [dbo].[Pedidos] ([Nombre_cliente], [Producto], [Fecha_compra]) VALUES (N'Carlos', N'Acetaminophen', N'12-6-10')
GO
INSERT [dbo].[Pedidos] ([Nombre_cliente], [Producto], [Fecha_compra]) VALUES (N'Diego', N'Acetaminophen', N'12-11-15')
GO
INSERT [dbo].[Pedidos] ([Nombre_cliente], [Producto], [Fecha_compra]) VALUES (N'Javier', N'Acetaminophen', N'12-12-14')
GO
INSERT [dbo].[Pedidos] ([Nombre_cliente], [Producto], [Fecha_compra]) VALUES (N'Juan', N'Ibuprofeno', N'12-12-17')
GO
INSERT [dbo].[Pedidos] ([Nombre_cliente], [Producto], [Fecha_compra]) VALUES (N'Laura', N'Amoxixilina', N'12-12-15')
GO
INSERT [dbo].[Pedidos] ([Nombre_cliente], [Producto], [Fecha_compra]) VALUES (N'Lucía', N'Acetaminophen', N'12-3-19')
GO
INSERT [dbo].[Pedidos] ([Nombre_cliente], [Producto], [Fecha_compra]) VALUES (N'María', N'Acetaminophen', N'12-12-15')
GO
INSERT [dbo].[Pedidos] ([Nombre_cliente], [Producto], [Fecha_compra]) VALUES (N'Miguel', N'Acetaminophen', N'12-12-13')
GO
INSERT [dbo].[Pedidos] ([Nombre_cliente], [Producto], [Fecha_compra]) VALUES (N'Sofía', N'Acetaminophen', N'12-6-15')
GO
INSERT [dbo].[Productos] ([Nombre_producto], [Fecha_vencimiento], [Precio]) VALUES (N'Acetaminophen', N'12-12-34', 1200)
GO
INSERT [dbo].[Productos] ([Nombre_producto], [Fecha_vencimiento], [Precio]) VALUES (N'Albuterol', N'03-14-25', 600)
GO
INSERT [dbo].[Productos] ([Nombre_producto], [Fecha_vencimiento], [Precio]) VALUES (N'Amoxicillin', N'09-23-24', 200)
GO
INSERT [dbo].[Productos] ([Nombre_producto], [Fecha_vencimiento], [Precio]) VALUES (N'Ciprofloxacin', N'06-17-23', 500)
GO
INSERT [dbo].[Productos] ([Nombre_producto], [Fecha_vencimiento], [Precio]) VALUES (N'Fluoxetine', N'02-02-24', 1000)
GO
INSERT [dbo].[Productos] ([Nombre_producto], [Fecha_vencimiento], [Precio]) VALUES (N'Hydrochlorothiazide', N'08-30-26', 123)
GO
INSERT [dbo].[Productos] ([Nombre_producto], [Fecha_vencimiento], [Precio]) VALUES (N'Ibuprofen', N'07-22-25', 100)
GO
INSERT [dbo].[Productos] ([Nombre_producto], [Fecha_vencimiento], [Precio]) VALUES (N'Lisinopril', N'12-05-24', 199)
GO
INSERT [dbo].[Productos] ([Nombre_producto], [Fecha_vencimiento], [Precio]) VALUES (N'Omeprazole', N'11-26-25', 300)
GO
INSERT [dbo].[Productos] ([Nombre_producto], [Fecha_vencimiento], [Precio]) VALUES (N'Prednisone', N'05-11-24', 157)
GO
INSERT [dbo].[Suplidores] ([Nombre], [Producto], [Fecha_entrega]) VALUES (N'anacel', N'Paracetamol', N'02-01-2024')
GO
INSERT [dbo].[Suplidores] ([Nombre], [Producto], [Fecha_entrega]) VALUES (N'centum', N'Lisinopril', N'09-01-2024')
GO
INSERT [dbo].[Suplidores] ([Nombre], [Producto], [Fecha_entrega]) VALUES (N'dronena', N'Omeprazol', N'10-01-2024')
GO
INSERT [dbo].[Suplidores] ([Nombre], [Producto], [Fecha_entrega]) VALUES (N'elipesa', N'Ibuprofeno', N'04-01-2024')
GO
INSERT [dbo].[Suplidores] ([Nombre], [Producto], [Fecha_entrega]) VALUES (N'feltrx', N'Amoxicilina', N'03-01-2024')
GO
INSERT [dbo].[Suplidores] ([Nombre], [Producto], [Fecha_entrega]) VALUES (N'Laboquidon', N'Aspirina', N'01-01-2024')
GO
INSERT [dbo].[Suplidores] ([Nombre], [Producto], [Fecha_entrega]) VALUES (N'mamey', N'Metformina', N'07-01-2024')
GO
INSERT [dbo].[Suplidores] ([Nombre], [Producto], [Fecha_entrega]) VALUES (N'Rhs', N'Losartan', N'08-01-2024')
GO
INSERT [dbo].[Suplidores] ([Nombre], [Producto], [Fecha_entrega]) VALUES (N'Rjs', N'Atorvastatina', N'05-01-2024')
GO
INSERT [dbo].[Suplidores] ([Nombre], [Producto], [Fecha_entrega]) VALUES (N'Scj', N'Simvastatina', N'06-01-2024')
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [fk_pedidos_clientes] FOREIGN KEY([Nombre_cliente])
REFERENCES [dbo].[Clientes] ([Nombre_cliente])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [fk_pedidos_clientes]
GO
USE [master]
GO
ALTER DATABASE [FarmaciaLaPaz] SET  READ_WRITE 
GO
