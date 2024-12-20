USE [Pro_Kabaddi_League_Database]
GO
/****** Object:  Table [dbo].[FANS]    Script Date: 12/2/2024 9:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FANS](
	[Fan_ID] [int] NOT NULL,
	[Fan_Name] [varchar](30) NULL,
	[Fan_Email] [varchar](50) NULL,
	[Preferred_Team_ID] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Fan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FANS]  WITH CHECK ADD FOREIGN KEY([Preferred_Team_ID])
REFERENCES [dbo].[TEAM] ([Team_ID])
GO
