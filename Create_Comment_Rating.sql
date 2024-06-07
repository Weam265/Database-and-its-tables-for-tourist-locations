SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment_Rating](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[AttractionId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[UserComment] [nvarchar](max) NOT NULL,
	[UserRating] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment_Rating] ADD  CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment_Rating]  WITH CHECK ADD  CONSTRAINT [FK_Attraction_Comment] FOREIGN KEY([AttractionId])
REFERENCES [dbo].[Attraction] ([AttractionId])
GO
ALTER TABLE [dbo].[Comment_Rating] CHECK CONSTRAINT [FK_Attraction_Comment]
GO
ALTER TABLE [dbo].[Comment_Rating]  WITH CHECK ADD  CONSTRAINT [FK_User_Comment] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Comment_Rating] CHECK CONSTRAINT [FK_User_Comment]
GO
