## Intro shinydashboard package
## dashboardSidebar - add menu items

# install.packages("shinydashboard")

# Load the required package

library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Demo shinydashboard package - create menu items", titleWidth = 600),
    
    
    dashboardSidebar(
      # add menu items to the sidebar
      # menu items are like tabs when clicked open up a page in tab item
      sidebarMenu(
        menuItem(text = "About", tabName = "about", icon=icon("clipboard")),
        menuItem("Data", tabName = "data", icon=icon("database"), badgeLabel = "new", badgeColor = "green"),
        menuItem("Link to code files",  href = "https://www.google.com", icon=icon("code"))
        # https://fontawesome.com/icons?d=gallery
      )
    ),
    
    
    
    dashboardBody()
  )
)









