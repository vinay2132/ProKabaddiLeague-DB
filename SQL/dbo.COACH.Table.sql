USE [Pro_Kabaddi_League_Database]
GO
/****** Object:  Table [dbo].[COACH]    Script Date: 12/2/2024 9:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COACH](
	[COACH_ID] [varchar](20) NOT NULL,
	[COACH_NAME] [varchar](50) NULL,
	[EXPERIENCE_YEARS] [int] NULL,
	[NATIONALITY] [varchar](30) NULL,
	[COACH_DOB] [date] NULL,
	[COACHING_LICENSE] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[COACH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
