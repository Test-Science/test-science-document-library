## Generate website
library(readxl)
library(here)
library(data.table)
library(tools)

dat <- read_xlsx("./test-science-documents-library.xlsx")
num_posts <- nrow(dat); print(c("Number of posts:", num_posts))

## Run this to create all the folders and slugs. Not Destructive.
## source("./create-project.R")

## Use blogdown to make new post folders and slugs
## stopped on 27
posts <- list.files(here("content/post"), ".md$", recursive = TRUE, full.names = TRUE)
posters <- list.files(here("content/post"), "poster", recursive = TRUE, full.names = TRUE)
slides <- list.files(here("content/post"), "slide", recursive = TRUE, full.names = TRUE)
papers <- list.files(here("content/post"), "paper", recursive = TRUE, full.names = TRUE)


for (i in 1:num_posts) {
  ## Monitor progress
  print(paste(i, ":", dat[i, ]$Project))

  ## Find the markdown file for each line
  slug <- gsub("/index", "", blogdown:::trim_ws(blogdown:::post_filename(dat[i, ]$Project, "", "", dat[i, ]$Year)))

  ## Find the paper, poster, and slide for this slug
  post <- list.files(here(paste0("content/post/", slug)), ".md", full.names = TRUE)
  poster <- list.files(here(paste0("content/post/", slug)), "poster")
  slide <- list.files(here(paste0("content/post/", slug)), "slide")
  paper <- list.files(here(paste0("content/post/", slug)), "paper")
  cover <- list.files(here(paste0("content/post/", slug)), "cover")


  ## Create project data
  project_data <- sprintf(
    "---
title: %s
author: %s
date: %s-01-01
year: %s
slug: []
areas: %s
keywords: %s
researchers: %s
audience: %s
venues: %s
draft: no
cover:
  image: ''
---

%s

%s

#### Suggested Citation
> %s

%s

%s

%s",

### YAML stuff
toTitleCase(dat[i, ]$Project),
dat[i, ]$Authors,
dat[i, ]$Year, # Date, for the headers
dat[i, ]$Year, # Year, for taxonomies

# Research Area
paste0("[", paste(paste0( "'", strsplit(dat[i, ]$Area, split = ", ")[[1]], "'"), collapse = ","), "]"),

# Keywords, Convert a, b, c to ['a', 'b', 'c']
paste0("[", paste(paste0( "'", strsplit(dat[i, ]$Keywords, split = ", ")[[1]], "'"), collapse = ","), "]"),

# Researchers for taxonomy
paste0("[", paste(paste0( "'", strsplit(dat[i, ]$Authors, split = ", ")[[1]], "'"), collapse = ","), "]"),

# Audience
dat[i, ]$Audience,

# Journals
dat[i, ]$Journal,

# Cover image
## ifelse(!identical(cover, character(0)),
##        paste0( "\"", cover, "\""),
##        ""),


### Content

# Video, if present
ifelse(!is.na(dat[i, ]$Video),
       paste("{{< youtube id=",
             ## Extract the video ID from the youtube URL
             regmatches(dat[i, ]$Video, regexpr("(?<=watch\\?v=).*$", dat[i, ]$Video, perl = TRUE)),
             ">}}"),
       ""),

# Abstract, if present
ifelse(!is.na(dat[i, ]$Description),
       paste(dat[i, ]$Description),
       ""),

# Suggest Citation
dat[i, ]$`Suggested-Citation`,


# Slides
ifelse(!identical(slide, character(0)),
       paste0("#### Slides: ",
              "\n",
              "{{< pdfReader \"", slide, "\" >}}"),
       ""),


# Paper
ifelse(!identical(paper, character(0)),
       paste0("#### Paper: ",
              "\n",
              "{{< pdfReader \"", paper, "\" >}}"),
       ""),

# Poster
ifelse(!identical(poster, character(0)),
       paste0("#### Poster: ",
              "\n",
              "{{< pdfReader \"", poster, "\" >}}"),
       "")
)

  ## Write to each file
  writeLines(project_data, post)
}
