library(shiny)

ui<-fluidPage(
  sliderInput(inputId = "num", label = "Choose a number", value = 25, min = 1, max = 100),
  plotOutput("hist")
)

server<-function(input, output){
  # *Input() functions,
  # *Output() functions
  # Between the braces we can put entire lines of R scripts and functions as well
  output$hist <- renderPlot({
    title<-"100 random normal values"
    hist(rnorm(input$num), main = title)
    })
}

shinyApp(ui=ui, server = server)