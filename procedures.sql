------------------------------------------------------------------------------------------------------------------------------
--procedure to get the player information

--SET SERVEROUTPUT ON;
--EXECUTE get_player_info('AmbatiRayudu');
------------------------------------------------------------------------------------------------------------------------------

create or replace procedure get_player_info ( player_nm VARCHAR2 )
IS
v_role team_player.player_role%type;
v_team team_player.bought_by%type;
v_base_price team_player.base_price%type;
v_bid_amount team_player.bid_amount%type;
v_country player.country%type;
v_player_nm VARCHAR2(30) :=  replace(initcap(player_nm),' ');
begin
    if (player_nm = '' or player_nm is null)
    then
        dbms_output.put_line('Player name cannot be empty...please enter the player name to get details');
        RETURN;
    end if;    
    select tp.player_role, tp.bought_by, tp.base_price, tp.bid_amount,pl.country into v_role, v_team, v_base_price, v_bid_amount, v_country
    from team_player tp join player pl
    on tp.player_name = pl.player_name
    where replace(initcap(pl.player_name),' ') = v_player_nm;
    
    DBMS_OUTPUT.PUT_LINE('Player Name: ' || v_player_nm);
    DBMS_OUTPUT.PUT_LINE('Team Name: ' || v_team);
    DBMS_OUTPUT.PUT_LINE('Role: ' || v_role);
    DBMS_OUTPUT.PUT_LINE('Country: ' || v_country);
    DBMS_OUTPUT.PUT_LINE('Base price: ' || v_base_price);
    DBMS_OUTPUT.PUT_LINE('Sold for: ' || v_bid_amount);
exception
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Player ' || player_nm || ' not found.');
end;
/

------------------------------------------------------------------------------------------------------------------------------
--procedure to check if a player is participating the league

--SET SERVEROUTPUT ON;
--EXECUTE playerAvailability('AmabatiRayudu');
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE playerAvailability(player_nm VARCHAR2)
AS
v_player_count VARCHAR2(30);
v_player_nm VARCHAR2(30):= replace(initcap(player_nm),' ');
BEGIN
if (player_nm is null or player_nm = '')
THEN
    dbms_output.put_line('Player name cannot be empty');
    RETURN;
END IF;
select count(player_name) into v_player_count from player where UPPER(player_name) = UPPER(v_player_nm)  ;

if (v_player_count = 1)
THEN 
    dbms_output.put_line('Player is available for bidding');
ELSE
    dbms_output.put_line('Player is currently unavailable and not participating in the league');
END IF;
exception
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Player ' || player_nm || ' not found.');
END;
/

------------------------------------------------------------------------------------------------------------------------------
--Procedure to delete a user account - Admin can delete the users by using their user_id
--This procedure can be used to demonstrate the use of triggers deletePlayerAccount,deleteOwnerAccount,deleteAudienceAccount

--SET SERVEROUTPUT ON;
--EXECUTE deleteUserAccount(1);
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE deleteUserAccount(user_num NUMBER)
AS
v_username VARCHAR2(30);
v_user_id NUMBER;
v_min_id NUMBER :=0;
v_max_id NUMBER :=0;

BEGIN
IF user_num is null or user_num = ''
then
    dbms_output.put_line('User id cannot be empty');
    return;
end if;
select min(user_id),max(user_id) into v_min_id, v_max_id from user_account;
IF user_num NOT between v_min_id and v_max_id
then
    dbms_output.put_line('User does not exist in database..Enter id between '||v_min_id||' and '||v_max_id);
    return;
end if;
dbms_output.put_line(user_num);
select username into v_username from user_account where user_id = user_num;
dbms_output.put_line(v_username);

delete from user_account where user_id = v_user_id;
commit;

dbms_output.put_line('User deleted successfully');
exception
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('User not found.');
END;
/

------------------------------------------------------------------------------------------------------------------------------
--procedure to check if a player is sold out

--SET SERVEROUTPUT ON;
--EXECUTE isPlayerSold('DWAINEPRETORIUS');
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE isPlayerSold(player_nm VARCHAR2)
AS
v_player_count VARCHAR2(30);
v_player_nm VARCHAR2(30):= replace(initcap(player_nm),' ');
v_player_name VARCHAR2(30);
BEGIN
if (player_nm is null or player_nm = '')
THEN
    dbms_output.put_line('Player name cannot be empty');
    RETURN;
END IF;
select count(player_name) into v_player_count 
from player where replace(initcap(player_name),' ') = v_player_nm and team_id = 'BCCI';

if (v_player_count = 1)
THEN 
    dbms_output.put_line('Player is available for bidding');
ELSE
    dbms_output.put_line('Player is aleady sold out');
END IF;
exception
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Player ' || player_nm || ' not found.');
END;
/

------------------------------------------------------------------------------------------------------------------------------
--procedure to place a new bid on a player

--SET SERVEROUTPUT ON;
--EXECUTE placeBid('SHIMRONHETMEYER','SharukhKhan',12230000,1006);
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE placeBid(player_nm VARCHAR2, owner_nm VARCHAR2, bid_amnt NUMBER, league_num NUMBER)
AS
v_base_price NUMBER := 0;
v_team_id VARCHAR2(10);
v_max_bid_id NUMBER:=0;
v_allotted_amount NUMBER := 0;
v_player_id NUMBER := 0;
v_owner_id NUMBER := 0;
BEGIN

if (player_nm = '' or player_nm is null or owner_nm = '' or owner_nm is null or league_num = '' or league_num is null)
then
    dbms_output.put_line('player/owner/league id cannot be empty');
    return;
end if;
if not (league_num between 1000 and 1006)
then
    dbms_output.put_line('Please enter a league id between 1001 and 1006');
    return;
end if;
if (league_num != 1006)
then
    dbms_output.put_line('Bid Information not available for this league');
    return;
end if;

select base_price, team_id,player_id INTO v_base_price, v_team_id,v_player_id from player where replace(initcap(player_name),' ') = replace(initcap(player_nm),' ');
select alloted_amount,owner_id INTO v_allotted_amount,v_owner_id from team_owner where replace(initcap(owner_name),' ') = replace(initcap(owner_nm),' ');
if (v_base_price>bid_amnt)
then
    dbms_output.put_line('Bid amount cannot be less than base price of the player');
    return;
end if;
if (v_allotted_amount<bid_amnt)
then
    dbms_output.put_line('You cannot place a bid greater than the allotted amount');
    return;
end if;
if (v_team_id!='BCCI')
then
    dbms_output.put_line('Player is already sold to another team');
    return;
end if;

SELECT MAX(bid_id) INTO v_max_bid_id FROM bid;
INSERT INTO BID values (v_max_bid_id+1,v_owner_id,v_player_id,sysdate,'F',bid_amnt,league_num);
COMMIT;
exception
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Player or owner not found.');
END;
/

------------------------------------------------------------------------------------------------------------------------------
--Procedure to get the winner of the league
--SET SERVEROUTPUT ON;
--EXECUTE leagueWinner('Vivo IPL 2020');
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE leagueWinner(league_nm VARCHAR2)
AS
v_league_nm VARCHAR2(30) := replace(initcap(league_nm),' ');
v_team_id VARCHAR2(10);
BEGIN
if league_num is null or league_num = ''
then
    dbms_output.put_line('League name cannot be null');
    return;
end if;
select team_id into v_team_id from team_standings where league_id = (select league_id from league where replace(initcap(league_name),' ') = v_league_nm)
order by points desc fetch first row only;

dbms_output.put_line(v_team_id || ' won ' || league_nm);
exception
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('League info found.');
END;
/

----------------------------------------------------------------------------------------
--Procedure to add a new player into the player table
--For the player to get added to user account must be created
--Used max id +1 as player_id

--SET SERVEROUTPUT ON;
--EXECUTE addNewPlayer('ArjunTendulkar','Arjun','DOMESTIC','BOWLER','INDIA');
------------------------------------------------------------------------------------------

create or replace PROCEDURE addNewPlayer(
player_nm IN VARCHAR2, 
user_name IN VARCHAR2,   
v_player_type IN VARCHAR2, 
v_player_role IN VARCHAR2, 
v_country IN VARCHAR2)
AS
v_user_id NUMBER(10);
v_max_player_id NUMBER(10);
v_user_count NUMBER(10);
v_player_count NUMBER(10);
--v_player_nm VARCHAR2(30) := replace(initcap(player_nm));
BEGIN
if player_nm is null or user_name is null  or v_player_type is null or v_player_role is null or v_country is null
then
    dbms_output.put_line('Any field cannot be empty');
    return;
end if;
select user_id into v_user_id from user_account where username = user_name;
select count(user_id) into v_user_count from user_account where username = user_name;
--if v_user_id is null
--then 
   -- dbms_output.put_line('create a user account first');
   -- return;
--end if;
if v_user_count = 0
then 
    dbms_output.put_line('User Account does not exist');
    return;
end if;
select count(player_id) into v_player_count from player where replace(initcap(player_name),'') = replace(initcap(player_nm),'');
if v_user_count > 0
then 
    dbms_output.put_line('Player already exist');
    return;
end if;
select max(player_id) into v_max_player_id from player;

INSERT INTO player values(v_max_player_id+1, v_user_id, 'BCCI', player_nm, DEFAULT, v_player_type, v_player_role, v_country);
EXCEPTION
WHEN NO_DATA_FOUND
THEN
        dbms_output.put_line('Player not found in user account');

END;
/
