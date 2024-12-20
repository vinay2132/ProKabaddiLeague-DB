USE [Pro_Kabaddi_League_Database]
GO
/****** Object:  Table [dbo].[STATISTICS_S]    Script Date: 12/2/2024 9:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATISTICS_S](
	[STAT_ID] [varchar](30) NOT NULL,
	[POINTS_SCORED] [int] NULL,
	[TACKLES_MADE] [int] NULL,
	[RAID_POINTS] [int] NULL,
	[DEFENSIVE_POINTS] [int] NULL,
	[PLAYER_ID] [varchar](50) NULL,
	[MATCH_ID] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[STAT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STATISTICS_S]  WITH CHECK ADD FOREIGN KEY([MATCH_ID])
REFERENCES [dbo].[MATCHES] ([MATCH_ID])
GO
ALTER TABLE [dbo].[STATISTICS_S]  WITH CHECK ADD FOREIGN KEY([PLAYER_ID])
REFERENCES [dbo].[PLAYER] ([PLAYER_ID])
GO
