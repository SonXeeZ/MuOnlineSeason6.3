CREATE Procedure [dbo].[WZ_SetRewardAll] 
@AccountGM varchar(10),
@NameGM varchar(10),
@Type int,
@Value int
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

-- Tipo 1: Update Cash | Wcoin
	IF @Type = 1 
	BEGIN
		UPDATE CashShopData SET WCoinC = WCoinC + @Value
		--Para Season 4
		--UPDATE MEMB_INFO SET Cash = Cash + @Value
	END
	
-- Tipo 2: Update Gold | WcoinP
	IF @Type = 2 
	BEGIN
		UPDATE CashShopData SET WCoinP = WCoinP + @Value
		--Para Season 4
		--UPDATE MEMB_INFO SET Gold = Gold + @Value 
	END

-- Tipo 3: Update PcPoints | GoblinPoints
	IF @Type = 3 
	BEGIN
		UPDATE CashShopData SET GoblinPoint = GoblinPoint + @Value
		--Para Season 4
		--UPDATE PcPointdata SET PcPoint = PcPoint + @Value 
	END
	
SET NOCOUNT OFF
SET XACT_ABORT OFF

END


