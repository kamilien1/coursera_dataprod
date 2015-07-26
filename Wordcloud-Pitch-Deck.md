Wordcloud Pitch Deck
========================================================
author: Kamil Bojanczyk
date: July 2015

Wordcloud App
========================================================

The wordcloud app can be [viewed by clicking on this linked text.](https://kamilien1.shinyapps.io/coursera_dataprod) 

The premise of the app is straightforward: take a website link and make a wordcloud
of the words. A **wordcloud** is simply a cloud of words. Motivation for creating a 
wordcloud can be found [here.](http://onertipaday.blogspot.com/2011/07/word-cloud-in-r.html)

Why Use a Wordcloud?
========================================================

Wordclouds are great for situations where you would like to know the summary of 
a large block of text. **Professional** examples include exploratory analysis of:  
* patents  
* research articles  

**Personal** examples include:  
* a holiday greeting that summarizes your e-mail communications with someone over the years  
* analyzing your communcations with friends, to see if you really do use the word "bro" too often


How Does it Work?
========================================================
A [`helper.R`](https://github.com/kamilien1/coursera_dataprod/blob/master/helper.R) 
file contains the wordcloud function. 

The `getURLtext(myurl)` function returns a 
character object of all text found between the \<p> tags of a URL. 

The `word_cloud_it()` function is a wrapper function to clean up text (*motivation from [this source](http://onertipaday.blogspot.com/2011/07/word-cloud-in-r.html)*), and graphs a word cloud. 

Let's evaluate the expression in the next slide, using patent US20130263920A1 [Multi-junction solar cells with through-via contacts](https://patents.google.com/patent/US20130263920A1/en) by Solar Junction, a specialty solar company based out of California. 


Example Cloud
========================================================

