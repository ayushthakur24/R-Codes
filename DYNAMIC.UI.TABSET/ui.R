library(shiny)
shinyUI(fluidPage(
  titlePanel("Demonstration of renderUI - Dynamic tabset"),
  sidebarLayout(
    sidebarPanel(
      numericInput("n","Enter the number of tabs needed",1)
    ),
 mainPanel(
   uiOutput('tabs')
 )   
  )
))