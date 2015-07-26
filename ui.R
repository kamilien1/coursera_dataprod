# UI file
source('helper.R')
fluidPage(
    
    titlePanel("Wordcloud Some Stories"),
    
    sidebarLayout(

        sidebarPanel(
            p('Note: This may work with non-yahoo articles, however, 
              it was only tested with Yahoo News articles...proceed with caution'),
            textInput("customURL", "Enter a Yahoo News URL", 
                      value = "http://news.yahoo.com/greek-pm-tsipras-under-pressure-over-covert-syriza-141355526--business.html"),
            actionButton("updateArticle", "Wordcloud a New Article"),
            hr(),
            sliderInput("freq",
                        "Choose min word count to include",
                        min = 1,  max = 50, value = 20),
            sliderInput("max",
                        "Choose the max number of words in the cloud",
                        min = 50,  max = 250,  value = 150)
        ),
        
        # Show Word Cloud
        mainPanel(
            plotOutput("plot")
        )
    )
)