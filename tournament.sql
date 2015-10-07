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

create table pairs (
	pair_id serial primary key,
	id serial UNIQUE NOT NULL,
	dateCreated timestamp DEFAULT current timestamp
);

create table matches (
	match_id serial primary key,
	pair_id serial UNIQUE NOT NULL,
	winner_id serial,
	dateCreated timestamp DEFAULT current timestamp
);

create table rounds (
	round serial primary key,
	match_id serial UNIQUE NOT NULL,
	dateCreated timestamp DEFAULT current timestamp
);

#Add Primary key to players table
ALTER TALBE players ADD PRIMARY KEY (id);

#Create an Index
#CREATE UNIQUE INDEX indexName ON tableName (columnNames);

#Search using a regular expression
#SELECT column FROM table WHERE column ~ 'foo.*';
