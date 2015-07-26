# UI file
library(shiny)
source('helper.R')
fluidPage(
    
    titlePanel("Wordcloud Some Stories"),
    
    sidebarLayout(

        sidebarPanel(
            p('Note: Be sure you provide a proper URL. There is no conditional logic
              to help stop errors, such as a bad URL, or a site without <p> tags. Proceed 
              with caution.'),
            textInput("customURL", "Enter a News URL", 
                      value = "http://usa.chinadaily.com.cn/world/2015-02/09/content_19524269.htm"),
            actionButton("updateArticle", "Wordcloud a New Article"),
            hr(),
            # slider bar chooses the minimum frequency of words needed
            # for plotting
            sliderInput("freq",
                        "Choose min word count to include",
                        min = 1,  max = 50, value = 20),
            # slider bar chooses the max # of words to plot
            sliderInput("max",
                        "Choose the max number of words in the cloud",
                        min = 50,  max = 250,  value = 150)
        ),
        
        # Plot the wordcloud
        mainPanel(
            plotOutput("plot")
        )
    )
)