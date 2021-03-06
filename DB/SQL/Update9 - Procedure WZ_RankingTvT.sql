CREATE Procedure [dbo].[WZ_TvTRanking] 
@Account varchar(10),
@Name varchar(10),
@KillCount int,
@DeadCount int
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

IF NOT EXISTS (SELECT Name FROM RankingTvT WHERE Name=@Name)
BEGIN

	 INSERT INTO RankingTvT (Name,Kills,Deads) VALUES (@Name,@KillCount,@DeadCount)

END
ELSE
BEGIN

	UPDATE RankingTvT SET Kills=Kills+@KillCount, Deads=Deads+@DeadCount WHERE Name=@Name

END

SET NOCOUNT OFF
SET XACT_ABORT OFF

END

