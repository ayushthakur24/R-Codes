library(shiny)
shinyUI(fluidPage(
  titlePanel("Dynamic User Interface For User"),
  sidebarLayout(
  sidebarPanel(
  selectInput(inputId = "data1", label="Select the dataset of your choice ", choices = c("iris","mtcars","trees")),
  br(),
  helpText("The following selectInput dropdown choice dynamically"),
  br(),
  uiOutput("vx"),
  br(),
  uiOutput("vy")
      ),
  mainPanel(
    plotOutput("p")
  )
  )
))