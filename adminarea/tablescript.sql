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
