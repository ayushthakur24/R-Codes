library(shiny)
shinyUI(fluidPage(
  sidebarLayout(
    sidebarPanel(
      h5("Use case - embedd a pdf user guide")
    ),
  
  
  mainPanel(
    tabsetPanel(
      tabPanel("Reference",tags$iframe(style="height:400px; width:100%; scrolling:yes",src="file:///C:/Users/Ayush/Downloads/8th%20sem%20syllabus.pdf")),
      tabPanel("Summary"),
      tabPanel("Plot")
    )
  )
))
)