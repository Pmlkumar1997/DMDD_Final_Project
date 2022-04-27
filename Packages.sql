----------------------------------------------------------------------------------------------------------------------------
--This package is used to registration/updation/authentication of user

--For authentication use createOrUpdateUser procedure - usertype (PLAYER/OWNER/AUDIENCE)

--SET SERVEROUTPUT ON;
--EXECUTE user_reg_auth.authenticate_user('Blake','Blake@1996','AUDIENCE');

--For registartion/updation use createOrUpdateUser procedure

--SET SERVEROUTPUT ON;
--EXECUTE user_reg_auth.createOrUpdateUser('','', 'Vikram@1993',27,'MALE','rajavikramarka@gmail.com','6889239819');
------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PACKAGE BODY user_reg_auth AS 

PROCEDURE createOrUpdateUser(
utype IN VARCHAR2,
uname IN VARCHAR2,
pwd IN VARCHAR2,
user_age IN NUMBER,
user_sex IN VARCHAR2,
mail IN VARCHAR2,
mobile IN VARCHAR2
)
IS
v_user_id NUMBER := 0;
v_userNameAlreadyTaken NUMBER := 0;
userNameAlreadyTakenEx EXCEPTION;
v_max_userid NUMBER := 0;
userExists NUMBER:=0;
newUserID VARCHAR2(20);
BEGIN
    IF utype is null or uname is null or pwd is null or user_age is null or user_sex is null or mail is null or mobile is null
    then
        dbms_output.put_line('Cannot accept null fields');
        RETURN;
    END IF;
    IF utype NOT IN ('PLAYER','OWNER', 'AUDIENCE')
        THEN
            dbms_output.put_line('Please select a user type in PLAYER/OWNER/AUDIENCE');
            RETURN;
        END IF;
        If not regexp_like(uname,'^.*[a-zA-Z].*$')  
        then
            dbms_output.put_line('Invalid username');
            RETURN;
        end if;
        if NOT regexp_like(pwd,'^.*[A-Z].*$')and regexp_like(pwd,'^.*[0-9].*$') and regexp_like(pwd,'^.*[^A-Z,0-9].*$')
        then
            raise_application_error(-20000, 'Password must include a mix of letters, numbers, and special characters');
            RETURN;
        end if;
        IF NOT REGEXP_LIKE(user_age, '^[[:digit:]]+$') THEN 
            dbms_output.put_line('Invalid age');
        END IF;
        IF NOT REGEXP_LIKE (mail, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$')
        THEN
            DBMS_OUTPUT.put_line ('Email address is invalid');
        RETURN;
        END IF;
        IF NOT REGEXP_LIKE(mobile, '^(\(\d{3}\))([[:blank:]])\d{3}-\d{4}$|^\d{3}(-)\d{3}(-)\d{4}$|^\d{10}$') THEN 
            dbms_output.put_line('Invalid phone number');
        RETURN;
        END IF;
    SELECT COUNT(1) INTO userExists FROM USER_ACCOUNT WHERE username = uname and user_type = utype;
    IF userExists > 0
    THEN
        UPDATE USER_ACCOUNT 
        SET USER_PWD = pwd
        WHERE username = uname;
    ELSE
        SELECT COUNT(1) INTO v_userNameAlreadyTaken FROM USER_ACCOUNT WHERE username = uname and user_type = utype;
        IF v_userNameAlreadyTaken > 0
            THEN RAISE userNameAlreadyTakenEx;
        END IF;
        SELECT MAX(user_id) INTO v_max_userid FROM USER_ACCOUNT;
        
        INSERT INTO USER_ACCOUNT VALUES (v_max_userid+1, utype, uname, pwd, user_age, user_sex, mail, mobile); 
        COMMIT;
    END IF;
    EXCEPTION
    WHEN userNameAlreadyTakenEx THEN
        DBMS_OUTPUT.PUT_LINE('User Name Already Taken. Please try with another user name');
END createOrUpdateUser;

PROCEDURE authenticate_user(uname in user_account.username%type, pwd in user_account.user_pwd%type, utype in user_account.user_type%type)
IS
v_username VARCHAR2(20);
v_password VARCHAR2(20);
v_user_type VARCHAR2(10);
BEGIN
IF utype is null or uname is null or pwd is null
then
    dbms_output.put_line('Cannot accept null fields');
    RETURN;
END IF;
SELECT username,user_pwd,user_type into v_username,v_password,v_user_type FROM user_account 
WHERE LOWER(username) = LOWER(uname) AND LOWER(user_pwd) = LOWER(pwd) AND LOWER(user_type) = LOWER(utype);

IF lower(v_username) = lower(uname) AND lower(v_password) = lower(pwd) AND lower(v_user_type) = lower(utype)
THEN
    dbms_output.put_line('User Authenticated...'|| 'Welcome ' || utype || ' Mr.' ||uname);
END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('Invalid username/password');

end authenticate_user;

end user_reg_auth;
/

