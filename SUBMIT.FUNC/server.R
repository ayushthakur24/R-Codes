library(shiny)
shinyServer(function(input,output){
  output$txt1 <- renderText({
    paste("My First name is ",input$text1)
  })
  
  output$txt2 <- renderText({
    paste("My Last name is ", input$text2)
  })
})