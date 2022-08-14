library(shiny)
shinyUI(fluidPage(
  titlePanel(h4('Deomstration of file Download using DownloadButton() and DownloadHandler()',align="center")),
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset","Select the dataset", choices=c("iris","mtcars","trees")),
      br(),
      helpText("Select the download format"),
      radioButtons("type","format type:",choices = c("Excel(CSV)","Text(TSV)","Text(Space Seperated)","Doc")),
      br(),
      helpText("Click on the download button to download the dataset observations"),
      downloadButton('DownloadData','Download')
    ),
    mainPanel(
      tableOutput('table')
      
    )
  )
  
))

