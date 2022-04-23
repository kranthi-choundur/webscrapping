library(robotstxt)
library(rvest)
search()


#assign a variable for website link

url="https://www.imdb.com/chart/top/"


#check whether the website is allowed to scrap

path <- paths_allowed(url)

#html elements from website


my_html = read_html(url)
View(my_html)

 #segegate the tables

my_tables = html_nodes(my_html,"table")
View(my_tables)

#storing a table

movie_table=html_table(my_tables)[[1]]

#view table

View(movie_table)

#slicing the columns

movies = movie_table[ ,2:3]

#view sliced data

View(movies)

#checking data types

str(movies)

#export the data to local drive
 write.csv(movies,"imbrating.csv")


