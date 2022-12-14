library(shiny)

shinyServer(
  function(input, output){
    output$myhist <- renderPlot({
      colm <- as.numeric(input$var) 
      hist(iris[,colm], breaks = seq(0,max(iris[,colm],l=input$bins+1),col=input$color, main="Histogram of iris dataset", xlab=names(iris[colm]))
    })
  }
    ) 