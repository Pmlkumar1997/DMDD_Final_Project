DROP SEQUENCE BOOKING_SEQ;

DROP SEQUENCE TICKET_CLASS_SEQ;

DROP SEQUENCE TEAM_STANDINGS_SEQ;

DROP SEQUENCE REFERENCE_NUMBER_SEQ;


CREATE SEQUENCE BOOKING_SEQ START WITH 5000 INCREMENT BY 1;

CREATE SEQUENCE TICKET_CLASS_SEQ START WITH 2000 INCREMENT BY 1;

CREATE SEQUENCE TEAM_STANDINGS_SEQ START WITH 3000 INCREMENT BY 1;

CREATE SEQUENCE REFERENCE_NUMBER_SEQ START WITH 20000 INCREMENT BY 1;
