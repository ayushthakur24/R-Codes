library(shiny)
shinyUI(fluidPage(
  titlePanel("Demonstration of file upload"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file","Upload a file"),
      helpText("default max , file size is 5mb"),
      tags$hr(),
      h5(helpText("Select the read.table parameters below")),
      checkboxInput(inputId = 'header',label = 'Header',value = TRUE),
      checkboxInput(inputId = "stringAsFactors", "stringAsFactors", FALSE),
      br(),
      radioButtons(inputId = 'sep' , label = 'Seperator',choices = c(Comma=',',Semicolon=';',Tab='\t',Space=''),select = ',')
      
    ),
    
    mainPanel(
      uiOutput("tb")
    )
  )
))