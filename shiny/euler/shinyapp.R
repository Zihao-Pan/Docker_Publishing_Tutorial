library(shiny)

ui <- fluidPage(
  fluidPage(
    hr(),
    hr(),
    h2("hello world!"),
    hr(),
    hr()
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)






