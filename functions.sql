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
if (v_team_id NOT IN ('RCB','CSK','DC','KXIP','BCCI','KKR','MI','RR','SRH'))
then
    dbms_output.put_line('Enter team id in RCB/CSK/DC/KXIP/BCCI/KKR/MI/RR/SRH');
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
if not (match_nm between 900 and 927)
then
    dbms_output.put_line('Enter match id between 900 and 928 to get bookings');
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
if not (match_nm between 900 and 927)
then
    dbms_output.put_line('Enter match id between 900 and 928 to get bookings');
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
if tick_type is null or tick_type = ''
then
    dbms_output.put_line('Ticket type cannot be empty');
end if;
if tick_type not in ('GOLD','SILVER','PLATINUM')
then
    dbms_output.put_line('select a ticket type in silver/gold/platinum');
end if;
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
begin
if league_nm is null or league_nm = ''
then
    dbms_output.put_line('League name cannot be null');
end if;
if v_league_nm not in ('VivoIPL 2021','VivoIPL 2020')
then
    dbms_output.put_line('Please enter valid league name');
end if;
dbms_output.put_line(league_nm);
  open l_cursor for 
    select match_id,team1_id,team2_id,match_date,venue_name,city from FIXTURE_SCHEDULE
    where league_id = (select league_id from league where (replace(initcap(league_name),' ')) = v_league_nm) order by match_id;
  return l_cursor;

END;


------------------------------------------------------------------------------------------------------------------------------
--function to get the revenue generated in the whole league
--Inserted information for vivo ipl 2020, vivo ipl 2021

SET SERVEROUTPUT ON;
variable l_rev NUMBER;
EXECUTE :l_rev := league_revenue(1006);
print :l_rev;
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION league_revenue(league_num IN NUMBER)
RETURN NUMBER
AS 
    v_league_revenue NUMBER(10):=0;
    v_min_id NUMBER:=0;
    v_max_id NUMBER:=0;
BEGIN
select min(league_id),max(league_id) INTO v_min_id, v_max_id from league;
if league_num is null or league_num = ''
then
    dbms_output.put_line('League name cannot be null');
end if;
if not league_num between v_min_id and v_max_id
then
    dbms_output.put_line('Please enter a league number between ' || v_min_id || 'and' || v_max_id);
end if;
select sum(revenue) INTO v_league_revenue from (select fx.match_id as match_id, SUM(fx.ticket_count*tc.ticket_price) as revenue from ADMIN.fixture_bookings fx
join ADMIN.ticket_class tc on fx.ticket_type = tc.ticket_type
where league_id = league_num
group by match_id);

RETURN v_league_revenue;
exception
    WHEN NO_DATA_FOUND
    THEN
        dbms_output.put_line('No Such League');
END;
/

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
if (team_id NOT IN ('RCB','CSK','DC','KXIP','BCCI','KKR','MI','RR','SRH'))
then
    dbms_output.put_line('Enter team id in RCB/CSK/DC/KXIP/BCCI/KKR/MI/RR/SRH');
end if;
if v_league_nm not in ('VivoIPL 2021','VivoIPL 2020')
then
    dbms_output.put_line('Please enter valid league name');
end if;
open l_cursor for 
    select venue_name,count(winner) from venue_winner 
    where winner = team_id and replace(initcap(league_name),' ') = v_league_nm 
    group by venue_name;
RETURN l_cursor;
END;


------------------------------------------------------------------------------------------------------------------------------
--Function to get the details of matches played by each team in the league

--SET SERVEROUTPUT ON;
--variable fixts refcursor;
--EXECUTE :fixts := getTeamFixtures('RCB',1006);
--print :fixts;
------------------------------------------------------------------------------------------------------------------------------

create or replace FUNCTION getTeamFixtures(teamid VARCHAR2, league_num NUMBER)
RETURN sys_refcursor AS
l_cursor sys_refcursor;
BEGIN
if teamid is null or league_num is null
then
    dbms_output.put_line('Input cannot be empty');
end if;
if (teamid NOT IN ('RCB','CSK','DC','KXIP','BCCI','KKR','MI','RR','SRH'))
then
    dbms_output.put_line('Enter team id in RCB/CSK/DC/KXIP/BCCI/KKR/MI/RR/SRH');
end if;
if not (league_num between 1000 and 1006)
then
    dbms_output.put_line('Please enter a league id between 1001 and 1006');
end if;
if league_num NOT IN (1005,1006)
then
    dbms_output.put_line('Fixture Information not available for this league');
end if;
  open l_cursor for 
    select  match_date ,team1_id, team2_id, winner,win_details from fixture
    where (team1_id = teamid or team2_id = teamid) and league_id = league_num;
return l_cursor;

END;
/

