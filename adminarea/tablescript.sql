CREATE TABLE packagerate(
  ID int IDENTITY(1,1) PRIMARY KEY,
  packageid int NOT NULL,
  ratetitle VARCHAR(150),
  rate VARCHAR(50)
);

CREATE TABLE pacakgeinexclusions(
  ID int IDENTITY(1,1) PRIMARY KEY,
  packageid int NOT NULL,
  inclusiontitle VARCHAR(150),
  togglefield INT
);
DROP TABLE packagedays;
CREATE TABLE packagedays(
  ID int IDENTITY(1,1) PRIMARY KEY,
  packageid int NOT NULL,
month1 VARCHAR(150),
month2 VARCHAR(150),
month3 VARCHAR(150),
month4 VARCHAR(150),
month5 VARCHAR(150),
month6 VARCHAR(150),
month7 VARCHAR(150),
month8 VARCHAR(150),
month9 VARCHAR(150),
month10 VARCHAR(150),
month11 VARCHAR(150),
month12 VARCHAR(150)
);

