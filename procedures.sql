--procedure to get the player information

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

--procedure to check if a player is participating the league

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
END;
/

--procedure to delete user account
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

