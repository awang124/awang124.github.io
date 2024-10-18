library(shiny)
library(bslib)
library(markdown)

ui <- navbarPage(
  "ANDY WANG",
  tabPanel("ABOUT", includeHTML("www/main.html")),
  navbarMenu(
    "PROJECTS",
    tabPanel("Cardiac Arrhythmia Diagnosis", includeHTML("../../ecg/ecg.html")),
    tabPanel("Stock Price Prediction", includeHTML("../../stock/stock.html")),
    tabPanel("Spam Email Detection", includeHTML("../../spam/spam.html")),
    tabPanel("House Price Prediction", includeHTML("../../housing/housing.html")),
    tabPanel("Sales Data Analysis", includeHTML("../../northwind/northwind.html"))
  ),
  tabPanel("CV", tags$iframe(style="height:900px; width:100%", src="cv.pdf"))
)

server <- function(input, output, session) {}
app <- shinyApp(ui = ui, server = server)
