USE [Pro_Kabaddi_League_Database]
GO
/****** Object:  Table [dbo].[TEAM]    Script Date: 12/2/2024 9:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEAM](
	[Team_ID] [varchar](20) NOT NULL,
	[Team_Name] [varchar](30) NULL,
	[Established_Year] [int] NULL,
	[Home_Ground] [varchar](50) NULL,
	[Coach_ID] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Team_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TEAM]  WITH CHECK ADD FOREIGN KEY([Coach_ID])
REFERENCES [dbo].[COACH] ([COACH_ID])
GO
