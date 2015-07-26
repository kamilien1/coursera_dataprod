# load relevant libraries
library(RColorBrewer)
library(wordcloud)
library(tm)
# rvest parses text nicely
library(rvest)

# If we get a 0 value, an error is thrown
getURLtext <- function(myurl) {
    htmlpage <-html(myurl)
    text <- html_nodes(htmlpage,xpath="//p")
    words <- html_text(text)
    words
}
## words to exclude
other_words <- c('said','who','the','will','neededundo','needed','undo')

# function
word_cloud_it <- function(file, rmwords='',minfreq = 5,maxwords=150, ...) {

    # take in the entire file
    # so you better subset the columns to claim1 and whatever else
    c <- Corpus(VectorSource(file))
    # convert to UTF 8 to 'make it work'
    c <- tm_map(c,content_transformer(function(x) iconv(x, to='UTF-8-MAC', sub='byte')), mc.cores=1)
    # lower case results
    c <- tm_map(c,content_transformer(tolower),mc.cores=1)
    # no punctuations !?.,
    c <- tm_map(c,removePunctuation,mc.cores=1)
    # no stop words! If the but as...
    c <- tm_map(c,function(x) removeWords(x,stopwords()),mc.cores=1)
    # remove custom words
    c <- tm_map(c,function(x) removeWords(x,rmwords),mc.cores=1)
    # Make it pretty with 4 colors in the Dark2 palette
    pal2 <- brewer.pal(4,"Dark2")
    # take in additional functions if we want
    wordcloud(c,min.freq=minfreq,max.words=maxwords, colors=pal2,...)
    
}