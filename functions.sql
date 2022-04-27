--function to display list of players in each team

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

--Function to get bookings of each match

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

--Function to get number of tickets sold per each match

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