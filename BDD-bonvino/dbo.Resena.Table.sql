USE [BonVino]
GO
/****** Object:  Table [dbo].[Resena]    Script Date: 30/5/2024 13:22:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resena](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comentario] [varchar](100) NULL,
	[es_premium] [bit] NULL,
	[fecha_reseña] [datetime] NULL,
	[puntaje] [int] NULL,
	[id_sommelier] [int] NULL,
	[id_vino] [int] NULL,
	[id_enofilo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Resena]  WITH CHECK ADD FOREIGN KEY([id_enofilo])
REFERENCES [dbo].[Enofilo] ([id])
GO
ALTER TABLE [dbo].[Resena]  WITH CHECK ADD FOREIGN KEY([id_sommelier])
REFERENCES [dbo].[Sommelier] ([id])
GO
ALTER TABLE [dbo].[Resena]  WITH CHECK ADD FOREIGN KEY([id_vino])
REFERENCES [dbo].[Vino] ([id])
GO
