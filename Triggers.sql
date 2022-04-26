-- Trigger to update owners purse after final bid is true

create or replace TRIGGER updateAmountAfterBid  
AFTER UPDATE ON BID
FOR EACH ROW
BEGIN

UPDATE TEAM_OWNER 
SET alloted_amount = alloted_amount - :old.bid_amount
where owner_id = :old.owner_id;

END;

-- trigger to remove a user(player) account when a player is deleted

create or replace TRIGGER removePlayerAccount
AFTER DELETE ON Player
FOR EACH ROW
BEGIN
  DELETE FROM user_account WHERE user_id = :old.user_id ;
END;

-- trigger to remove a user(owner) account when a owner is deleted

create or replace TRIGGER removeOwnerAccount
AFTER DELETE ON TEAM_OWNER
FOR EACH ROW
BEGIN
  DELETE FROM user_account WHERE user_id = :old.user_id ;
END;

-- trigger to remove a user(audience) account when a audience is deleted

create or replace TRIGGER removeAudienceAccount
AFTER DELETE ON AUDIENCE
FOR EACH ROW
BEGIN
  DELETE FROM user_account WHERE user_id = :old.user_id ;
END;

-- trigger to update team_standings table after a fixture

create or replace TRIGGER matchWinner  
AFTER INSERT OR UPDATE ON FIXTURE
FOR EACH ROW
BEGIN

UPDATE TEAM_STANDINGS
SET TOTAL_MATCHES = TOTAL_MATCHES+1,
MATCHES_WON = MATCHES_WON+1,
POINTS = POINTS+2
WHERE TEAM_STANDINGS.TEAM_ID = :old.WINNER;

COMMIT;
END;

-- trigger to assign a player to a team

create or replace TRIGGER assignPlayer  
AFTER UPDATE ON BID
FOR EACH ROW
BEGIN

UPDATE PLAYER 
SET TEAM_ID = (SELECT team_id from team 
                where team_name = (SELECT TEAM_NAME 
                                    from TEAM_OWNER 
                                    where owner_id = :old.owner_id));

END;
