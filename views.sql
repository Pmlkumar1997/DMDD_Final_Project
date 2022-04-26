CREATE OR REPLACE VIEW TEAM_PLAYER AS
select pl.player_name, pl.base_price,pl.player_role,pl.player_type,bid.bid_amount, ow.team_name as bought_by from ADMIN.bid bid
inner join ADMIN.team_owner ow on ow.owner_id=bid.owner_id
inner join ADMIN.player pl on pl.player_id=bid.player_id
where bid.is_final_bid='T';


CREATE OR REPLACE VIEW VENUE_WINNER AS
select lg.league_name,fx.team1_id, fx.team2_id, vn.venue_name, fx.winner from fixture fx
join venue vn on fx.venue_id = vn.venue_id
join league lg on fx.league_id = lg.league_id;


CREATE OR REPLACE VIEW FIXTURE_BOOKINGS AS
select bk.booking_id,fx.match_id,fx.team1_id, fx.team2_id, vn.venue_name, bk.ticket_count, ticket.ticket_type,fx.league_id from fixture fx
join booking bk on fx.match_id = bk.match_id
join ticket_class ticket on bk.ticket_type_id = ticket.ticket_id
join venue vn on fx.venue_id = vn.venue_id;


CREATE OR REPLACE VIEW PLAYER_PAYMENT AS
select pl.player_name, ow.owner_name, bid.bid_amount as paid_amount, pay.reference_num as transaction_id from payment pay
join bid bid on pay.bid_id = bid.bid_id
join team_owner ow on bid.owner_id = ow.owner_id  
join player pl on pl.player_id = pay.player_id;


CREATE OR REPLACE VIEW FIXTURE_SCHEDULE AS
select fx.match_id, fx.team1_id, fx.team2_id,vn.venue_name,vn.city, fx.match_date, fx.league_id
from fixture fx join venue vn on fx.venue_id = vn.venue_id;

