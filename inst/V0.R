welcome <- mainPanel(h3("Willkommen"),
                     p("Herzlich Willkommen zum Kurs Data Science II"),
                     embed_video_w_download("welcome.mp4"))


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



content <- mainPanel(
  h3("Vorlesungsinhalte"),
  
  HTML(paste0('<p> <strong>Woche 1</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (1 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (1 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[1], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 2</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (2 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (2 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[2], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 3</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (3 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (3 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[3], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 4</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (4 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (4 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[4], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 5</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (5 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (5 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[5], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 6</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (6 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (6 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[6], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 7</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (7 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (7 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[7], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 8</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (8 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (8 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[8], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 9</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (9 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (9 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[9], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 10</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (10 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (10 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[10], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 11</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (11 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (11 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[11], '</p>')),
  
  HTML(paste0('<p> <strong>Woche 12</strong> (', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (12 - 1) * 7, format = "%d. %B %Y"), ' - ', 
              format(as.Date(semester_beginn, "%d.%m.%y") + (12 - 0) * 6, format = "%d. %B %Y"), '): ',
              topics[12], '</p>'))
  
  # lapply(1:12, function(i) {
  #   htmlOutput(paste0('week', i)) # uiOutput
  # })
  
)

chat <- mainPanel(h3("Chat-Runden"),
                  HTML(
                    "<p>Wöchentlich finden gemeinsame Videochats statt, in denen Sie Fragen zur Vorlesung stellen können. 
                        Hierzu steht ein Chat-Room bei Big Blue Button zur Verfügung:</p>
                     <p><a href = 'www.google.de'>Hier</a></p>
                     <p>Der Video-Chat findet wöchentlich am Dienstag von 12:00 bis 14:00 Uhr (c.t) statt.</p>
                     <p>Die Teilnahme am Chat ist freiwillig und soll zur Beantwortung Ihrer Fragen zu 
                        der Vorlesung und den Übungsaufgaben dienen.
                        Durch einfaches Klicken auf den Link können Sie dem Chat-Room beitreten. Eine vorherige Registrierung
                        ist nicht notwendig.</p>"),
                  )

tutorials <- mainPanel(h3("Übungen"),
                       HTML("<p>Die Übungsaufgaben sind in den einzelnen Kapiteln der Vorlesung integriert. Sie finden meist zum
                            Ende eines Kapitels einen Block mit Übungs-/Wiederholungsaufgaben. Diese sollten Sie zuhause
                            eigenständig lösen. Im Rahmen der wöchentlichen Video-Chatrunden werden wir dann gemeinsam
                            Ihre Fragen besprechen und können auch verschiedene Aufgaben noch einmal durchrechnen.</p>"))


contact <- mainPanel(h3("Sprechstunden"),
                     p("(Online-)Sprechstunden finden nach Vereinbarung statt"), 
                     HTML("<p>Senden Sie mir hierzu bitte eine Mail <a href='mailto:philipp.otto@uni-goettingen.de?subject=Sprechstunde Data Science II'>philipp.otto@uni-goettingen.de</a>.</p>"))
exam <- mainPanel(h3("Prüfung"),
                  tags$video(id="videoID", type = "video/mp4", src = "exam.mp4", width = "800px", height = "400px", controls = "controls"))


references <- mainPanel(h3("Literatur"),
                        HTML("<ul>
                                <li>Pruscha, H.: Statistisches Methodenbuch. Springer, Berlin, 2006</li>
                                <li>Fahrmeir, L., Kneib, T. und Lang, S.: Regression. Springer, Berlin, 2009</li>
                                <li>Schlittgen, R.: Multivariate Statistik. Oldenbourg, München, 2009</li>
                                <li>Schlittgen, R.: Regressionsanalyse mit R. Oldenburg, München, 2013.</li>
                                <li>Crawley, M.J.: The R Book. Wiley, 2012.</li>
                             </ul>"))

V0 <- fluidPage(
  
  
  titlePanel("Organisatorisches"), 
  
  navlistPanel(
    tabPanel("Willkommen", welcome),
    "---",
    tabPanel("Vorlesungen", content),
    tabPanel("Gemeinsame Chatrunden", chat),
    tabPanel("Übungen", tutorials),
    tabPanel("Online-Sprechstunden", contact),
    "---",
    tabPanel("Prüfung", exam),
    tabPanel("Literatur", references)
  )
  
)
