USE [BonVino]
GO
/****** Object:  Table [dbo].[Sommelier]    Script Date: 30/5/2024 13:22:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sommelier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha_validacion] [datetime] NULL,
	[nombre] [varchar](50) NULL,
	[nota_presentacion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
