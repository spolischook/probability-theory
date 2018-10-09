library(shiny)
source("~/www/probability-theory/includes/bernoulli.R", chdir=TRUE)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Hit to bull's eye"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
         sliderInput("hits",
                     "Number of Hits:",
                     min = 1,
                     max = 8,
                     value = 6),
         sliderInput("shots",
                     "Number of Shots:",
                     min = 1,
                     max = 8,
                     value = 8)
      ),
        
      
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("distPlot")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$distPlot <- renderPlot({
     p = seq(0,1,by=0.01)
     pLab = seq(0,1,0.1)
     plot(fBernoulli(p = p, m = input$hits, n = input$shots), type='l', xaxt="n", xlab = 'Hit probability', ylab = paste('Probability of "', input$hits, '" hits from "', input$shots, '" shots', sep = ""))
     axis(1,at=pLab*length(p),labels=pLab)
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

