library(shiny)
shinyServer(function(input,output){
  datasetInput <- reactive({
    switch(input$dataset,
           "iris"=iris,
           "mtcars"=mtcars,
           "trees"=trees)
    
  })
  
  fileext <- reactive({
    switch(input$type,
           "Excel (CSV)" = "csv", "Text (TSV)"= "txt","Text(Space Seperated)"="text","Doc"="doc")
    
  })
  
  
  
  
  
  output$table <- renderTable({
    datasetInput()
    
  })

  output$DownloadData <- downloadHandler(
    filename = function(){
      paste(input$dataset,fileext(),sep=".")
    },
    content = function(file)
    { sep <- switch(input$type,"Excel(CSV)"=",","Text(TSV)"="\t","Text(Space Seperated)"=" ","Doc"=" ")
      write.table(datasetInput(),file,sep=sep,row.names=FALSE)
      
    }
  )
})    
  