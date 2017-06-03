library(shiny)

# Define UI for application that draws a histogram
ui<-fluidPage(
  sliderInput(inputId = "num",
              label = "Choose a number",
              value = 25, min = 1, max = 100),
  actionButton(inputId="go", label="Update"),    
  plotOutput("hist"),
  verbatimTextOutput("stats")
)

