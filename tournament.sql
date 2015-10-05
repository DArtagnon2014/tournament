-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

create database tournament;

create table players (
	id serial primary key,
	name varchar(50) UNIQUE NOT NULL,
	dateCreated timestamp DEFAULT current timestamp
);

#Add Primary key
ALTER TALBE tournament ADD PRIMARY KEY (id);

#Create an Index
#CREATE UNIQUE INDEX indexName ON tableName (columnNames);

#Search using a regular expression
#SELECT column FROM table WHERE column ~ 'foo.*';
