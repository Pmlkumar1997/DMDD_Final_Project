--Truncate Table User_Account before insertion

BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE USER_ACCOUNT' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table Team_Owner before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE TEAM_OWNER' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table Team before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE TEAM' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table Venue before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE VENUE' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table Player before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE PLAYER' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table Bid before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE BID' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table League before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE LEAGUE' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table Fixture before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE FIXTURE' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table Payment before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE PAYMENT' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table Ticket_Class before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE TICKET_CLASS' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table Booking before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE BOOKING' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

--Truncate Table Audience before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE AUDIENCE' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/


--Truncate Table Team_Standings before insertion
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE TEAM_STANDINGS' ;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

-- insert owner type users into the user_account

    INSERT INTO admin.user_account VALUES (   1, 'OWNER', 'VijayMallya', 'Royals@123', 55, 'MALE', 'royalchallengers18@gmail.com', 6175467398);
    INSERT INTO admin.user_account VALUES (   2, 'OWNER', 'Srinivasan', 'Kings@456', 43, 'MALE', 'superkings7@gmail.com', 8765234768);
    INSERT INTO admin.user_account VALUES (   3, 'OWNER', 'ShahrukhKhan', 'Riders@789', 48, 'MALE', 'knightriders99@gmail.com', 7156242356);
    INSERT INTO admin.user_account VALUES (   4, 'OWNER', 'Ambani', 'Indians@1947', 56, 'MALE', 'mightyindians25@gmail.com', 6467853549);
    INSERT INTO admin.user_account VALUES (   5, 'OWNER', 'Kalanithi', 'Risers@007', 36, 'MALE', 'sunrisers1997@gmail.com', 8175846574);
    INSERT INTO admin.user_account VALUES (   6, 'OWNER', 'ParthJindal', 'Devils@333', 41, 'MALE', 'daredevils333@gmail.com', 8135657832);
    INSERT INTO admin.user_account VALUES (   7, 'OWNER', 'ManojBadale', 'Rajasthan@77', 51, 'MALE', 'royalhurricanes55@gmail.com', 8733245876);
    INSERT INTO admin.user_account VALUES (   8, 'OWNER', 'PreityZinta', 'Punjab@67', 33, 'FEMALE', 'supergiants111@gmail.com', 8793452187);
    INSERT INTO admin.user_account VALUES (   9, 'OWNER', 'BCCIOWNER', 'BCCIowner@1967', 40, 'MALE', 'bcciindia@gmail.com', 8579997683);

-- insert Audience type users into the user_account

    INSERT INTO admin.user_account VALUES (  10 , 'AUDIENCE', 'Rakesh', 'Rakesh@1996', 25, 'MALE', 'rakeshkumar313@gmail.com', 9914567532);
    INSERT INTO admin.user_account VALUES (   11, 'AUDIENCE', 'Mahesh', 'Mahesh@1997', 29, 'MALE', 'maheshkumar39@gmail.com', 9835378965);
    INSERT INTO admin.user_account VALUES (   12, 'AUDIENCE', 'Suresh', 'Suresh@1973', 45, 'MALE', 'sureshkapuganti127@gmail.com', 8763454289);
    INSERT INTO admin.user_account VALUES (   13, 'AUDIENCE', 'Mohan', 'Mohan@1997', 29, 'MALE', 'mohankumar39@gmail.com', 9835378989);
    INSERT INTO admin.user_account VALUES (   14, 'AUDIENCE', 'Rajesh', 'Rajesh@4564', 21, 'MALE', 'rajeshkanna76@gmail.com', 7652986634);
    INSERT INTO admin.user_account VALUES (   15, 'AUDIENCE', 'Swathi', 'swathi@0007', 25, 'FEMALE', 'swathikrishna88@gmail.com', 8762934612);
    INSERT INTO admin.user_account VALUES (   16, 'AUDIENCE', 'Monal', 'Monal@1993', 29, 'FEMALE', 'monalgajjar66@gmail.com', 9823488213);
    INSERT INTO admin.user_account VALUES (   17, 'AUDIENCE', 'Akhil', 'Akhilsarthak@25', 26, 'MALE', 'akhilsarthak25@gmail.com', 6135874897);
    INSERT INTO admin.user_account VALUES (   18, 'AUDIENCE', 'Abhijeet', 'Abhijeet@197', 37, 'MALE', 'abhijeetdudkela22@gmail.com', 7634293366);
    INSERT INTO admin.user_account VALUES (   19, 'AUDIENCE', 'Avinash', 'Avinash@1996', 27, 'MALE', 'ravinashkumar33@gmail.com', 9833156739);
    INSERT INTO admin.user_account VALUES (   20, 'AUDIENCE', 'Sandhya', 'Sandhya@143', 23, 'FEMALE', 'Sandhya93@gmail.com', 9812564987);
    INSERT INTO admin.user_account VALUES (   21, 'AUDIENCE', 'Amrutha', 'Amrutha@13', 28, 'FEMALE', 'Amrutha4567@gmail.com', 8734569832);
    INSERT INTO admin.user_account VALUES (   22, 'AUDIENCE', 'Saketh', 'Saketh@16', 23, 'MALE', 'sakethkosuri16@gmail.com', 9827456378);
    INSERT INTO admin.user_account VALUES (   23, 'AUDIENCE', 'Eswar', 'Eswarsainath@15', 29, 'MALE', 'eswarsainath3@gmail.com', 9834277890);
    INSERT INTO admin.user_account VALUES (   24, 'AUDIENCE', 'Santhosh', 'Santhosh@75', 33, 'MALE', 'santhoshkrishna35@gmail.com', 6136578936);
    INSERT INTO admin.user_account VALUES (   25, 'AUDIENCE', 'Divya', 'Divyanarayan@19', 21, 'FEMALE', 'divyanarayana9@gmail.com', 7756798302);
    INSERT INTO admin.user_account VALUES (   26, 'AUDIENCE', 'Preethi', 'Preethi@1995', 31, 'FEMALE', 'preethikurbani333@gmail.com', 8732565093);
    INSERT INTO admin.user_account VALUES (   27, 'AUDIENCE', 'Sandeep', 'Sandeep@33', 33, 'MALE', 'sandeepkumar36@gmail.com', 9732657997);
    INSERT INTO admin.user_account VALUES (   28, 'AUDIENCE', 'Mohith', 'Mohith@1997', 26, 'MALE', 'mohithkumar1123@gmail.com', 9126533987);
    INSERT INTO admin.user_account VALUES (   29, 'AUDIENCE', 'Varun', 'Varun@1133', 39, 'MALE', 'varunrao1133@gmail.com', 8796243357);
    INSERT INTO admin.user_account VALUES (   30, 'AUDIENCE', 'Ramesh', 'Ramesh@1996', 25, 'MALE', 'rameshkumar313@gmail.com', 9914567123);
    INSERT INTO admin.user_account VALUES (   31, 'AUDIENCE', 'Anjali', 'Anjali@1997', 26, 'FEMALE', 'anjali@gmail.com', 9914567321);
    INSERT INTO admin.user_account VALUES (   32, 'AUDIENCE', 'Gayatri', 'Gayatri@1995', 23, 'FEMALE', 'gayatri@gmail.com', 9914765123);
    INSERT INTO admin.user_account VALUES (   33, 'AUDIENCE', 'Vara', 'Vara@1994', 21, 'FEMALE', 'vara@gmail.com', 8814765123);
    INSERT INTO admin.user_account VALUES (   34, 'AUDIENCE', 'Lova', 'Lova@1982', 47, 'FEMALE', 'lova@gmail.com', 8874165123);
    INSERT INTO admin.user_account VALUES (   35, 'AUDIENCE', 'Ramudu', 'Ramudu@1984', 51, 'MALE', 'ramudu@gmail.com', 8418765123);
    INSERT INTO admin.user_account VALUES (   36, 'AUDIENCE', 'Krishna', 'Krishna@1991', 21, 'MALE', 'krishna@gmail.com', 8814715623);
    INSERT INTO admin.user_account VALUES (   37, 'AUDIENCE', 'Harsha', 'Harsha@2004', 12, 'MALE', 'harsha@gmail.com', 7714765123);
    INSERT INTO admin.user_account VALUES (   38, 'AUDIENCE', 'Abhi', 'Abhi@2005', 21, 'MALE', 'abhi@gmail.com', 8814789123);
    INSERT INTO admin.user_account VALUES (   39, 'AUDIENCE', 'Nani', 'Nani@2007', 19, 'MALE', 'nani@gmail.com', 7414765123);
    
    -- insert Player type users into the user_account

    INSERT INTO admin.user_account VALUES(   40,'PLAYER','DHONI','DHONI@123',38,'MALE','dhoni777@gmail.com',6134896531);
    INSERT INTO admin.user_account VALUES(   41,'PLAYER','Kohli','Kohli@123',32,'MALE','kohli777@gmail.com',6134896532);
    INSERT INTO admin.user_account VALUES(   42,'PLAYER','yuvraj','yuvraj@123',38,'MALE','yuvraj777@gmail.com',6134896533);
    INSERT INTO admin.user_account VALUES(   43,'PLAYER','rohit','rohit@123',33,'MALE','rohit777@gmail.com',6134896534);
    INSERT INTO admin.user_account VALUES(   44,'PLAYER','gambhir','gambhir@123',36,'MALE','gambhir777@gmail.com',6134896535);
    INSERT INTO admin.user_account VALUES(   45,'PLAYER','sachin','sachin@123',41,'MALE','sachin777@gmail.com',6134896536);
    INSERT INTO admin.user_account VALUES(   46,'PLAYER','ganguly','ganguly@123',36,'MALE','ganguly777@gmail.com',6134896537);
    INSERT INTO admin.user_account VALUES(   47,'PLAYER','sehwag','sehwag@123',39,'MALE','sehwag777@gmail.com',6134896538);
    INSERT INTO admin.user_account VALUES(   48,'PLAYER','laxman','laxman@123',38,'MALE','laxman777@gmail.com',6134896539);
    INSERT INTO admin.user_account VALUES(   49,'PLAYER','zaheer','zaheer@123',38,'MALE','zaheer777@gmail.com',6134896540);
    INSERT INTO admin.user_account VALUES(   50,'PLAYER','srinath','srinath@123',34,'MALE','srinath777@gmail.com',6134896541);
    INSERT INTO admin.user_account VALUES(   51,'PLAYER','ambatirayudu','ambatirayudu@123',36,'MALE','ambatirayudu777@gmail.com',6134896546);
    INSERT INTO admin.user_account VALUES(   52,'PLAYER','dwaynebravo','dwaynebravo@123',41,'MALE','dwaynebravo777@gmail.com',6134896547);
    INSERT INTO admin.user_account VALUES(   53,'PLAYER','robinuthappa','robinuthappa@123',36,'MALE','robinuthappa777@gmail.com',6134896548);
    INSERT INTO admin.user_account VALUES(   54,'PLAYER','deepakchahar','deepakchahar@123',39,'MALE','deepakchahar777@gmail.com',6134896549);
    INSERT INTO admin.user_account VALUES(   55,'PLAYER','kmasif','kmasif@123',38,'MALE','kmasif777@gmail.com',6134896550);
    INSERT INTO admin.user_account VALUES(   56,'PLAYER','tushardeshpande','tushardeshpande@123',38,'MALE','tushardeshpande777@gmail.com',6134896551);
    INSERT INTO admin.user_account VALUES(   57,'PLAYER','shivamdube','shivamdube@123',34,'MALE','shivamdube777@gmail.com',6134896552);
    INSERT INTO admin.user_account VALUES(   58,'PLAYER','maheshtheekshana','maheshtheekshana@123',28,'MALE','maheshtheekshana777@gmail.com',6134896553);
    INSERT INTO admin.user_account VALUES(   59,'PLAYER','rhangargekar','rhangargekar@123',32,'MALE','rhangargekar777@gmail.com',6134896554);
    INSERT INTO admin.user_account VALUES(   60,'PLAYER','simarjeetsingh','simarjeetsingh@123',38,'MALE','simarjeetsingh777@gmail.com',6134896555);
    INSERT INTO admin.user_account VALUES(   61,'PLAYER','devonconway','devonconway@123',33,'MALE','devonconway777@gmail.com',6134896556);
    INSERT INTO admin.user_account VALUES(  62,'PLAYER','charinishanth','charinishanth@123',38,'MALE','charinishanth777@gmail.com',6134896562);
    INSERT INTO admin.user_account VALUES(  63,'PLAYER','njagadeesan','njagadeesan@123',34,'MALE','njagadeesan777@gmail.com',6134896563);
    INSERT INTO admin.user_account VALUES(  64,'PLAYER','chrisjordan','chrisjordan@123',28,'MALE','chrisjordan777@gmail.com',6134896564);
    INSERT INTO admin.user_account VALUES(  65,'PLAYER','fafduplessis','fafduplessis@123',32,'MALE','fafduplessis777@gmail.com',6134896565);
    INSERT INTO admin.user_account VALUES(  66,'PLAYER','glennmaxwell','glennmaxwell@123',38,'MALE','glennmaxwell@gmail.com',6134896566);
    INSERT INTO admin.user_account VALUES(  67,'PLAYER','anujrawat','anujrawat@123',33,'MALE','anujrawat777@gmail.com',6134896567);
    INSERT INTO admin.user_account VALUES(  68,'PLAYER','dineshkarthik','dineshkarthik@123',36,'MALE','dineshkarthik777@gmail.com',6134896568);
    INSERT INTO admin.user_account VALUES(  69,'PLAYER','kanewilliamson','kanewilliamson@123',41,'MALE', 'kanewilliamson777@gmail.com',6134896569);
    INSERT INTO admin.user_account VALUES(  70,'PLAYER','sanjusamson', 'sanjusamson @123',36,'MALE', 'sanjusamson777@gmail.com',6134896570);
    INSERT INTO admin.user_account VALUES(  71,'PLAYER','hardikpandya','hardikpandya@123',39,'MALE','hardikpandya777@gmail.com',6134896571);
    INSERT INTO admin.user_account VALUES(  72,'PLAYER','shreyasiyer','shreyasiyer@123',38,'MALE','shreyasiyer777@gmail.com',6134896572);
     INSERT INTO admin.user_account VALUES(    73,'PLAYER','waninduhasaranga','waninduhasaranga@123',41,'MALE','waninduhasaranga777@gmail.com',6134896577);
    INSERT INTO admin.user_account VALUES(    74,'PLAYER','joshhazlewood','joshhazlewood@123',36,'MALE','joshhazlewood777@gmail.com',6134896578);
    INSERT INTO admin.user_account VALUES(    75,'PLAYER','harshalpatel','harshalpatel@123',39,'MALE','harshalpatel777@gmail.com',6134896579);
    INSERT INTO admin.user_account VALUES(    76,'PLAYER','davidwilley','davidwilley@123',38,'MALE','davidwilley777@gmail.com',6134896581);
    INSERT INTO admin.user_account VALUES(    77,'PLAYER','akashdeep','akashdeep@123',34,'MALE','akashdeep777@gmail.com',6134896582);
    INSERT INTO admin.user_account VALUES(    78,'PLAYER','shahbazahmed','shahbazahmed@123',28,'MALE','shahbazahmed777@gmail.com',6134896583);
    INSERT INTO admin.user_account VALUES(    79,'PLAYER','finnallen','finnallen@123',32,'MALE','finnallen777@gmail.com',6134896584);
    INSERT INTO admin.user_account VALUES(    80,'PLAYER','shefanerutherford','shefane@123',38,'MALE','shefanerutherford777@gmail.com',6134896580);
    INSERT INTO admin.user_account VALUES(    81,'PLAYER','subhranshusenapati','subhranshu@123',39,'MALE','subhranshu777@gmail.com',6134896560);
    INSERT INTO admin.user_account VALUES(    82,'PLAYER','TimSouthee', 'TimSouthee@123',36,'MALE', 'TimSouthee@gmail.com',6134891038);
    INSERT INTO admin.user_account VALUES(    83,'PLAYER','karthik','karthik@123',36,'MALE','karthik777@gmail.com',6134896753);
    INSERT INTO admin.user_account VALUES(    84,'PLAYER','TilakVarma','TilakVarma@123',36,'MALE','TilakVarma777@gmail.com',6134891004);
    INSERT INTO admin.user_account VALUES(    85,'PLAYER','SuryaYadav','SuryaYadav@123',41,'MALE','SuryaYadav777@gmail.com',6134891005);
    INSERT INTO admin.user_account VALUES(    86,'PLAYER','ArjunTendulkar','ArjunTendulkar@123',36,'MALE','ArjunTendulkar777@gmail.com',6134891006);
    INSERT INTO admin.user_account VALUES(    87,'PLAYER','DanielSams','DanielSams@123',39,'MALE','DanielSams777@gmail.com',6134891007);
    INSERT INTO admin.user_account VALUES(    88,'PLAYER','Bumrah','Bumrah@123',38,'MALE','Bumrah777@gmail.com',6134891008);
    INSERT INTO admin.user_account VALUES(    89,'PLAYER','BasilThampi','BasilThampi@123',38,'MALE','BasilThampi@gmail.com',6134891009);
    INSERT INTO admin.user_account VALUES(    90,'PLAYER','TymalMills','TymalMills@123',34,'MALE','TymalMills@gmail.com',6134891010);
    INSERT INTO admin.user_account VALUES(    91,'PLAYER','Pollard','Pollard@123',28,'MALE','Pollard@gmail.com',6134891011);
    INSERT INTO admin.user_account VALUES(    92,'PLAYER','Ramandeep','Ramandeep@123',32,'MALE','Ramandeep@gmail.com',6134891012);
    INSERT INTO admin.user_account VALUES(    93,'PLAYER','FabianAllen','FabianAllen@123',38,'MALE','FabianAllen@gmail.com',6134891013);
    INSERT INTO admin.user_account VALUES(    94,'PLAYER','Rileymeredith','Rileymeredith@123',33,'MALE','Rileymeredith@gmail.com',6134891014);
     INSERT INTO admin.user_account VALUES(    95,'PLAYER','ArshadKhan','ArshadKhan@123',38,'MALE','ArshadKhan@gmail.com',6134891019);
    INSERT INTO admin.user_account VALUES(    96,'PLAYER','Anmolpreet','Anmolpreet@123',38,'MALE','Anmolpreet@gmail.com',6134891020);
    INSERT INTO admin.user_account VALUES(    97,'PLAYER','MayankMarkande','MayankMarkande@123',34,'MALE','MayankMarkande@gmail.com',6134891021);
    INSERT INTO admin.user_account VALUES(    98,'PLAYER','AryanJuyal','AryanJuyal@123',28,'MALE','AryanJuyal@gmail.com',6134891022);
    INSERT INTO admin.user_account VALUES(    99,'PLAYER','RahulBuddhi','RahulBuddhi@123',32,'MALE','RahulBuddhi@gmail.com',6134891023);
    INSERT INTO admin.user_account VALUES(    100,'PLAYER','PatCummins','PatCummins@123',38,'MALE','PatCummins@gmail.com',6134891024);
    INSERT INTO admin.user_account VALUES(    101,'PLAYER','AndreRussell','AndreRussell@123',33,'MALE','AndreRussell@gmail.com',6134891025);
    INSERT INTO admin.user_account VALUES(    102,'PLAYER','VenkateshIyer','VenkateshIyer@123',36,'MALE','VenkateshIyer@gmail.com',6134891026);
    INSERT INTO admin.user_account VALUES(    103,'PLAYER','SheldonJackson','SheldonJackson@123',41,'MALE','SheldonJackson@gmail.com',6134891027);
    INSERT INTO admin.user_account VALUES(    104,'PLAYER','AjinkyaRahane','AjinkyaRahane@123',36,'MALE','AjinkyaRahane@gmail.com',6134891028);
    INSERT INTO admin.user_account VALUES(    105,'PLAYER','Finch','Finch@123',38,'MALE','Finch@gmail.com',6134891029);
    INSERT INTO admin.user_account VALUES(    106,'PLAYER','SunilNarine','SunilNarine@123',38,'MALE','SunilNarine@gmail.com',6134891034);
    INSERT INTO admin.user_account VALUES(    107,'PLAYER','KarunaRatneChamika','KarunaRatne@123',33,'MALE','KarunaRatneChamika@gmail.com',6134891035);
    INSERT INTO admin.user_account VALUES(    108,'PLAYER','VarunChakraborty','VarunChakraborty@123',36,'MALE','VarunChakraborty@gmail.com',6134891036);
    INSERT INTO admin.user_account VALUES(    109,'PLAYER','NitishRana','NitishRana@123',41,'MALE', 'NitishRana@gmail.com',6134891037);
    INSERT INTO admin.user_account VALUES(    110,'PLAYER','RameshKumar','RameshKumar@123',39,'MALE','RameshKumar@gmail.com',6134891039);
    INSERT INTO admin.user_account VALUES(    111,'PLAYER','BabaIndrajith','BabaIndrajith@123',38,'MALE','BabaIndrajith@gmail.com',6134891040);
    INSERT INTO admin.user_account VALUES(    112,'PLAYER','AnukulRoy','AnukulRoy@123',38,'MALE','AnukulRoy@gmail.com',6134891041);
    INSERT INTO admin.user_account VALUES(    113,'PLAYER','ShivamMavi','ShivamMavi@123',34,'MALE','ShivamMavi@gmail.com',6134891042);
    INSERT INTO admin.user_account VALUES(    114,'PLAYER','MohammadNabi','MohammadNabi@123',28,'MALE','MohammadNabi@gmail.com',6134891043);
    INSERT INTO admin.user_account VALUES(    115,'PLAYER','RinkuSingh','RinkuSingh@123',32,'MALE','RinkuSingh@gmail.com',6134891044);
    INSERT INTO admin.user_account VALUES(    116,'PLAYER','PrathamSingh','PrathamSingh@123',41,'MALE','PrathamSingh@gmail.com',6134891045);
     INSERT INTO admin.user_account VALUES(    117,'PLAYER','RowmanPowell','RowmanPowell@123',28,'MALE','RowmanPowell@gmail.com',6134891050);
    INSERT INTO admin.user_account VALUES(    118,'PLAYER','PrithviShaw','PrithviShaw@123',32,'MALE','PrithviShaw@gmail.com',6134891051);
    INSERT INTO admin.user_account VALUES(    119,'PLAYER','MustafizRahman','MustafizRahman@123',38,'MALE','MustafizRahman@gmail.com',6134891052);
    INSERT INTO admin.user_account VALUES(    120,'PLAYER','SarfrazKhan','SarfrazKhan@123',39,'MALE','SarfrazKhan@gmail.com',6134891053);
    INSERT INTO admin.user_account VALUES(    121,'PLAYER','ShardulThakur','ShardulThakur@123',36,'MALE','ShardulThakur@gmail.com',6134891054);
    INSERT INTO admin.user_account VALUES(    122,'PLAYER','Chahal','Chahal@123',38,'MALE','Chahal@gmail.com',6134892000);
    INSERT INTO admin.user_account VALUES(    123,'PLAYER','Devdutt','Devdutt@123',34,'MALE','Devdutt@gmail.com',6134892001);
    INSERT INTO admin.user_account VALUES(    124,'PLAYER','Buttler','Buttler@123',28,'MALE','Buttler@gmail.com',6134892002);
    INSERT INTO admin.user_account VALUES(    125,'PLAYER','Ashwin','Ashwin@123',32,'MALE','Ashwin@gmail.com',6134892003);
    INSERT INTO admin.user_account VALUES(    126,'PLAYER','CoulterNile','CoulterNile@123',41,'MALE','CoulterNile@gmail.com',6134892004);
    INSERT INTO admin.user_account VALUES(    127,'PLAYER','RussieVanderDussen','RussieVander@123',36,'MALE','RussieVanderDussen@gmail.com',6134892005);
    
    INSERT INTO admin.user_account VALUES(   128,'PLAYER','praveen','praveen@123',28,'MALE','praveen777@gmail.com',6134896542);
    INSERT INTO admin.user_account VALUES(   129,'PLAYER','ravijadeja','ravijadeja@123',32,'MALE','ravijadeja777@gmail.com',6134896543);
    INSERT INTO admin.user_account VALUES(   130,'PLAYER','MoeenAli','MoeenAli@123',38,'MALE','MoeenAli777@gmail.com',6134896544);
    INSERT INTO admin.user_account VALUES(   131,'PLAYER','rutugaikwad','rutugaikwad@123',33,'MALE','rutugaikwad777@gmail.com',6134896545);
    INSERT INTO admin.user_account VALUES(    132,'PLAYER','rishabhpant','rishabhpant@123',38,'MALE','rishabhpant@gmail.com',6134896573);
    INSERT INTO admin.user_account VALUES(    133,'PLAYER','rohitsharma','rohitsharma@123',34,'MALE','rohitsharma777@gmail.com',6134896574);
    INSERT INTO admin.user_account VALUES(    134,'PLAYER','klrahul','klrahul@123',28,'MALE','klrahul777@gmail.com',6134896575);
    INSERT INTO admin.user_account VALUES(    135,'PLAYER','mayankaggarwal','mayankaggarwal@123',32,'MALE','mayankaggarwal777@gmail.com',6134896576);
    INSERT INTO admin.user_account VALUES(    136,'PLAYER','MuruganAshwin','MuruganAshwin@123',36,'MALE','MuruganAshwin@gmail.com',6134891015);
    INSERT INTO admin.user_account VALUES(    137,'PLAYER','Unadkat','Unadkat@123',41,'MALE','Unadkat@gmail.com',6134891016);
    INSERT INTO admin.user_account VALUES(    138,'PLAYER','SanjayYadav','SanjayYadav@123',36,'MALE','SanjayYadav@gmail.com',6134891017);
    INSERT INTO admin.user_account VALUES(    139,'PLAYER','HrithikShokeen','HrithikShokeen@123',39,'MALE','HrithikShokeen@gmail.com',6134891018);
    INSERT INTO admin.user_account VALUES(    140,'PLAYER','AbhijeetTomar','AbhijeetTomar@123',36,'MALE','AbhijeetTomar@gmail.com',6134891046);
    INSERT INTO admin.user_account VALUES(    141,'PLAYER','AshokSharma','AshokSharma@123',39,'MALE','AshokSharma@gmail.com',6134891047);
    INSERT INTO admin.user_account VALUES(    142,'PLAYER','DavidWarner','DavidWarner@123',38,'MALE','DavidWarner@gmail.com',6134891048);
    INSERT INTO admin.user_account VALUES(    143,'PLAYER','AnrichNortje','AnrichNortje@123',34,'MALE','AnrichNortje@gmail.com',6134891049);
    
  --- extra players Under BCCI
  
    INSERT INTO admin.user_account VALUES(   144,'PLAYER','dwainepretorius','dwainepretorius@123',36,'MALE','dwainepretorius777@gmail.com',6134896557);
    INSERT INTO admin.user_account VALUES(   145,'PLAYER','mitchsantner','mitchsantner@123',41,'MALE','mitchsantner777@gmail.com',6134896558);
    INSERT INTO admin.user_account VALUES(   146,'PLAYER','adammilne','adammilne@123',36,'MALE','adammilne777@gmail.com',6134896559);
    INSERT INTO admin.user_account VALUES(   147,'PLAYER','prashantsolanki','prashantsolanki@123',38,'MALE','prashantsolanki777@gmail.com',6134896561);
    INSERT INTO admin.user_account VALUES(    148,'PLAYER','DewaldBrevis','DewaldBrevis@123',38,'MALE','DewaldBrevis777@gmail.com',6134891000);
    INSERT INTO admin.user_account VALUES(    149,'PLAYER','JofraArcher','JofraArcher@123',32,'MALE','JofraArcher777@gmail.com',6134891001);
    INSERT INTO admin.user_account VALUES(    150,'PLAYER','TimDavid','TimDavid@123',38,'MALE','TimDavid777@gmail.com',6134891002);
    INSERT INTO admin.user_account VALUES(    151,'PLAYER','IshanKishan','IshanKishan@123',33,'MALE','IshanKishan777@gmail.com',6134891003);
    INSERT INTO admin.user_account VALUES(    152,'PLAYER','Billings','Billings@123',38,'MALE','Billings@gmail.com',6134891030);
    INSERT INTO admin.user_account VALUES(    153,'PLAYER','Rasikh','Rasikh@123',34,'MALE','Rasikh@gmail.com',6134891031);
    INSERT INTO admin.user_account VALUES(    154,'PLAYER','AlexHales','AlexHales@123',28,'MALE','AlexHales@gmail.com',6134891032);
    INSERT INTO admin.user_account VALUES(    155,'PLAYER','UmeshYadav','UmeshYadav@123',32,'MALE','UmeshYadav@gmail.com',6134891033);
    INSERT INTO admin.user_account VALUES(    156,'PLAYER','KuldeepSen','KuldeepSen@123',39,'MALE','KuldeepSen@gmail.com',6134892006);
    INSERT INTO admin.user_account VALUES(    157,'PLAYER','TrentBoult','TrentBoult@123',38,'MALE','TrentBoult@gmail.com',6134892007);
    INSERT INTO admin.user_account VALUES(    158,'PLAYER','RiyanParag','RiyanParag@123',34,'MALE','RiyanParag@gmail.com',6134892008);
    INSERT INTO admin.user_account VALUES(    159,'PLAYER','SHimronHetmyer','SHimronHetmyer@123',28,'MALE','SHimronHetmyer@gmail.com',6134892009);
    
    -- insert Extra players
    
    INSERT INTO admin.user_account VALUES(    160,'PLAYER','KuldipYadav','KuldipYadav@123',32,'MALE','KuldipYadav@gmail.com',6134892010);
    INSERT INTO admin.user_account VALUES(    161,'PLAYER','DarylMitchell','DarylMitchell@123',38,'MALE','DarylMitchell@gmail.com',6134892011);
    INSERT INTO admin.user_account VALUES(    162,'PLAYER','Neesham','Neesham@123',39,'MALE','Neesham@gmail.com',6134892012);
    INSERT INTO admin.user_account VALUES(    163,'PLAYER','JaiswalYash','JaiswalYash@123',36,'MALE','JaiswalYash@gmail.com',6134892013);
    INSERT INTO admin.user_account VALUES(    164,'PLAYER','KarunNair', 'KarunNair@123',36,'MALE', 'KarunNair@gmail.com',6134892014);
    
   COMMIT;
   
   
   

-- insert owner values into team_owner table.
    
INSERT INTO admin.team_owner VALUES (  200, 2, 'Srinivasan',   'ChennaiSuperKings',  50000000);
INSERT INTO admin.team_owner VALUES (  201, 4, 'Ambani',   'MumbaiIndians',  50000000);
INSERT INTO admin.team_owner VALUES (  202, 5, 'Kalanithi',   'SunrisersHyderabad',  50000000);
INSERT INTO admin.team_owner VALUES (  203, 3, 'SharukhKhan',   'KolkataKnightRiders',  50000000);
INSERT INTO admin.team_owner VALUES (  204, 7, 'Manoj',   'RajasthanRoyals',  50000000);
INSERT INTO admin.team_owner VALUES (  205, 8, 'Preity',   'KingsXIPunjab',  50000000);
INSERT INTO admin.team_owner VALUES (  206, 1, 'Vijay',   'RoyalChallengersBangalore',  50000000);
INSERT INTO admin.team_owner VALUES (  207, 6, 'Parth',   'DelhiCapitals',  50000000); 
INSERT INTO admin.team_owner VALUES (  208, 9, 'BCCI',   'TeamBCCI',  0);  
COMMIT;




-- insert team values into team table.
INSERT INTO admin.Team VALUES ('MI', 201, 'MumbaiIndians',  'Wankhede' );
INSERT INTO admin.Team VALUES ('RCB', 206, 'RoyalChallengersBangalore',  'Chinnaswamy' );
INSERT INTO admin.Team VALUES ('SRH', 202, 'SunrisersHyderabad',  'Rajiv Gandhi' );
INSERT INTO admin.Team VALUES ('KKR',203, 'KolkataKnightRiders',  'Eden Gardens' );
INSERT INTO admin.Team VALUES ('RR',204, 'RajasthanRoyals',  'Sawai Mansingh' );
INSERT INTO admin.Team VALUES ('KXIP',205, 'KingsXIPunjab',  'PCA Stadium' );
INSERT INTO admin.Team VALUES ('CSK',200, 'ChennaiSuperKings',  'M. A. Chidambaram' );
INSERT INTO admin.Team VALUES ('DC',207, 'DelhiCapitals',  'Arun Jaitley' );
INSERT INTO admin.Team VALUES('BCCI', 208, 'TeamBCCI', 'Chairman of BCCI');
COMMIT;


-- insert player values into player table.

--DELHI CAPITALS
INSERT INTO ADMIN.player VALUES(311, 51, 'DC', 'AMBATIRAYUDU', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(312, 52, 'DC', 'DWAYNEBRAVO', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(313, 53, 'DC', 'ROBINUTHAPPA', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(314, 54, 'DC', 'DEEPAKCHAHAR', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(315, 55, 'DC', 'KMASIF', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(316, 56, 'DC', 'TUSHARDESHPANDE', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(317, 57, 'DC', 'SHIVAMDUBE', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(318, 58, 'DC', 'MAHESHTHEEKSHANA', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(319, 59, 'DC', 'RHANGARGEKAR', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(320, 60, 'DC', 'SIMARJEETSINGH', DEFAULT, 'INTERNATIONAL','ALLROUNDER','AUSTRALIA');
INSERT INTO ADMIN.player VALUES(321, 61, 'DC', 'DEVONCONWAY', DEFAULT, 'INTERNATIONAL','BATSMAN','ENGLAND');




--RCB
INSERT INTO ADMIN.player VALUES(333, 73, 'RCB', 'WANINDUHASARANGA', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(334, 74, 'RCB', 'JOSHHAZLEWOOD', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(335, 75, 'RCB', 'HARSHALPATEL', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(336, 76, 'RCB', 'DAVIDWILLEY', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(337, 77, 'RCB', 'AKASHDEEP', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(338, 78, 'RCB', 'SHAHBAZAHMED', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(339, 79, 'RCB', 'FINNALLEN', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(340, 80, 'RCB', 'SHEFANERUTHERFORD', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(341, 81, 'RCB', 'SUBHRANSHUSENAPATI', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(342, 82, 'RCB', 'TIMSOUTHEE', DEFAULT, 'INTERNATIONAL','ALLROUNDER','AUSTRALIA');
INSERT INTO ADMIN.player VALUES(343, 83, 'RCB', 'KARTHIK', DEFAULT, 'INTERNATIONAL','BATSMAN','ENGLAND');


--KKR
INSERT INTO ADMIN.player VALUES(355, 95, 'KKR', 'ARSHADKHAN', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(356, 96, 'KKR', 'ANMOLPREET', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(357, 97, 'KKR', 'MAYANKMARKHANDE', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(358, 98, 'KKR', 'ARYANJUYAL', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(359, 99, 'KKR', 'RAHULBUDDHI', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(360, 100, 'KKR', 'PATCUMMINS', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(361, 101, 'KKR', 'ANDRERUSSELL', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(362, 102, 'KKR', 'VENKATESHIYER', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(363, 103, 'KKR', 'SHELDONJACKSON', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(364, 104, 'KKR', 'AJINKYARAHANE', DEFAULT, 'INTERNATIONAL','ALLROUNDER','AUSTRALIA');
INSERT INTO ADMIN.player VALUES(365, 105, 'KKR', 'FINCH', DEFAULT, 'INTERNATIONAL','BATSMAN','ENGLAND');



--KXIP
INSERT INTO ADMIN.player VALUES(377, 117, 'KXIP', 'ROMANPOWELL', DEFAULT, 'INTERNATIONAL','WK','WESTINDIES');
INSERT INTO ADMIN.player VALUES(378, 118, 'KXIP', 'PRITHVISHAW', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(379, 119, 'KXIP', 'MUSTAFIZURRAHMAN', DEFAULT, 'INTERNATIONAL','BATSMAN','AFGANISTHAN');
INSERT INTO ADMIN.player VALUES(380, 120, 'KXIP', 'SARFARAZKHAN', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(381, 121, 'KXIP', 'SHARDULTHAKUR', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(382, 122, 'KXIP', 'CHAHAL', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(383, 123, 'KXIP', 'DEVDUTTPADIKKAL', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(384, 124, 'KXIP', 'JOSBUTTLER', DEFAULT, 'INTERNATIONAL','BATSMAN','ENGLAND');
INSERT INTO ADMIN.player VALUES(385, 125, 'KXIP', 'ASHWIN', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(386, 126, 'KXIP', 'COUTERNILE', DEFAULT, 'INTERNATIONAL','ALLROUNDER','AUSTRALIA');
INSERT INTO ADMIN.player VALUES(387, 127, 'KXIP', 'VANDERDUSSEN', DEFAULT, 'INTERNATIONAL','BATSMAN','ENGLAND');



--'BCCI'
INSERT INTO ADMIN.player VALUES(404, 144, 'BCCI', 'DWAINEPRETORIUS', DEFAULT, 'INTERNATIONAL','ALLROUNDER','NEWZEALAND');
INSERT INTO ADMIN.player VALUES(405, 145, 'BCCI', 'MITCHSANTNER', DEFAULT, 'INTERNATIONAL','BOWLER','SRILANKA');
INSERT INTO ADMIN.player VALUES(406, 146, 'BCCI', 'ADAMMILNE', DEFAULT, 'INTERNATIONAL','BOWLER','AFGHANISTHAN');
INSERT INTO ADMIN.player VALUES(407, 147, 'BCCI', 'PRASHANTSOLANKI', DEFAULT, 'INTERNATIONAL','BOWLER','WESTINDIES');
INSERT INTO ADMIN.player VALUES(408, 148, 'BCCI', 'DEWALDBREVIS', DEFAULT, 'INTERNATIONAL','ALLROUNDER','NEWZEALAND');
INSERT INTO ADMIN.player VALUES(409, 149, 'BCCI', 'JOFRAARCHER', DEFAULT, 'INTERNATIONAL','BOWLER','SRILANKA');
INSERT INTO ADMIN.player VALUES(410, 150, 'BCCI', 'TIMDAVID', DEFAULT, 'INTERNATIONAL','BOWLER','AFGHANISTHAN');
INSERT INTO ADMIN.player VALUES(411, 151, 'BCCI', 'ISHANKISHAN', DEFAULT, 'INTERNATIONAL','BOWLER','WESTINDIES');
INSERT INTO ADMIN.player VALUES(412, 152, 'BCCI', 'BILLINGS', DEFAULT, 'INTERNATIONAL','ALLROUNDER','NEWZEALAND');
INSERT INTO ADMIN.player VALUES(413, 153, 'BCCI', 'RASIKH', DEFAULT, 'INTERNATIONAL','BOWLER','SRILANKA');
INSERT INTO ADMIN.player VALUES(414, 154, 'BCCI', 'ALEXHALES', DEFAULT, 'INTERNATIONAL','BOWLER','AFGHANISTHAN');
INSERT INTO ADMIN.player VALUES(415, 155, 'BCCI', 'UMESHYADAV', DEFAULT, 'INTERNATIONAL','BOWLER','WESTINDIES');
INSERT INTO ADMIN.player VALUES(416, 156, 'BCCI', 'KULDEEPSEN', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(417, 157, 'BCCI', 'TRENTBOULT', DEFAULT, 'INTERNATIONAL','BOWLER','SRILANKA');
INSERT INTO ADMIN.player VALUES(418, 158, 'BCCI', 'RIYANPARAG', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(419, 159, 'BCCI', 'SHIMRONHETMEYER', DEFAULT, 'INTERNATIONAL','BOWLER','WESTINDIES');
INSERT INTO ADMIN.player VALUES(388, 128, 'BCCI', 'PRAVEEN', DEFAULT, 'INTERNATIONAL','ALLROUNDER','NEWZEALAND');
INSERT INTO ADMIN.player VALUES(389, 129, 'BCCI', 'RAVIJADEJA', DEFAULT, 'INTERNATIONAL','BOWLER','SRILANKA');
INSERT INTO ADMIN.player VALUES(390, 130, 'BCCI', 'MOEENALI', DEFAULT, 'INTERNATIONAL','BOWLER','AFGHANISTHAN');
INSERT INTO ADMIN.player VALUES(391, 131, 'BCCI', 'RUTUGAIKWAD', DEFAULT, 'INTERNATIONAL','BOWLER','WESTINDIES');
INSERT INTO ADMIN.player VALUES(392, 132, 'BCCI', 'RISHABPANT', DEFAULT, 'INTERNATIONAL','ALLROUNDER','NEWZEALAND');
INSERT INTO ADMIN.player VALUES(393, 133, 'BCCI', 'ROHITSHARMA', DEFAULT, 'INTERNATIONAL','BOWLER','SRILANKA');
INSERT INTO ADMIN.player VALUES(394, 134, 'BCCI', 'KLRAHUL', DEFAULT, 'INTERNATIONAL','BOWLER','AFGHANISTHAN');
INSERT INTO ADMIN.player VALUES(395, 135, 'BCCI', 'MAYANKAGGARWAL', DEFAULT, 'INTERNATIONAL','BOWLER','WESTINDIES');
INSERT INTO ADMIN.player VALUES(396, 136, 'BCCI', 'MURUGANASHWIN', DEFAULT, 'INTERNATIONAL','ALLROUNDER','NEWZEALAND');
INSERT INTO ADMIN.player VALUES(397, 137, 'BCCI', 'UNADKAT', DEFAULT, 'INTERNATIONAL','BOWLER','SRILANKA');
INSERT INTO ADMIN.player VALUES(398, 138, 'BCCI', 'SANJAYYADAV', DEFAULT, 'INTERNATIONAL','BOWLER','AFGHANISTHAN');
INSERT INTO ADMIN.player VALUES(399, 139, 'BCCI', 'HRITHIKSHOKEEN', DEFAULT, 'INTERNATIONAL','BOWLER','WESTINDIES');
INSERT INTO ADMIN.player VALUES(400, 140, 'BCCI', 'ABHIJEETTOMAR', DEFAULT, 'INTERNATIONAL','ALLROUNDER','NEWZEALAND');
INSERT INTO ADMIN.player VALUES(401, 141, 'BCCI', 'ASHOKSHARMA', DEFAULT, 'INTERNATIONAL','BOWLER','SRILANKA');
INSERT INTO ADMIN.player VALUES(402, 142, 'BCCI', 'DAVIDWARNER', DEFAULT, 'INTERNATIONAL','BOWLER','AFGHANISTHAN');
INSERT INTO ADMIN.player VALUES(403, 143, 'BCCI', 'ANRICHNORTJE', DEFAULT, 'INTERNATIONAL','BOWLER','WESTINDIES');


--csk
INSERT INTO ADMIN.player VALUES(300, 40, 'CSK', 'DHONI', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(301, 41, 'CSK', 'KOHLI', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(302, 42, 'CSK', 'YUVRAJ', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(303, 43, 'CSK', 'ROHIT', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(304, 44, 'CSK', 'GAMBHIR', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(305, 45, 'CSK', 'SACHIN', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(306, 46, 'CSK', 'GANGULY', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(307, 47, 'CSK', 'SEHWAG', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(308, 48, 'CSK', 'LAXMAN', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(309, 49, 'CSK', 'ZAHEER', DEFAULT, 'INTERNATIONAL','ALLROUNDER','AUSTRALIA');
INSERT INTO ADMIN.player VALUES(310, 50, 'CSK', 'SRINATH', DEFAULT, 'INTERNATIONAL','BATSMAN','ENGLAND');

--MI
INSERT INTO ADMIN.player VALUES(322, 62, 'MI', 'CHARINISHANTH', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(323, 63, 'MI', 'NJAGADEESAN', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(324, 64, 'MI', 'CHRISJORDAN', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(325, 65, 'MI', 'FAFDUPLESSIS', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(326, 66, 'MI', 'GLENNMAXWELL', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(327, 67, 'MI', 'ANUJRAWAT', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(328, 68, 'MI', 'DINESHKARTHIK', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(329, 69, 'MI', 'KANEWILLIAMSON', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(330, 70, 'MI', 'SANJUSAMSON', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(331, 71, 'MI', 'HARDIKPANDYA', DEFAULT, 'INTERNATIONAL','ALLROUNDER','AUSTRALIA');
INSERT INTO ADMIN.player VALUES(332, 72, 'MI', 'SHREYASIYER', DEFAULT, 'INTERNATIONAL','BATSMAN','ENGLAND');


--srh
INSERT INTO ADMIN.player VALUES(344, 84, 'SRH', 'TILAKVARMA', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(345, 85, 'SRH', 'SURYAYADAV', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(346, 86, 'SRH', 'ARJUNTENDULKAR', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(347, 87, 'SRH', 'DANIELSAMS', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(348, 88, 'SRH', 'BUMRAH', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(349, 89, 'SRH', 'BASILTHAMPI', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(350, 90, 'SRH', 'TYMALMILLS', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(351, 91, 'SRH', 'POLLARD', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(352, 92, 'SRH', 'RAMANDEEP', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(353, 93, 'SRH', 'FABIANALLEN', DEFAULT, 'INTERNATIONAL','ALLROUNDER','AUSTRALIA');
INSERT INTO ADMIN.player VALUES(354, 94, 'SRH', 'RILEYMEREDITH', DEFAULT, 'INTERNATIONAL','BATSMAN','ENGLAND');


--RR
INSERT INTO ADMIN.player VALUES(366, 106, 'RR', 'SUNILNARINE', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(367, 107, 'RR', 'KARUNARATNECHAMIKA', DEFAULT, 'DOMESTIC','WK','INDIA');
INSERT INTO ADMIN.player VALUES(368, 108, 'RR', 'VARUNCHAKRABORTY', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(369, 109, 'RR', 'NITISHRANA', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(370, 110, 'RR', 'RAMESHKUMAR', DEFAULT, 'DOMESTIC','BATSMAN','INDIA');
INSERT INTO ADMIN.player VALUES(371, 111, 'RR', 'BABAINDRAJITH', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(372, 112, 'RR', 'ANKULROY', DEFAULT, 'DOMESTIC','ALLROUNDER','INDIA');
INSERT INTO ADMIN.player VALUES(373, 113, 'RR', 'SHIVAMMAVI', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(374, 114, 'RR', 'MOHAMMADNABI', DEFAULT, 'DOMESTIC','BOWLER','INDIA');
INSERT INTO ADMIN.player VALUES(375, 115, 'RR', 'RINKUSINGH', DEFAULT, 'INTERNATIONAL','ALLROUNDER','AUSTRALIA');
INSERT INTO ADMIN.player VALUES(376, 116, 'RR', 'PRATHAMSINGH', DEFAULT, 'INTERNATIONAL','BATSMAN','ENGLAND');

commit;


-- insert audience into audience_table

INSERT INTO ADMIN.audience VALUES (  500 , 51, 'Varun');
INSERT INTO ADMIN.audience VALUES (   501, 50, 'Mohith');
INSERT INTO ADMIN.audience VALUES (   502, 49, 'Sandeep');
INSERT INTO ADMIN.audience VALUES (   503, 48, 'Preethi');
INSERT INTO ADMIN.audience VALUES (   504, 47, 'Divya');
INSERT INTO ADMIN.audience VALUES (   505, 46, 'Santhosh');
INSERT INTO ADMIN.audience VALUES (   506, 45, 'Eswar');
INSERT INTO ADMIN.audience VALUES (   507, 44, 'Saketh');
INSERT INTO ADMIN.audience VALUES (   508, 43, 'Amrutha');
INSERT INTO ADMIN.audience VALUES (   509, 42, 'Sandhya');
INSERT INTO ADMIN.audience VALUES (   510, 19, 'Avinash');
INSERT INTO ADMIN.audience VALUES (   511, 18, 'Abhijeet');
INSERT INTO ADMIN.audience VALUES (   512, 17, 'Akhil');
INSERT INTO ADMIN.audience VALUES (   513, 16, 'Monal');
INSERT INTO ADMIN.audience VALUES (   514, 15, 'Swathi');
INSERT INTO ADMIN.audience VALUES (   515, 14, 'Rajesh');
INSERT INTO ADMIN.audience VALUES (   516, 13, 'Mohan');
INSERT INTO ADMIN.audience VALUES (   517, 12, 'Suresh');
INSERT INTO ADMIN.audience VALUES (   518, 11, 'Mahesh');
INSERT INTO ADMIN.audience VALUES (   519, 10, 'Rakesh');
INSERT INTO admin.AUDIENCE VALUES(   520, 32, 'Ramesh Kumar');
INSERT INTO admin.AUDIENCE VALUES(   521, 33, 'Anjali Rajesh');
INSERT INTO admin.AUDIENCE VALUES(   522, 34, 'Gayatri Krishna');
INSERT INTO admin.AUDIENCE VALUES(   523, 35, 'Vara Prasad');
INSERT INTO admin.AUDIENCE VALUES(   524, 36, 'Lova Ramesh');
INSERT INTO admin.AUDIENCE VALUES(   525, 37, 'Ramudu Kumar');
INSERT INTO admin.AUDIENCE VALUES(   526, 38, 'Krishna Chaitanya');
INSERT INTO admin.AUDIENCE VALUES(   527, 39, 'Harsha Kiran');
INSERT INTO admin.AUDIENCE VALUES(   528, 40, 'Abhishek Sharma');
INSERT INTO admin.AUDIENCE VALUES(   529, 41, 'Nani Naveen');
commit;



--Insert League values into League Table
INSERT INTO admin.LEAGUE VALUES (1000, 'Pepsi IPL 2015', TO_DATE('2015-04-08 20:00:00', 'yyyy-MM-dd hh24:mi:ss'), TO_DATE('2015-05-24 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 8, 28);
INSERT INTO admin.LEAGUE VALUES (1001, 'Pepsi IPL 2016', TO_DATE('2016-04-09 20:00:00', 'yyyy-MM-dd hh24:mi:ss'), TO_DATE('2016-05-29 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 8, 28);
INSERT INTO admin.LEAGUE VALUES (1002, 'UnAcademy IPL 2017', TO_DATE('2017-04-05 20:00:00', 'yyyy-MM-dd hh24:mi:ss'), TO_DATE('2017-05-21 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 8, 28);
INSERT INTO admin.LEAGUE VALUES (1003, 'UnAcademy IPL 2018', TO_DATE('2018-04-07 20:00:00', 'yyyy-MM-dd hh24:mi:ss'), TO_DATE('2018-05-27 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 8, 28);
INSERT INTO admin.LEAGUE VALUES (1004, 'UnAcademy IPL 2019', TO_DATE('2019-04-08 20:00:00', 'yyyy-MM-dd hh24:mi:ss'), TO_DATE('2019-05-24 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 8, 28);
INSERT INTO admin.LEAGUE VALUES (1005, 'Vivo IPL 2020', TO_DATE('2020-04-08 20:00:00', 'yyyy-MM-dd hh24:mi:ss'), TO_DATE('2020-05-24 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 8, 28);
INSERT INTO admin.LEAGUE VALUES (1006, 'Vivo IPL 2021', TO_DATE('2021-04-08 20:00:00', 'yyyy-MM-dd hh24:mi:ss'), TO_DATE('2021-05-24 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 8, 28);

COMMIT;



--Insert Bid values into Bid Table

---KKR Bidding
INSERT INTO admin.BID VALUES(701, 200, 355, TO_DATE('2021-02-16 02:00:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(702, 203, 355, TO_DATE('2021-02-16 02:05:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11000000, 1006);
INSERT INTO admin.BID VALUES(703, 201, 356, TO_DATE('2021-02-16 02:10:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12000000, 1006);
INSERT INTO admin.BID VALUES(704, 201, 357, TO_DATE('2021-02-16 02:15:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(705, 203, 357, TO_DATE('2021-02-16 02:20:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12500000, 1006);
INSERT INTO admin.BID VALUES(706, 203, 358, TO_DATE('2021-02-16 02:25:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);
INSERT INTO admin.BID VALUES(707, 205, 359, TO_DATE('2021-02-16 02:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(708, 203, 359, TO_DATE('2021-02-16 02:35:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 10500000, 1006);
INSERT INTO admin.BID VALUES(709, 203, 360, TO_DATE('2021-02-16 02:40:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11000000, 1006);
INSERT INTO admin.BID VALUES(710, 202, 361, TO_DATE('2021-02-16 02:45:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 11500000, 1006);
INSERT INTO admin.BID VALUES(711, 203, 361, TO_DATE('2021-02-16 02:50:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12300000, 1006);
INSERT INTO admin.BID VALUES(712, 203, 362, TO_DATE('2021-02-16 02:55:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13500000, 1006);
INSERT INTO admin.BID VALUES(713, 201, 363, TO_DATE('2021-02-16 03:00:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 14000000, 1006);
INSERT INTO admin.BID VALUES(714, 203, 363, TO_DATE('2021-02-16 03:05:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 14500000, 1006);
INSERT INTO admin.BID VALUES(715, 203, 364, TO_DATE('2021-02-16 03:10:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);
INSERT INTO admin.BID VALUES(716, 203, 365, TO_DATE('2021-02-16 03:13:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);

--RR
INSERT INTO admin.BID VALUES(717, 203, 366, TO_DATE('2021-02-16 03:15:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(718, 204, 366, TO_DATE('2021-02-16 03:20:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11000000, 1006);
INSERT INTO admin.BID VALUES(719, 204, 367, TO_DATE('2021-02-16 03:25:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12000000, 1006);
INSERT INTO admin.BID VALUES(720, 202, 368, TO_DATE('2021-02-16 03:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(721, 204, 368, TO_DATE('2021-02-16 03:35:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12500000, 1006);
INSERT INTO admin.BID VALUES(722, 204, 369, TO_DATE('2021-02-16 03:40:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);
INSERT INTO admin.BID VALUES(723, 205, 370, TO_DATE('2021-02-16 03:45:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(724, 204, 370, TO_DATE('2021-02-16 03:50:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 10500000, 1006);
INSERT INTO admin.BID VALUES(725, 204, 371, TO_DATE('2021-02-16 03:55:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11000000, 1006);
INSERT INTO admin.BID VALUES(726, 205, 372, TO_DATE('2021-02-16 04:00:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 11500000, 1006);
INSERT INTO admin.BID VALUES(727, 204, 372, TO_DATE('2021-02-16 04:05:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12300000, 1006);
INSERT INTO admin.BID VALUES(728, 204, 373, TO_DATE('2021-02-16 04:10:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13500000, 1006);
INSERT INTO admin.BID VALUES(729, 207, 374, TO_DATE('2021-02-16 04:15:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 14000000, 1006);
INSERT INTO admin.BID VALUES(730, 204, 374, TO_DATE('2021-02-16 04:20:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 14500000, 1006);
INSERT INTO admin.BID VALUES(731, 204, 375, TO_DATE('2021-02-16 04:25:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);
INSERT INTO admin.BID VALUES(732, 204, 376, TO_DATE('2021-02-16 04:28:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);

--KXIP 

INSERT INTO admin.BID VALUES(733, 204, 377, TO_DATE('2021-02-16 04:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(734, 205, 377, TO_DATE('2021-02-16 04:35:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11000000, 1006);
INSERT INTO admin.BID VALUES(735, 205, 378, TO_DATE('2021-02-16 04:40:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12000000, 1006);
INSERT INTO admin.BID VALUES(736, 203, 379, TO_DATE('2021-02-16 04:45:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(737, 205, 379, TO_DATE('2021-02-16 04:50:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12500000, 1006);
INSERT INTO admin.BID VALUES(738, 205, 380, TO_DATE('2021-02-16 04:55:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);
INSERT INTO admin.BID VALUES(739, 206, 381, TO_DATE('2021-02-16 05:00:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(740, 205, 381, TO_DATE('2021-02-16 05:05:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 10500000, 1006);
INSERT INTO admin.BID VALUES(741, 205, 382, TO_DATE('2021-02-16 05:10:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11000000, 1006);
INSERT INTO admin.BID VALUES(742, 202, 383, TO_DATE('2021-02-16 05:15:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 11500000, 1006);
INSERT INTO admin.BID VALUES(743, 205, 383, TO_DATE('2021-02-16 05:20:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12300000, 1006);
INSERT INTO admin.BID VALUES(744, 205, 384, TO_DATE('2021-02-16 05:25:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13500000, 1006);
INSERT INTO admin.BID VALUES(745, 201, 385, TO_DATE('2021-02-16 05:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 14000000, 1006);
INSERT INTO admin.BID VALUES(746, 205, 385, TO_DATE('2021-02-16 05:35:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 14500000, 1006);
INSERT INTO admin.BID VALUES(747, 205, 386, TO_DATE('2021-02-16 05:40:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);
INSERT INTO admin.BID VALUES(748, 205, 387, TO_DATE('2021-02-16 05:42:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);


---DC

INSERT INTO admin.BID VALUES(749, 202, 311, TO_DATE('2021-02-16 05:45:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(750, 207, 311, TO_DATE('2021-02-16 05:50:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11000000, 1006);
INSERT INTO admin.BID VALUES(751, 207, 312, TO_DATE('2021-02-16 05:55:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12000000, 1006);
INSERT INTO admin.BID VALUES(752, 202, 313, TO_DATE('2021-02-16 06:00:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(753, 207, 313, TO_DATE('2021-02-16 06:05:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12500000, 1006);
INSERT INTO admin.BID VALUES(754, 207, 314, TO_DATE('2021-02-16 06:10:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);
INSERT INTO admin.BID VALUES(755, 202, 315, TO_DATE('2021-02-16 06:15:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000000, 1006);
INSERT INTO admin.BID VALUES(756, 207, 315, TO_DATE('2021-02-16 06:20:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 10500000, 1006);
INSERT INTO admin.BID VALUES(757, 207, 316, TO_DATE('2021-02-16 06:25:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11000000, 1006);
INSERT INTO admin.BID VALUES(758, 201, 317, TO_DATE('2021-02-16 06:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 11500000, 1006);
INSERT INTO admin.BID VALUES(759, 207, 317, TO_DATE('2021-02-16 06:35:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12300000, 1006);
INSERT INTO admin.BID VALUES(760, 207, 318, TO_DATE('2021-02-16 06:40:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13500000, 1006);
INSERT INTO admin.BID VALUES(761, 200, 319, TO_DATE('2021-02-16 06:45:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 14000000, 1006);
INSERT INTO admin.BID VALUES(762, 207, 319, TO_DATE('2021-02-16 06:50:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 14500000, 1006);
INSERT INTO admin.BID VALUES(763, 207, 320, TO_DATE('2021-02-16 06:55:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);
INSERT INTO admin.BID VALUES(764, 207, 321, TO_DATE('2021-02-16 06:58:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15000000, 1006);


--CSK
INSERT INTO admin.BID VALUES(600, 202, 300, TO_DATE('2021-02-15 10:00:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000083,1006);
INSERT INTO admin.BID VALUES(601, 200, 300, TO_DATE('2021-02-15 10:01:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12000000,1006);
INSERT INTO admin.BID VALUES(602, 200, 301, TO_DATE('2021-02-15 10:01:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 10300000,1006);
INSERT INTO admin.BID VALUES(603, 208, 301, TO_DATE('2021-02-15 10:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000090,1006);
INSERT INTO admin.BID VALUES(604, 200, 302, TO_DATE('2021-02-15 10:31:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 14000000,1006);
INSERT INTO admin.BID VALUES(605, 200, 303, TO_DATE('2021-02-15 10:32:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13200000,1006);
INSERT INTO admin.BID VALUES(606, 200, 304, TO_DATE('2021-02-15 10:40:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 15600000,1006);
INSERT INTO admin.BID VALUES(607, 203, 305, TO_DATE('2021-02-15 10:45:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10073000,1006);
INSERT INTO admin.BID VALUES(608, 200, 305, TO_DATE('2021-02-15 10:50:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 135000000,1006);
INSERT INTO admin.BID VALUES(609, 200, 306, TO_DATE('2021-02-15 11:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12935000,1006);
INSERT INTO admin.BID VALUES(610, 200, 307, TO_DATE('2021-02-15 11:33:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12300000,1006);
INSERT INTO admin.BID VALUES(611, 200, 308, TO_DATE('2021-02-15 12:00:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 32000000,1006);
INSERT INTO admin.BID VALUES(612, 200, 309, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12000000,1006);
INSERT INTO admin.BID VALUES(613, 200, 310, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12000000,1006);

--MI

INSERT INTO admin.BID VALUES(614, 202,322, TO_DATE('2021-02-15 12:04:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000083,1006);
INSERT INTO admin.BID VALUES(615, 201, 322, TO_DATE('2021-02-15 12:06:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13400000,1006);
INSERT INTO admin.BID VALUES(616, 201, 323 ,TO_DATE('2021-02-15 12:01:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12300000,1006);
INSERT INTO admin.BID VALUES(617,  201,324, TO_DATE('2021-02-15 12:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11300090,1006);
INSERT INTO admin.BID VALUES(618,  205, 325, TO_DATE('2021-02-15 12:31:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 11200000,1006);
INSERT INTO admin.BID VALUES(619,  201,325, TO_DATE('2021-02-15 1:32:00', 'yyyy-MM-dd hh24:mi:ss'),  'T', 14200000,1006);
INSERT INTO admin.BID VALUES(620,  206, 326,  TO_DATE('2021-02-15 10:40:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 12600000,1006);
INSERT INTO admin.BID VALUES(621,  201,326,  TO_DATE('2021-02-15 10:45:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13373000,1006);
INSERT INTO admin.BID VALUES(622,  201, 327, TO_DATE('2021-02-15 10:50:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 136000000,1006);
INSERT INTO admin.BID VALUES(623,  201, 328, TO_DATE('2021-02-15 11:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13935000,1006);
INSERT INTO admin.BID VALUES(624,  204, 329, TO_DATE('2021-02-15 11:33:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 12300000,1006);
INSERT INTO admin.BID VALUES(625,  201, 329, TO_DATE('2021-02-15 12:00:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 32000000,1006);
INSERT INTO admin.BID VALUES(626,  201, 330, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12230000,1006);
INSERT INTO admin.BID VALUES(627,  201, 331, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11800000,1006);
INSERT INTO admin.BID VALUES(628,  201, 332, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11800000,1006);



--RCB
INSERT INTO admin.BID VALUES(629, 201, 333, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 10000083,1006);
INSERT INTO admin.BID VALUES(630, 206, 333, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13400000,1006);
INSERT INTO admin.BID VALUES(631, 206, 334, TO_DATE('2021-02-15 12:05:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12300000,1006);
INSERT INTO admin.BID VALUES(632, 206, 335, TO_DATE('2021-02-15 12:13:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11350090,1006);
INSERT INTO admin.BID VALUES(633, 207, 336, TO_DATE('2021-02-15 12:38:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 14200000,1006);
INSERT INTO admin.BID VALUES(634, 206, 336, TO_DATE('2021-02-15 1:32:00', 'yyyy-MM-dd hh24:mi:ss'),  'T', 15400000,1006);
INSERT INTO admin.BID VALUES(635, 201, 337, TO_DATE('2021-02-15 10:20:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 12600000,1006);
INSERT INTO admin.BID VALUES(636, 206, 337, TO_DATE('2021-02-15 10:34:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13373000,1006);
INSERT INTO admin.BID VALUES(637, 206, 338, TO_DATE('2021-02-15 10:50:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 136000000,1006);
INSERT INTO admin.BID VALUES(638, 206, 339, TO_DATE('2021-02-15 11:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13935000,1006);
INSERT INTO admin.BID VALUES(639, 203, 340, TO_DATE('2021-02-15 11:33:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12300000,1006);
INSERT INTO admin.BID VALUES(640, 206, 341, TO_DATE('2021-02-15 12:00:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 32000000,1006);
INSERT INTO admin.BID VALUES(641, 206, 342, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12230000,1006);
INSERT INTO admin.BID VALUES(642, 206, 343, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11800000,1006);


---SRH
INSERT INTO admin.BID VALUES(657, 202, 344, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 10000083,1006);
INSERT INTO admin.BID VALUES(643, 201, 345, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 13400000,1006);
INSERT INTO admin.BID VALUES(644, 202, 345, TO_DATE('2021-02-15 12:05:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13700000,1006);
INSERT INTO admin.BID VALUES(645, 202, 346, TO_DATE('2021-02-15 12:13:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11350090,1006);
INSERT INTO admin.BID VALUES(646, 205, 347, TO_DATE('2021-02-15 12:38:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 14200000,1006);
INSERT INTO admin.BID VALUES(647, 202, 347, TO_DATE('2021-02-15 1:32:00', 'yyyy-MM-dd hh24:mi:ss'),  'T', 15400000,1006);
INSERT INTO admin.BID VALUES(648, 203, 348, TO_DATE('2021-02-15 10:20:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 12600000,1006);
INSERT INTO admin.BID VALUES(649, 202, 348, TO_DATE('2021-02-15 10:34:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13373000,1006);
INSERT INTO admin.BID VALUES(650, 205, 349, TO_DATE('2021-02-15 10:50:00', 'yyyy-MM-dd hh24:mi:ss'), 'F', 136000000,1006);
INSERT INTO admin.BID VALUES(651, 202, 349, TO_DATE('2021-02-15 11:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 13935000,1006);
INSERT INTO admin.BID VALUES(652, 202, 350, TO_DATE('2021-02-15 11:33:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12300000,1006);
INSERT INTO admin.BID VALUES(653, 202, 351, TO_DATE('2021-02-15 12:00:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 32000000,1006);
INSERT INTO admin.BID VALUES(654, 202, 352, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12230000,1006);
INSERT INTO admin.BID VALUES(655, 202, 353, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 11800000,1006);
INSERT INTO admin.BID VALUES(656, 202, 354, TO_DATE('2021-02-15 12:03:00', 'yyyy-MM-dd hh24:mi:ss'), 'T', 12230000,1006);

COMMIT;


--Insert Payment values into Payment Table
INSERT INTO admin.Payment VALUES(800,601,300,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(801,602,301,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(802,604,302,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(803,605,303,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(804,606,304,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(805,608,305,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(806,609,306,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(807,610,307,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(808,611,308,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(809,612,309,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(810,613,310,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(811,615,322,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(812,616,323,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(813,617,324,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(814,619,325,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(815,621,326,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(816,622,327,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(817,623,328,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(818,625,329,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(819,626,330,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(820,627,331,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(821,628,332,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(822,630,333,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(823,631,334,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(824,632,335,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(825,634,336,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(826,636,337,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(827,637,338,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(828,638,339,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(829,640,341,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(830,641,342,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(831,642,343,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(832,657,344,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(833,644,345,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(834,645,346,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(835,647,347,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(836,649,348,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(837,651,349,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(838,652,350,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(839,653,351,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(840,654,352,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(841,655,353,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(842,656,354,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(843,702,355,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(844,703,356,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(845,705,357,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(846,706,358,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(847,708,359,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(848, 709,360  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(849, 711, 361 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(850, 712, 362 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(851, 714, 363  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(852, 715, 364  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(853, 716, 365 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(854, 718,366  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(855, 719, 367 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(856, 721,  368,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(857, 722, 369 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(858, 724, 370 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(859, 725,  371,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(860, 727, 372 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(861, 728,373  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(862, 730, 374 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(863, 731, 375 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(864, 732 , 376 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(865, 734, 377 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(866, 735, 378  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(867, 737 , 379 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(868, 738 , 380 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(869, 740, 381  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(870, 741, 382  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(871, 743, 383  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(872, 744, 384  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(873, 746, 385  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(874, 747, 386 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(875, 748, 387 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(876, 750, 311 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(877, 751, 312  ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(878, 753, 313 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(879, 754, 314 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(880, 756, 315 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(881, 757, 316 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(882, 759, 317 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(883, 760, 318 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(884, 762, 319 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(885, 763,  320,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(886, 764, 321 ,admin.reference_number_seq.NEXTVAL);
INSERT INTO admin.Payment VALUES(887,639,340,admin.reference_number_seq.NEXTVAL);

COMMIT;


--Insert Venue values into Venue Table

INSERT INTO admin.VENUE VALUES (1100, 'Eden Gardens', 8, 85000, 'KKR' , 'Kolkota');
INSERT INTO admin.VENUE VALUES (1101, 'MA Chidambaram Stadium', 5, 75000, 'CSK' , 'Chennai');
INSERT INTO admin.VENUE VALUES (1102, 'Arun Jaitley Stadium', 8, 95000, 'DC' , 'Delhi');
INSERT INTO admin.VENUE VALUES (1103, 'Wankhede Stadium', 8, 95000, 'MI' , 'Mumbai');
INSERT INTO admin.VENUE VALUES (1104, 'M.Chinnaswamy Stadium', 8, 95000, 'RCB' , 'Bengaluru');
INSERT INTO admin.VENUE VALUES (1105, 'Narendra Modi Stadium', 8, 90000, 'KXIP' , 'Punjab');
INSERT INTO admin.VENUE VALUES (1106, 'Rajiv Gandhi Stadium', 8, 95000, 'SRH' , 'Hyderabad');
INSERT INTO admin.VENUE VALUES (1107, 'Sawai Mansingh Stadium', 8, 95000, 'RR' , 'Jaipur');

COMMIT;






--Insert Fixture values into Fixture Table
INSERT INTO admin.FIXTURE VALUES(900, 'CSK', 'RCB', 1101, TO_DATE('2021-05-24 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'CSK', 'WON BY 10 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(901, 'CSK', 'MI', 1103, TO_DATE('2021-05-25 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'MI', 'WON BY 8 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(902, 'CSK', 'KKR', 1101, TO_DATE('2021-05-26 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'CSK', 'WON BY 9 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(903, 'CSK', 'DC', 1102, TO_DATE('2021-05-27 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'DC', 'WON BY 1 WICKET', 1006);
INSERT INTO admin.FIXTURE VALUES(904, 'CSK', 'RR', 1107, TO_DATE('2021-05-28 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'CSK', 'WON BY 3 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(905, 'CSK', 'SRH', 1101, TO_DATE('2021-05-29 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'CSK', 'WON BY 6 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(906, 'CSK', 'KXIP', 1101, TO_DATE('2021-05-30 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KXIP', 'WON BY 2 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(907,  'RCB', 'MI', 1104, TO_DATE('2021-05-31 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RCB', 'WON BY 10 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(908,  'RCB', 'KKR', 1100, TO_DATE('2021-06-01 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RCB', 'WON BY 10 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(909,  'RCB', 'DC', 1104, TO_DATE('2021-06-02 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'DC', 'WON BY 5 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(910,  'RCB', 'RR', 1107, TO_DATE('2021-06-03 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RR', 'WON BY 10 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(911,  'RCB', 'SRH', 1104, TO_DATE('2021-06-04 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RCB', 'WON BY 9 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(912,  'RCB', 'KXIP', 1105, TO_DATE('2021-06-05 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KXIP', 'WON BY 1 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(913,  'MI', 'KKR', 1103, TO_DATE('2021-06-06 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KKR', 'WON BY 10 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(914,  'MI', 'DC', 1102, TO_DATE('2021-06-07 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'MI', 'WON BY 10 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(915,  'MI', 'RR', 1103, TO_DATE('2021-06-08 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'MI', 'WON BY 1 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(916,  'MI', 'SRH', 1106, TO_DATE('2021-06-09 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'SRH', 'WON BY 4 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(917,  'MI', 'KXIP', 1105, TO_DATE('2021-06-10 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KXIP', 'WON BY 10 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(918,  'KKR', 'DC', 1100, TO_DATE('2021-06-11 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KKR', 'WON BY 1 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(919,  'KKR', 'RR', 1107, TO_DATE('2021-06-12 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RR', 'WON BY 8 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(920,  'KKR', 'SRH', 1100, TO_DATE('2021-06-13 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KKR', 'WON BY 1 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(921,  'KKR', 'KXIP', 1105, TO_DATE('2021-06-14 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KXIP', 'WON BY 3 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(922,  'DC', 'RR', 1102, TO_DATE('2021-06-15 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'DC', 'WON BY 10 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(923,  'DC', 'SRH', 1106, TO_DATE('2021-06-16 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'SRH', 'WON BY 5 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(924,  'DC', 'KXIP', 1102, TO_DATE('2021-06-17 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'DC', 'WON BY 1 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(925,  'RR', 'SRH', 1107, TO_DATE('2021-06-18 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RR', 'WON BY 5 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(926,  'RR', 'KXIP', 1105, TO_DATE('2021-06-19 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KXIP', 'WON BY 8 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(927,  'SRH', 'KXIP', 1105, TO_DATE('2021-06-20 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KXIP', 'WON BY 7 WICKETS', 1006);
INSERT INTO admin.FIXTURE VALUES(928, 'CSK', 'RCB', 1101, TO_DATE('2020-05-24 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RCB', 'WON BY 10 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(929, 'CSK', 'MI', 1103, TO_DATE('2020-05-25 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'CSK', 'WON BY 8 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(930, 'CSK', 'KKR', 1101, TO_DATE('2020-05-26 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KKR', 'WON BY 9 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(931, 'CSK', 'DC', 1102, TO_DATE('2020-05-27 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'CSK', 'WON BY 1 WICKET', 1005);
INSERT INTO admin.FIXTURE VALUES(932, 'CSK', 'RR', 1107, TO_DATE('2020-05-28 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RR', 'WON BY 3 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(933, 'CSK', 'SRH', 1101, TO_DATE('2020-05-29 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'SRH', 'WON BY 6 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(934, 'CSK', 'KXIP', 1101, TO_DATE('2020-05-30 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'CSK', 'WON BY 2 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(935,  'RCB', 'MI', 1104, TO_DATE('2020-05-31 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'MI', 'WON BY 10 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(936,  'RCB', 'KKR', 1100, TO_DATE('2020-06-01 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KKR', 'WON BY 10 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(937,  'RCB', 'DC', 1104, TO_DATE('2020-06-02 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RCB', 'WON BY 5 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(938,  'RCB', 'RR', 1107, TO_DATE('2020-06-03 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RCB', 'WON BY 10 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(939,  'RCB', 'SRH', 1104, TO_DATE('2020-06-04 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'SRH', 'WON BY 9 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(940,  'RCB', 'KXIP', 1105, TO_DATE('2020-06-05 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RCB', 'WON BY 1 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(941,  'MI', 'KKR', 1103, TO_DATE('2020-06-06 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'MI', 'WON BY 10 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(942,  'MI', 'DC', 1102, TO_DATE('2020-06-07 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'DC', 'WON BY 10 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(943,  'MI', 'RR', 1103, TO_DATE('2020-06-08 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RR', 'WON BY 1 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(944,  'MI', 'SRH', 1106, TO_DATE('2020-06-09 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'MI', 'WON BY 4 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(945,  'MI', 'KXIP', 1105, TO_DATE('2020-06-10 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'MI', 'WON BY 10 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(946,  'KKR', 'DC', 1100, TO_DATE('2020-06-11 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'DC', 'WON BY 1 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(947,  'KKR', 'RR', 1107, TO_DATE('2020-06-12 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KKR', 'WON BY 8 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(948,  'KKR', 'SRH', 1100, TO_DATE('2020-06-13 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'SRH', 'WON BY 1 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(949,  'KKR', 'KXIP', 1105, TO_DATE('2020-06-14 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KKR', 'WON BY 3 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(950,  'DC', 'RR', 1102, TO_DATE('2020-06-15 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RR', 'WON BY 10 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(951,  'DC', 'SRH', 1106, TO_DATE('2020-06-16 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'DC', 'WON BY 5 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(952,  'DC', 'KXIP', 1102, TO_DATE('2020-06-17 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'KXIP', 'WON BY 1 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(953,  'RR', 'SRH', 1107, TO_DATE('2020-06-18 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'SRH', 'WON BY 5 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(954,  'RR', 'KXIP', 1105, TO_DATE('2020-06-19 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'RR', 'WON BY 8 WICKETS', 1005);
INSERT INTO admin.FIXTURE VALUES(955,  'SRH', 'KXIP', 1105, TO_DATE('2020-06-20 23:30:00', 'yyyy-MM-dd hh24:mi:ss'), 'SRH', 'WON BY 7 WICKETS', 1005);
COMMIT;





--Insert Team_Standings values into Team_Standings Table

INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,6,1,0,0,12,1006,'KXIP');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,4,3,0,0,8,1006,'CSK');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,4,3,0,0,8,1006,'DC');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,3,4,0,0,6,1006,'RCB');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,3,4,0,0,6,1006,'MI');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,3,4,0,0,6,1006,'RR');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,3,4,0,0,6,1006,'KKR');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,2,5,0,0,4,1006,'SRH');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,5,2,0,0,12,1005,'SRH');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,4,3,0,0,8,1005,'RCB');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,4,3,0,0,8,1005,'MI');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,4,3,0,0,6,1005,'RR');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,4,3,0,0,6,1005,'KKR');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,3,4,0,0,6,1005,'CSK');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,3,4,0,0,6,1005,'DC');
INSERT INTO admin.team_standings VALUES (TEAM_STANDINGS_SEQ.NEXTVAL,7,1,6,0,0,4,1005,'KXIP');

COMMIT;



--Insert Ticket_Class values into Ticket_Class Table

INSERT INTO admin.TICKET_CLASS VALUES (admin.TICKET_CLASS_SEQ.nextval, 'SILVER', 30);
INSERT INTO admin.TICKET_CLASS VALUES (admin.TICKET_CLASS_SEQ.nextval, 'GOLD', 50);
INSERT INTO admin.TICKET_CLASS VALUES (admin.TICKET_CLASS_SEQ.nextval, 'PLATINUM', 100);

COMMIT;


----Insert Booking values into Booking Table

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2000, 500, 4, 1006);
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2000, 501, 2 , 1006);
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,900, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2000, 500, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 509, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2000, 516, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2000, 518, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2002, 521, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 523, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 527, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,901, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2000, 502, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 504, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2002, 505, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 509, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2002, 514, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 519, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 524, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2001, 528, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,902, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2000, 501, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2002, 505, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 508, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2002, 510, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2000, 515, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 519, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 522, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2002, 525, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,903, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2000, 500, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2000, 503, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 507, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2002, 510, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2000, 517, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2002, 521, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2002, 525, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,904, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2000, 500, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2000, 503, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 507, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 512, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 519, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 524, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2001, 528, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,905, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2000, 501, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2002, 505, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 508, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2002, 510, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2002, 514, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 519, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 523, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 527, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,906, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2000, 503, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 507, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2002, 510, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2000, 516, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 524, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2001, 528, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,907, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2000, 502, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2002, 505, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 507, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2002, 510, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2000, 515, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2002, 520, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 524, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,908, 2002, 529, 15, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2000, 502, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 507, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 513, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2000, 518, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 522, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2002, 525, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,909, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2000, 501, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2002, 506, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 512, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2000, 517, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 522, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2001, 528, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,910, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2000, 503, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 509, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2000, 515, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2000, 518, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 519, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2002, 525, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,911, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2000, 500, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 508, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2002, 514, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2000, 516, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 522, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 527, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,912, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2000, 500, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2002, 505, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 512, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 519, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 523, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2001, 528, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,913, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2000, 503, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 508, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2002, 514, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 522, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 527, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,914, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2000, 500, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 508, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2000, 515, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 523, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2001, 528, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,915, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2000, 503, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 508, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2000, 517, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 522, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2001, 528, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,916, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2000, 503, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 509, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2000, 516, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2002, 525, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,917, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2000, 501, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 508, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2000, 515, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 522, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 527, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,918, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2000, 502, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2002, 506, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2002, 510, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2000, 516, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 522, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,919, 2002, 529, 15, 1006 );


INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2002, 505, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2000, 515, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 519, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 524, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 527, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,920, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2000, 501, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2002, 506, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2002, 510, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2000, 517, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 522, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2001, 528, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,921, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2002, 505, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2000, 517, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2002, 521, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2002, 525, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,922, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2000, 503, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 507, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2000, 515, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2000, 518, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2002, 521, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2001, 528, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,923, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2000, 503, 16, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2002, 510, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2002, 520, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 527, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,924, 2002, 529, 15, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 504, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 508, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 513, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2002, 520, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2002, 525, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,925, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2000, 500, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2000, 502, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2002, 505, 13, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 508, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2002, 510, 15, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2000, 517, 1, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 519, 14, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 522, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 524, 12, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2001, 528, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,926, 2002, 529, 5, 1006 );

INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2000, 500, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2000, 501, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2000, 502, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2000, 503, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 504, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2002, 505, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2002, 506, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 507, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 508, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 509, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2002, 510, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 511, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 512, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 513, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2002, 514, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2000, 515, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2000, 516, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2000, 517, 11, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2000, 518, 6, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 519, 4, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2002, 520, 3, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2002, 521, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 522, 18, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 523, 7, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 524, 2, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2002, 525, 5, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 526, 10, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 527, 8, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2001, 528, 17, 1006 );
INSERT INTO admin.booking values(admin.booking_seq.NEXTVAL  ,927, 2002, 529, 5, 1006 );

COMMIT;
