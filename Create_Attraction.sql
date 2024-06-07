SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attraction](
	[AttractionId] [int] IDENTITY(1,1) NOT NULL,
	[AttractionName] [nvarchar](255) NOT NULL,
	[Descreption] [nvarchar](max) NOT NULL,
	[LocationId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attraction] ADD  CONSTRAINT [PK_Attraction] PRIMARY KEY CLUSTERED 
(
	[AttractionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attraction]  WITH CHECK ADD  CONSTRAINT [FK_Location_Attraction] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
GO
ALTER TABLE [dbo].[Attraction] CHECK CONSTRAINT [FK_Location_Attraction]
GO
