#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$biorhythm_plot <- renderPlot({
    
    vals <- sin(((14000:14030)*2*pi)/23)
    plot(x = 14000:14030, y = vals)
    abline(v = 14015)
  })
  
})
