ALTER Procedure [dbo].[WZ_DeleteCharacter] 
@Account varchar(10),
@Name varchar(10)
AS
BEGIN

SET NOCOUNT ON
SET	XACT_ABORT ON

DECLARE @Result tinyint

SET @Result = 0

If NOT EXISTS ( SELECT  Name  FROM  Character WHERE Name = @Name )
	begin
		SET @Result	= 0
	end
else
	begin
		SET @Result = 1
		DELETE FROM Character WHERE AccountID = @Account AND Name= @Name
		DELETE FROM OptionData WHERE Name = @Name
		DELETE FROM QuestKillCount WHERE Name = @Name
		DELETE FROM MasterSkillTree WHERE Name = @Name
		DELETE FROM EventLeoTheHelper WHERE Name = @Name
		DELETE FROM EventSantaClaus WHERE Name = @Name
		DELETE FROM QuestWorld WHERE Name = @Name
		DELETE FROM Gens_Rank WHERE Name = @Name
		DELETE FROM Gens_Reward WHERE Name = @Name
		DELETE FROM RankingDuel WHERE Name = @Name
		DELETE FROM RankingBloodCastle WHERE Name = @Name
		DELETE FROM RankingChaosCastle WHERE Name = @Name
		DELETE FROM RankingDevilSquare WHERE Name = @Name
		DELETE FROM RankingIllusionTemple WHERE Name = @Name
		DELETE FROM HelperData WHERE Name = @Name
		DELETE FROM RankingKingPlayer WHERE Name = @Name
	end

SELECT @Result

SET NOCOUNT OFF
SET	XACT_ABORT OFF

END