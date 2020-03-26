# ui <- navbarPage("Data Science II - Statistics",
#            tabPanel("Component 1"),
#            tabPanel("Component 2"),
#            navbarMenu("More",
#                       tabPanel("Sub-Component A"),
#                       tabPanel("Sub-Component B"))
# )



# # Define UI for application that draws a histogram
ui <- fluidPage(

  # Application title
  titlePanel("Data Science II - Statistics"),
  
  # Navigation Bar
  navbarPage("Vorlesung",
            tabPanel("Vorlesung 0"),
            navbarMenu("Vorlesung 1", 
                       tabPanel("Teil A"),
                       tabPanel("Teil B")),
            navbarMenu("Vorlesung 2",
                       tabPanel("Teil A"),
                       tabPanel("Teil B"))),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )


)