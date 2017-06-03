library(shiny)

ui<-fluidPage(
    actionButton(inputId = "norm", label = "Normal"),
    actionButton(inputId = "unif", label = "Uniform"),
  
  #Normal
  plotOutput("hist")
)

server <- function(input, output) {
  
  v<-reactiveValues(data=rnorm(100))
  
  dnorm <- eventReactive(input$norm, {rnorm(100)})
  dunif <- eventReactive(input$unif, {runif(100)})
  
  output$hist <- renderPlot({  
    hist(dfnorm())
  })
  
  output$hist <- renderPlot({  
    hist(dunif())
  })
}

shinyApp(ui, server)