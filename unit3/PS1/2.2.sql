CREATE TABLE `artists` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
);

CREATE TABLE `genres` (
  `genre` varchar(50) NOT NULL,
  PRIMARY KEY (`genre`)
);

CREATE TABLE `songs` (
  `title` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`title`)
);

CREATE TABLE `songtoartist` (
  `songTitle` varchar(50) NOT NULL,
  `artistName` varchar(50) NOT NULL,
  CONSTRAINT `artist2` FOREIGN KEY (`artistName`) REFERENCES `artists` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `songTitle2` FOREIGN KEY (`songTitle`) REFERENCES `songs` (`title`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `songtogenres` (
  `songTitle` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  CONSTRAINT `genre` FOREIGN KEY (`genre`) REFERENCES `genres` (`genre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `songTitle` FOREIGN KEY (`songTitle`) REFERENCES `songs` (`title`) ON DELETE CASCADE ON UPDATE CASCADE
);



INSERT INTO songs VALUES 
	("Perfect", "2017"), 
    ("Ends of the Earth", "2012"), 
    ("The Change", "2011"), 
    ("Galway Girl", 2017), 
    ("Massachusetts", "1967"), 
    ("Back In Black", "1980"),
    ("Give Me the Future", "2022"),
    ("Nobody's Home", "2004"),
    ("Simple Song", "2012"),
    ("Scream", "2015");
    
INSERT INTO artists VALUES 
	("Ed Sheeran"),
    ("Lord Huron"),
    ("Evanescence"),
    ("The Bee Gees"),
    ("AC/DC"),
    ("Bastille"),
    ("Avril Lavigne"),
    ("The Shins"),
    ("Halestorm");
    
INSERT INTO genres VALUES 
	("Hard Rock"),
    ("Alternative"),
    ("Pop"),
    ("Dance Pop"),
    ("Heavy Metal"),
    ("Rock");
    
INSERT INTO songtoartist VALUES 
	("Perfect", "Ed Sheeran"),
    ("Ends of the Earth", "Lord Huron"),
    ("The Change", "Evanescence"),
    ("Galway Girl", "Ed Sheeran"),
    ("Massachusetts", "The Bee Gees"),
    ("Back In Black", "AC/DC"),
    ("Give Me the Future", "Bastille"),
    ("Nobody's Home", "Avril Lavigne"),
    ("Simple Song", "The Shins"),
    ("Scream", "Halestorm");
    
INSERT INTO songtogenres VALUES
	("Perfect", "Pop"),
    ("Ends of the Earth", "Rock"),
    ("The Change", "Rock"),
    ("Galway Girl", "Pop"),
    ("Massachusetts", "Pop"),
    ("Back In Black", "Hard Rock"),
    ("Back In Black", "Heavy Metal"),
    ("Give Me the Future", "Alternative"),
    ("Give Me the Future", "Dance Pop"),
    ("Nobody's Home", "Pop"),
    ("Simple Song", "Alternative"),
    ("Scream", "Hard Rock");