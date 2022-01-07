CREATE TABLE [dbo].[CustomQuest](
	[Name] [varchar](10) NOT NULL,
	[Quest] [int] NOT NULL DEFAULT (0),
 CONSTRAINT [PK_CustomQuest] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[CustomQuest]  WITH CHECK ADD  CONSTRAINT [FK_CustomQuest_Character] FOREIGN KEY([Name])
REFERENCES [dbo].[Character] ([Name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CustomQuest] CHECK CONSTRAINT [FK_CustomQuest_Character]
GO
