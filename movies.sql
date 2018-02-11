DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS tags;

# Read movies.csv file
CREATE TABLE movies (
  movieId integer, 
  title varchar(200),
  genres varchar(100)  
  );
  
LOAD DATA INFILE 'C:/CUNY/Spring2018/DATA607/week2/assignment/ml-latest-small/movies.csv' 
INTO TABLE movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Check 10 obs of movies;
SELECT *
FROM movies
LIMIT 10;

# Load ratings.csv
CREATE TABLE ratings (
  userId integer,
  movieId integer,
  rating decimal(3,1),
  timestamp integer
  );
  
LOAD DATA INFILE 'C:/CUNY/Spring2018/DATA607/week2/assignment/ml-latest-small/ratings.csv' 
INTO TABLE ratings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Check 10 obs;
SELECT *
FROM ratings
LIMIT 10;

# Load tags.csv
CREATE TABLE tags (
  userId integer,
  movieId integer,
  tag varchar(100),
  timestamp integer
  );
  
LOAD DATA INFILE 'C:/CUNY/Spring2018/DATA607/week2/assignment/ml-latest-small/tags.csv' 
INTO TABLE tags
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Check 10 obs;
SELECT *
FROM tags
LIMIT 10;



