library(shiny)
shinyUI(fluidPage(
  titlePanel(title = h4("Iris Dataset", align="center")),
  sidebarLayout(
    sidebarPanel(
      selectInput("var","1.Select the variable from iris dataset",choices = c("Sepal.Length"=1,"Sepal.Width"=2,"Petal.length"=3,"Petal.Width"=4)),
      br(),
      sliderInput("bins","2.Select the number of Bins for Histogram",min=5,max = 25,value = 15),
      br(),
      radioButtons("color","3.Select the colour of histogram",choices = c("Green","Red","Blue"),selected = "Blue")
    ),
    #main panel
    mainPanel(
      tabsetPanel(type = "tab",
                  tabPanel("Summary",verbatimTextOutput("sum")),
                  tabPanel("Structure",verbatimTextOutput("str")),
                  tabPanel("Data",tableOutput("data")),
                  tabPanel("Plot", plotOutput("myhist"))
    )
  )
)
)
)
 