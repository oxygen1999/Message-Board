drop database ch11;
create database ch11;
use ch11;
CREATE TABLE users (
  UserID bigint(20) NOT NULL auto_increment,
  UserName varchar(20) default NULL,
  UserPassword varchar(20) default NULL,
  PRIMARY KEY (UserID)
) ;
CREATE TABLE words (
  WordsID bigint(20) NOT NULL auto_increment,
  WordsTitle varchar(100) default NULL,
  WordsContent text,
  WordsTime datetime default '0000-00-00 00:00:00',
  UserID bigint(20) NOT NULL default '0',
  PRIMARY KEY  (WordsID)
 ) ;
