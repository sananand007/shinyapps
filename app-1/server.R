library(shiny)

server<- function(input, output) {
  data<- eventReactive( 
    input$go,
    {
      rnorm(input$num)
    }
  )
  output$hist<-renderPlot(
    {
      hist(data())
    }
  )
  output$stats<-renderPrint(
    {
      summary(data())
    }
  )
}