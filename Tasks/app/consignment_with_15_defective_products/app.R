#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
source('../../../includes/local_m_laplace.R')
library(shiny)
library(markdown)

# Define UI for application that draws a histogram
ui <- fluidPage(
   withMathJax(),
   # Application title
   titlePanel("Consignment with 15 defective products"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
         sliderInput("k",
                     "Number of defective products:",
                     min = 1,
                     max = 200,
                     value = 15)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
        plotOutput("distPlot")
      )

   ),
    fluidRow(
        column(12,
          includeMarkdown("../../consignment_with_15_defective_products.md")
        )
      )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$distPlot <- renderPlot({
     n <- 200
     p <- seq(0, 1, by=0.01)
      
     plot(p, local_m_laplace(input$k, n, p), type = 'l')
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

