# Note -- My Shiny-Hosted App went over the "Free" Usage Amount

My apologies, this is the limit of my technical prowess...  
So please use the following code to run my app:

`library(shinyapps)`  
`runGitHub("coursera_dataprod" , "kamilien1")`


Thanks for being understanding! If you solve the issue, please post it on 
our course page. I made a forum thread on this topic:  
https://class.coursera.org/devdataprod-030/forum/thread?thread_id=101

...and I think I know why. I read on the [shinyapps](https://www.rstudio.com/products/shinyapps/) site 
that I get **25** active hours. I accidentally ran my app for 25 hours straight! So I think you'll 
need to use `runGitHub()`. Sorry, and thanks for being patient! 


# coursera_dataprod: Wordcloud an Article
Final project for Developing Data Products


There is a `ui.R, server.R` and `helper.R` file here.

This project creates a wordcloud of all text from the \<p> html tag.

The user can input his own URL. 

It was tested on Yahoo News articles, however, it works on other sites.

Additionally, there is a Slidify presentation. 

## Getting Started

Getting started is a cinc:  
1. Put in a URL of preferably a news article  
2. Hit the "Wordcloud a New Article Button" and watch a wordcloud appear!  
3. Play around with the sliders. The first one changes the color of the words
by the frequency of their occurance. Higher values are easier to understand.
The second slider shows the max number of words in the cloud.  
4. Rinse and repeat! 