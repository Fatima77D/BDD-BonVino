USE [BonVino]
GO
/****** Object:  Table [dbo].[Vino]    Script Date: 30/5/2024 13:22:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vino](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[anada] [int] NULL,
	[nota_cata_bodega] [varchar](200) NULL,
	[ruta_imagen_etiqueta] [varchar](100) NULL,
	[precio_ars] [decimal](11, 2) NULL,
	[id_bodega] [int] NULL,
	[id_enofilo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vino]  WITH CHECK ADD FOREIGN KEY([id_bodega])
REFERENCES [dbo].[Bodega] ([id])
GO
ALTER TABLE [dbo].[Vino]  WITH CHECK ADD FOREIGN KEY([id_enofilo])
REFERENCES [dbo].[Enofilo] ([id])
GO
