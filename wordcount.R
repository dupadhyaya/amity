#!/usr/bin/env Rscript

library('stringi')
stdin <- file('stdin', open='r')

while(length(x <- readLines(con=stdin, n=1024L))>0) {
  x <- unlist(stri_extract_all_words(x))
  xt <- table(x)
  words <- names(xt)
  counts <- as.integer(xt)
  cat(stri_paste(words, counts, sep='t'), sep='n')
}
Create a source file wc_reducer.cpp:
 