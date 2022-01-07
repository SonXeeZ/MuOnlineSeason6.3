

CREATE TABLE [dbo].[RankingKingGuild](
	[Name] [varchar](8) NOT NULL,
	[Score] [int] NULL,
	[Score_semanal] [int] NULL,
 CONSTRAINT [PK_RankingKingGuild] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[RankingKingPlayer](
	[Name] [varchar](10) NOT NULL,
	[Score] [int] NULL,
	[Score_semanal] [int] NULL,
 CONSTRAINT [PK_RankingKingPlayer] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


