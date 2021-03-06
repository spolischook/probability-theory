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
library(DT)

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
        column(6,
          includeMarkdown("../../consignment_with_15_defective_products.md")
        ),
        column(6,
          DT::dataTableOutput("datatable")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    n <- 200
    p <- seq(0, 1, by=0.01)
    values <- reactive({ local_m_laplace(input$k, n, p) })

    output$distPlot <- renderPlot({
        plot(
            p,
            values(),
            type = 'l',
            xlab='Probability of defective products in consignment',
            ylab=sprintf("Probability of %i defective product(s) in consignment of %i", input$k, n)
        )
    })

    output$datatable <- DT::renderDataTable({
        DT::datatable(data.frame(probability = p, value = round(values(), 4)))
    })
}

# Run the application 
shinyApp(ui = ui, server = server)

