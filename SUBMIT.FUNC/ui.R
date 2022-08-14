library(shiny)
shinyUI(fluidPage(
  titlePanel("Demonstration of submit button"),
  sidebarLayout(
    sidebarPanel(
      textInput("text1","Enter your first name"),
      textInput("text2","Enter your last name"),
      submitButton("Update Data!"),
      p("Click on the submit button to update the provided information")
    ),
    
    mainPanel(
      textOutput("txt1"),
      textOutput("txt2")
    )
  )
))