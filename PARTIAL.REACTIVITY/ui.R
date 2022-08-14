library(shiny)
shinyUI(fluidPage(
  titlePanel(" Demonstration of actionButton with isolate functionality "),
  sidebarLayout(
    sidebarPanel(
      textInput("text1", "Enter your First name"),
      textInput("text2", "Enter your last name"),
      actionButton("action","Update your last name")
  ),
  mainPanel(
    textOutput("txt1"),
    textOutput("txt2")
  )
))
)