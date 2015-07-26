# server file
source('helper.R')

other_words <- c('said','who','the','will','neededundo','needed','undo','make',
                 'well')

function(input, output) {
    # Define a reactive expression 
   articleURL <- reactive({
       # when new article is chosen
       input$updateArticle
       isolate({
           withProgress({
               setProgress(message="The minions are working...")
               input$customURL
               #input$selectionArticle
           })
       })
       
   })
    
   # plot it
    output$plot <- renderPlot({
        word_cloud_it(getURLtext(articleURL()),minfreq=input$freq,maxwords=input$max,
                      rmwords =other_words, random.order=FALSE)
        
    })
}