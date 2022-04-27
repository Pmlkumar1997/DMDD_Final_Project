------------------------------------------------------------------------------------------------------------------------------
--function to display list of players in each team
--Team id should be passed as input

--SET SERVEROUTPUT ON;
--variable c refcursor
--EXECUTE :c := list_players('RCB');
--print :c;
------------------------------------------------------------------------------------------------------------------------------

create or replace function list_players (v_team_id VARCHAR2 )
RETURN sys_refcursor AS
l_cursor sys_refcursor;
begin
if (v_team_id = '' or v_team_id is null)
then
    dbms_output.put_line('Team id cannot be empty');
end if;
  open l_cursor for 
    select player_name,player_role,player_type, bid_amount
    from TEAM_PLAYER
    where bought_by = (select team_name from team where LOWER(team_id) = LOWER(v_team_id)); 
  return l_cursor;
end;
/

------------------------------------------------------------------------------------------------------------------------------
--Function to get bookings of each match
--Enter match id between 900 and 927

--SET SERVEROUTPUT ON;
--variable num_match_bookings NUMBER
--EXECUTE :num_match_bookings := match_num_bookings(901);
--print :num_match_bookings;
------------------------------------------------------------------------------------------------------------------------------

create or replace function match_num_bookings(match_nm IN NUMBER)
RETURN NUMBER
AS
    v_bookings NUMBER;
BEGIN
if (match_nm = '' or match_nm is null)
then
    dbms_output.put_line('Match id cannot be empty');
end if; 
select count(booking_id) INTO v_bookings
from fixture_bookings 
where match_id = match_nm
group by match_id;
DBMS_OUTPUT.PUT_LINE('No of bookings: ' || v_bookings);
RETURN v_bookings;
END;
/

------------------------------------------------------------------------------------------------------------------------------
--Function to get number of tickets sold per each match
--Enter match id between 900 and 927

--SET SERVEROUTPUT ON;
--variable num_match_bookings NUMBER
--EXECUTE :num_match_bookings := match_num_bookings('900');
--print :num_match_bookings;
------------------------------------------------------------------------------------------------------------------------------

create or replace function match_num_tickets(match_nm IN NUMBER)
RETURN NUMBER
AS
    v_bookings NUMBER;
BEGIN
if (match_nm = '' or match_nm is null)
then
    dbms_output.put_line('Match id cannot be empty');
end if; 
select sum(ticket_count) INTO v_bookings
from fixture_bookings 
where match_id = match_nm
group by match_id;
DBMS_OUTPUT.PUT_LINE('No of bookings: ' || v_bookings);
RETURN v_bookings;
END;
/

------------------------------------------------------------------------------------------------------------------------------
--function to find the number of tickets of each type sold per match
--There are three types of tickets SILVER/GOLD/PLATINUM

--SET SERVEROUTPUT ON;
--variable tic_type refcursor;
--EXECUTE :tic_type := fixture_ticket_type_sold('GOLD');
--print :tic_type;
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION fixture_ticket_type_sold(tick_type VARCHAR2)
RETURN sys_refcursor AS
l_cursor sys_refcursor;
begin
  open l_cursor for 
    select sum(ticket_count) as num_tickets, match_id,team1_id,team2_id, ticket_type 
    from fixture_bookings where UPPER(ticket_type) = UPPER(tick_type)
    group by match_id,team1_id,team2_id,ticket_type;
  return l_cursor;

END;


------------------------------------------------------------------------------------------------------------------------------
--function to get the schedule of a league
--Inserted information for vivo ipl 2020, vivo ipl 2021

--SET SERVEROUTPUT ON;
--variable schedule refcursor;
--EXECUTE :schedule := getLeagueSchedule('Vivo IPL 2021');
--print :schedule;
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION getLeagueSchedule(league_nm IN VARCHAR2)
RETURN sys_refcursor AS
l_cursor sys_refcursor;
v_league_nm VARCHAR2(30) := replace(initcap(league_nm),' ');
begin
dbms_output.put_line(league_nm);
  open l_cursor for 
    select match_id,team1_id,team2_id,match_date,venue_name,city from FIXTURE_SCHEDULE
    where league_id = (select league_id from league where (replace(initcap(league_name),' ')) = v_league_nm);
  return l_cursor;

END;


------------------------------------------------------------------------------------------------------------------------------
--function to get the revenue generated in the whole league
--Inserted information for vivo ipl 2020, vivo ipl 2021

--SET SERVEROUTPUT ON;
--variable league_rev NUMBER(10);
--EXECUTE :league_rev := league_revenue('Vivo IPL 2021');
--print :league_rev;
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION league_revenue(league_nm IN VARCHAR2)
RETURN NUMBER
AS 
    v_league_revenue NUMBER(10);
BEGIN

select sum(revenue) INTO v_league_revenue from (select fx.match_id as match_id, SUM(fx.ticket_count*tc.ticket_price) as revenue from ADMIN.fixture_bookings fx
join ADMIN.ticket_class tc on fx.ticket_type = tc.ticket_type
where league_id = (select league_id from league where league_name = league_nm )
group by match_id);

RETURN v_league_revenue;
END;

-----------------------------------------------------------------------------------------------------------------------------
--Function to get the number of wins in each venue of a team
--Inserted information for vivo ipl 2020, vivo ipl 2021

--SET SERVEROUTPUT ON;
--variable wins refcursor;
--EXECUTE :wins := team_venue_wins('RCB','Vivo IPL 2021');
--print :wins;
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION team_venue_wins(team_id VARCHAR2, league_nm VARCHAR)
RETURN sys_refcursor
AS
v_league_nm VARCHAR2(30):= replace(initcap(league_nm),' ');
l_cursor sys_refcursor;
BEGIN
if team_id is null or league_nm is null
then
    dbms_output.put_line('Input cannot be empty');
end if;
open l_cursor for 
    select venue_name,count(winner) from venue_winner 
    where winner = team_id and replace(initcap(league_name),' ') = v_league_nm 
    group by venue_name;
RETURN l_cursor;
END;

