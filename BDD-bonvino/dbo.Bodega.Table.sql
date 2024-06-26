USE [BonVino]
GO
/****** Object:  Table [dbo].[Bodega]    Script Date: 30/5/2024 13:22:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bodega](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[coordenadas_ubicacion] [varchar](100) NULL,
	[descripcion] [varchar](200) NULL,
	[historia] [varchar](200) NULL,
	[nombre] [varchar](50) NULL,
	[periodo_actualizacion] [datetime] NULL,
	[id_region] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bodega]  WITH CHECK ADD FOREIGN KEY([id_region])
REFERENCES [dbo].[RegionVitivinicola] ([id])
GO
