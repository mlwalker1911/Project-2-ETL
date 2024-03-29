CREATE TABLE country (
    country_id INT   ,
    country_name varchar(50)   ,
    PRIMARY KEY (country_id)
);
​
CREATE TABLE college (
    college_id INT   ,
    college_name varchar(50)   ,
    PRIMARY KEY (college_id)
);
​
CREATE TABLE players (
    Players_ID INT   ,
    Players_Name varchar(50)   ,
    PRIMARY KEY (Players_ID)
);
​
CREATE TABLE team (
    Team_ID INT   ,
    Team_Name varchar(50)   ,
    PRIMARY KEY (Team_ID)
);
​
CREATE TABLE season78 (
    Players_ID int   ,
    WS float   ,
    Season INT   ,
    FOREIGN KEY (Players_ID) REFERENCES players (Players_ID),
    PRIMARY key (Players_ID)
);
​
CREATE TABLE stat (
    Players_ID INT   ,
    gp float   ,
    pts float   ,
    reb float   ,
    ast float   ,
    net_rating float   ,
    oreb_pct float   ,
    dreb_pct float   ,
    usg_pct float   ,
    ts_pct float   ,
    ast_pct float   ,
    season varchar(10)   ,
    FOREIGN KEY (Players_ID) REFERENCES players (Players_ID),
    PRIMARY KEY (Players_ID)
);
​
CREATE TABLE demographic (
    age float   ,
    player_height float   ,
    player_weight float   ,
    draft_year varchar(50)   ,
    draft_round varchar(50)   ,
    draft_number varchar(50)   ,
    Players_ID INT   ,
    Team_ID INT   ,
    College_ID INT   ,
    Country_ID INT   ,
    FOREIGN KEY (Players_ID) REFERENCES players (Players_ID),
    FOREIGN KEY (Team_ID) REFERENCES team (Team_ID),
    FOREIGN KEY (College_ID) REFERENCES college (College_ID),
    FOREIGN KEY (Country_ID) REFERENCES country (Country_ID),
    PRIMARY KEY (Players_ID,Team_ID,College_ID,Country_ID)
    
);
​
