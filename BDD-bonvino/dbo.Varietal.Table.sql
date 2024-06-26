USE [BonVino]
GO
/****** Object:  Table [dbo].[Varietal]    Script Date: 30/5/2024 13:22:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Varietal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[porcentaje_composicion] [int] NULL,
	[descripcion] [varchar](100) NULL,
	[tipo_uva] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Varietal]  WITH CHECK ADD FOREIGN KEY([tipo_uva])
REFERENCES [dbo].[TipoUva] ([id])
GO
