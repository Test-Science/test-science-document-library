## Generate website
library(readxl)
library(here)
library(data.table)
library(tools)

dat <- read_xlsx("./test-science-documents-library.xlsx")
num_posts <- nrow(dat)

## Run this to create all the folders and slugs. Not Destructive.

## for (i in 1:num_posts) {
##   print(i)
##   try(blogdown::new_post(title = dat[i, ]$Project,
##                          date = dat[i, ]$Year,
##                          author = dat[i, ]$Authors,
##                          open = FALSE),
##       silent = TRUE)
## }

## Use blogdown to make new post folders and slugs
## stopped on 27
posts <- list.files(here("content/post"), ".md$", recursive = TRUE, full.names = TRUE)
posters <- list.files(here("content/post"), "poster.pdf$", recursive = TRUE, full.names = TRUE)
slides <- list.files(here("content/post"), "slides.pdf$", recursive = TRUE, full.names = TRUE)
papers <- list.files(here("content/post"), "paper.pdf$", recursive = TRUE, full.names = TRUE)


for (i in 1:num_posts) {
  ## Monitor progress
  print(paste(i, ":", dat[i, ]$Project))

  ## Find the markdown file for each line
  slug <- gsub("/index", "", blogdown:::trim_ws(blogdown:::post_filename(dat[i, ]$Project, "", "", dat[i, ]$Year)))

  ## Find the paper, poster, and slide for each slug
  post <- posts[grepl(slug, posts)]
  poster <- posters[grepl(slug, posters)]
  paper <- papers[grepl(slug, papers)]
  slide <- slides[grepl(slug, slides)]

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
journal: %s
draft: no
---

%s

### Abstract

%s

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
paste0("[", paste(paste0( "'", strsplit(dat[i, ]$Journal, split = ", ")[[1]], "'"), collapse = ","), "]"),


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

# Slides
ifelse(!identical(slide, character(0)),
       paste("### Slides",
             "{{< pdfReader \"slides.pdf\" >}}"),
       ""),


# Paper
ifelse(!identical(paper, character(0)),
       paste("### Paper", "\n",
             "{{< pdfReader \"paper.pdf\" >}}"),
       ""),

# Poster
ifelse(!identical(poster, character(0)),
       paste("### Poster", "\n",
             "{{< pdfReader \"poster.pdf\" >}}"),
       "")
)

  ## Write to each file
  writeLines(project_data, post)
  }
