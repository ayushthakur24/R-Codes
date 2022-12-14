library(shiny) 
shinyUI(fluidPage(titlePanel("Iris Dataset"),   
sidebarLayout(sidebarPanel(radioButtons("x", "Select X-axis:",list("Sepal.Length"='a', "Sepal.Width"='b', "Petal.Length"='c', "Petal.Width"='d')),
                          radioButtons("y", "Select Y-axis:",list("Sepal.Length"='e', "Sepal.Width"='f', "Petal.Length"='g', "Petal.Width"='h'))),     
                          mainPanel(plotOutput("distPlot")))))