###################################################################
# Class Exercise 2
# Jan Bühlmann, Sascha Eng & Ursulina Kölbener
###################################################################

# 1. install and load packages ----
# install.packages("httr")
# install.packages("jsonlite")

library(httr)
library(jsonlite)
library(tidyverse)

# 2. save personal API key ----
api_key <- rstudioapi::askForPassword()
# make sure the key is not pushed to github

# 3. GET requests to guardian.com ----
base_url <- "https://content.guardianapis.com/search"
searchterms <- "northern ireland protocol OR northern ireland deal OR windsor framework"

resp <- httr::GET(base_url, 
                  query = list(key = api_key, q = searchterms))

http_status(resp)
