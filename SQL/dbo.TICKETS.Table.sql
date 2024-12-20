USE [Pro_Kabaddi_League_Database]
GO
/****** Object:  Table [dbo].[TICKETS]    Script Date: 12/2/2024 9:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TICKETS](
	[TICKET_ID] [varchar](20) NOT NULL,
	[TICKET_PRICE] [decimal](10, 2) NULL,
	[SEAT_NUMBER] [varchar](10) NULL,
	[PURCHASE_DATE] [date] NULL,
	[BUYER_NAME] [varchar](50) NULL,
	[MATCH_ID] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[TICKET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TICKETS]  WITH CHECK ADD FOREIGN KEY([MATCH_ID])
REFERENCES [dbo].[MATCHES] ([MATCH_ID])
GO
