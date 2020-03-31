
server <- function(input, output) {
  
  
  # Kapitel 0
  
  semester_beginn <- "20.04.2020"
  format(as.Date(semester_beginn, "%d.%m.%y") + 12*7, format = "%d. %b %y")
  topics <- c("Kapitel 1 (Zufallsvariablen, Kenngrößen univariater Daten)",                     # Woche 1
              "Kapitel 1 (Kenngrößen univariater Daten, Kenngrößen bivariater Daten)",          # Woche 2
              "Kapitel 2 (Hauptkomponentenanalyse)",                                            # Woche 3   
              "Kapitel 2 (Diskriminanzanalyse, Clusteranalyse)",                                # Woche 4    
              "Kapitel 3 (Parameterschätzung, Maximum-Likelihood-Schätzung)",                   # Woche 5         
              "Kapitel 3 (Maximum-Likelihood-Schätzung, Konfidenzintervalle)",                  # Woche 6 
              "Kapitel 3 (Konfidenzintervalle, Statistische Tests)",                            # Woche 7
              "Kapitel 4 (Priori-, Posterioriverteilung, Kredibilitätsintervalle)",             # Woche 8
              "Kapitel 4 (Kredibilitätsintervalle, Bayes-Faktor)",                              # Woche 9
              "Kapitel 5 (Lineare Modelle, Generalisierte lineare Modelle)",                    # Woche 10                          
              "Kapitel 5 (Generalisierte lineare Modelle), Kapitel 6 (Zeitreihenmodelle)",      # Woche 11
              "Kapitel 6 (Autoregressive Modelle)")                                             # Woche 12
              
  
  lapply(1:12, function(i) {
    output[[paste0('week', i)]] <- renderUI({
      paste0('<p> Woche ', i, ' (', format(as.Date(semester_beginn, "%d.%m.%y") + (i-1)*7, format = "%d. %B %Y"), ' - ', format(as.Date(semester_beginn, "%d.%m.%y") + i*6, format = "%d. %B %Y"), '): ',
             topics[i], '</p>')
    })
  })
  
  
  # Kapitel 1
  
  output$kernelPlot <- renderPlot({
    
    set.seed(10)
    Y <- rnorm(input$n, mean = 10, sd = 2)
    hist(Y, prob = TRUE, col = "gray", lwd = 2.5)
    curve(dnorm(x , mean = 10, sd = 2), from = 2, to = 20, type = "l", col = rgb(0.5, 0.0, 0.5), lwd = 2, add = TRUE)
    lines(density(Y, bw = input$bw, kernel = input$kernel), lwd = 2)
    
  })
  
  output$kernelPlot2 <- renderPlot({
    
    set.seed(10)
    Y <- rnorm(input$n2, mean = 10, sd = 2)
    hist(Y, prob = TRUE, col = "gray", lwd = 2.5)
    curve(dnorm(x , mean = 10, sd = 2), from = 2, to = 20, type = "l", col = rgb(0.5, 0.0, 0.5), lwd = 2, add = TRUE)
    lines(density(Y, bw = input$c * input$n2^(-1/5), kernel = input$kernel2), lwd = 2)
    
  })
  
  
  # Trash
  
  output$distPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  

  

    
    
    
}


server
