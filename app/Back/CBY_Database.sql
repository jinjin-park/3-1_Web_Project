CREATE TABLE `User` (
  `UserID` String PRIMARY KEY,
  `Name` String,
  `Password` integer,
  `RegisterationDate` timestamp
);

CREATE TABLE `Question` (
  `QuestionID` integer PRIMARY KEY,
  `Content` String
);

CREATE TABLE `Answer` (
  `AnswerID` integer PRIMARY KEY,
  `UserID` String,
  `QuestionID` integer,
  `Content` String,
  `CreationDate` timestamp
);

CREATE TABLE `Image` (
  `ImageID` integer PRIMARY KEY,
  `ImagePath` String
);

CREATE TABLE `Diary` (
  `DiaryID` integer PRIMARY KEY,
  `UserID` String,
  `Content` String,
  `CreationDate` timestamp
);

ALTER TABLE `Answer` ADD FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

ALTER TABLE `Diary` ADD FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

ALTER TABLE `Answer` ADD FOREIGN KEY (`QuestionID`) REFERENCES `Question` (`QuestionID`);
