Create function [dbo].[fn_rank_gens]
(
@name varchar(10),
@familia int
)
returns int
as
begin
declare @valor int;

set @valor = 0;

if exists (select Contribution from Gens_Rank where Name = @name and Contribution > 9999)
begin
WITH cte AS (
SELECT DENSE_RANK() OVER (ORDER BY contribution DESC) AS Rank, Name
FROM Gens_Rank where family=@familia)
select @valor = rank from cte where Name = @name;
end

return @valor;
end
GO

ALTER PROCEDURE [dbo].[WZ_GetCharacterGensInfo]
@Name varchar(10),
@Family int
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

IF ( @Family = 1 )
BEGIN
SELECT dbo.fn_rank_gens(@Name,1)as Rank, Contribution FROM Gens_Rank WHERE Name = @Name and Family=1
END
ELSE
BEGIN
SELECT dbo.fn_rank_gens(@Name,2)as Rank, Contribution FROM Gens_Rank WHERE Name = @Name and Family=2
END

SET NOCOUNT OFF
SET XACT_ABORT OFF

END
GO 