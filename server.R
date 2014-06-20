library(shiny)
library(datasets)
mpgpredict <- function(cyl,hp,gear)  26- 1.2*cyl - 0.04*hp + 2*gear

shinyServer(
  function(input, output) {
    output$ocyl <- renderPrint({input$cyl})
    output$ohp <- renderPrint({input$hp})
    output$ogear <- renderPrint({input$gear})
    output$prediction <- renderPrint({mpgpredict(input$cyl,input$hp,input$gear)})
  }
)
