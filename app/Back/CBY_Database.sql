CREATE TABLE `User` (
  `UserID` VARCHAR(255) PRIMARY KEY,
  `Name` VARCHAR(255),
  `Password` VARCHAR(255),
  `RegisterationDate` TIMESTAMP
);

CREATE TABLE `Question` (
  `QuestionID` INTEGER PRIMARY KEY,
  `Content` VARCHAR(255)
);

CREATE TABLE `Answer` (
  `AnswerID` INTEGER PRIMARY KEY,
  `UserID` VARCHAR(255),
  `QuestionID` INTEGER,
  `Content` VARCHAR(255),
  `CreationDate` TIMESTAMP,
  FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`),
  FOREIGN KEY (`QuestionID`) REFERENCES `Question` (`QuestionID`)
);

CREATE TABLE `Image` (
  `ImageID` INTEGER PRIMARY KEY,
  `ImagePath` VARCHAR(255)
);

CREATE TABLE `Diary` (
  `DiaryID` INTEGER PRIMARY KEY,
  `UserID` VARCHAR(255),
  `Content` VARCHAR(255),
  `CreationDate` TIMESTAMP,
  FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`)
);
