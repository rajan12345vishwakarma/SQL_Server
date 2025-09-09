
CREATE TABLE tblGender
(
  ID INT PRIMARY KEY NOT NULL,
  Gender NVARCHAR(50) NOT NULL
)

CREATE TABLE tblPerson
(
  ID INT PRIMARY KEY NOT NULL,
  Name NVARCHAR(50) NOT NULL,
  Email NVARCHAR(50) NOT NULL,
  GenderId INT NULL
)  
-- adding foreign key --
ALTER TABLE tblPerson ADD CONSTRAINT tblPerson_GenderID_FK FOREIGN KEY (GenderId) REFERENCES tblGender(ID)

-- add a default constraint
ALTER TABLE tblPerson ADD CONSTRAINT DF_tblPerson_GenderId DEFAULT 3 FOR GenderId

-- delete a default constraint
ALTER TABLE tblPerson DROP CONSTRAINT DF_tblPerson_GenderId 