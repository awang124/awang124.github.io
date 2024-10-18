library(shiny)
library(bslib)
library(markdown)

ui <- navbarPage(
  "ANDY WANG",
  tabPanel("ABOUT", includeHTML("www/main.html")),
  navbarMenu(
    "PROJECTS",
    tabPanel("Cardiac Arrhythmia Diagnosis", includeHTML("html/ecg.html")),
    tabPanel("Stock Price Prediction", includeHTML("html/stock.html")),
    tabPanel("Spam Email Detection", includeHTML("html/spam.html")),
    tabPanel("House Price Prediction", includeHTML("html/housing.html")),
    tabPanel("Sales Data Analysis", includeHTML("html/northwind.html"))
  ),
  tabPanel("CV", tags$iframe(style="height:900px; width:100%", src="cv.pdf"))
)

server <- function(input, output, session) {}
app <- shinyApp(ui = ui, server = server)
