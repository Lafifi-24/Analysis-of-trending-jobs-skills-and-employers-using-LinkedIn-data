-------------------------------------------------------------------------------# create dimsion -----------------------------------------------------------------------------------------------
create table Date (Id int primary key AUTO_INCREMENT,Year int NOT NULL,Quarter int NOT NULL,Month int NOT NULL);
create table Industry(Id int primary key AUTO_INCREMENT,Industry varchar(100) UNIQUE NOT NULL);
create table Location(Id int primary key AUTO_INCREMENT,Continent varchar(100) NOT NULL,Country varchar(100) NOT NULL,Region varchar(100) NOT NULL);
create table Rank(Id int primary key AUTO_INCREMENT,Rank int UNIQUE NOT NULL);
create table Category(Id int primary key AUTO_INCREMENT,Trending_type varchar(100) NOT NULL,Category varchar(200) NOT NULL);
ALTER TABLE Date ADD UNIQUE(Year,Quarter,Month);
ALTER TABLE Location ADD UNIQUE(Country,Region);
ALTER TABLE Category ADD UNIQUE(Trending_type,Category);

ALTER TABLE Date ENGINE=InnoDB;
ALTER TABLE Industry ENGINE=InnoDB;
ALTER TABLE Location ENGINE=InnoDB;
ALTER TABLE Rank ENGINE=InnoDB;
ALTER TABLE Category ENGINE=InnoDB;




---------------------------------------------------------------------------------#create table fact-----------------------------------------------------------------------------------------
CREATE TABLE Fact(id_location INT ,id_date int ,id_industry int ,id_category int,id_rank INT,value FLOAT(16, 10));
ALTER TABLE fact ENGINE=InnoDB;
ALTER TABLE fact
    ADD FOREIGN KEY
    (id_location)
    REFERENCES location(id);
ALTER TABLE fact
    ADD FOREIGN KEY
    (id_date)
    REFERENCES date(id);
ALTER TABLE fact
    ADD FOREIGN KEY
    (id_industry)
    REFERENCES industry(id);
ALTER TABLE fact
    ADD FOREIGN KEY
    (id_category)
    REFERENCES category(id);
ALTER TABLE fact
    ADD FOREIGN KEY
    (id_rank)
    REFERENCES rank(id);
ALTER TABLE fact ADD PRIMARY KEY(id_location,id_date,id_industry,id_category,id_rank);

