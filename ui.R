library(shiny)
library(datasets)
# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Find Out What Is Your Car's Miles/Gallon"),
  
    sidebarPanel(
      numericInput('cyl', 'Number of cylinders of your car', 6, min = 4, max = 8, step = 2),
      numericInput('hp', 'Gross horsepower of your car', 150, min = 50, max = 350, step = 5),
      numericInput('gear', 'Number of forward gears of your car', 4, min = 3, max = 5, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
        h2('Results of prediction of Miles/gallon of your car'),
        h4('Number of cylinders you entered '),
        verbatimTextOutput("ocyl"),
        h4('Gross horsepower you entered '),
        verbatimTextOutput("ohp"),
        h4('Number of forward gears you entered '),
        verbatimTextOutput("ogear"),
        h3('Which resulted in a prediction of Miles/gallon of your car'),
        verbatimTextOutput("prediction")
    )
  )
)

