## Generate website
library(readxl)
library(tools)

dat <- read_xlsx("./test-science-documents-library.xlsx")
num_posts <- nrow(dat); print(c("Number of posts:", num_posts))


for (i in 1:num_posts) {
  print(i)
  try(blogdown::new_post(title = dat[i, ]$Project,
                         date = dat[i, ]$Year,
                         author = dat[i, ]$Authors,
                         open = FALSE),
      silent = TRUE)
}
