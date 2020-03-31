#################
### Functions ###
#################


PDF_1 <- tags$iframe(style = "height:600px; width:100%; scrolling = yes", src = "DataScience2_Kapitel1.pdf")

titles_1 <- c("Grundbegriffe", 
              "Zufallsvariablen", 
              "Kenngrößen univariater Daten", 
              "Kenngrößen bivariater Daten")


kernel_est <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput("bw",
                  "Bandbreite:",
                  min = 0.1,
                  max = 3,
                  value = 0.8),
      sliderInput("n",
                  "Anzahl der Beobachtungen:",
                  min = 100,
                  max = 5000,
                  value = 500,
                  step = 50),
      radioButtons("kernel", "Kernfunktion:",
                   c("Epanechnikov" = "epanechnikov",
                     "Normalverteilung" = "gaussian",
                     "Rechteck (emp. Dichte)" = "rectangular",
                     "Dreieck" = "triangular")),
    ),
    
    mainPanel(plotOutput("kernelPlot"))
  )
)

kernel_est2 <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput("c",
                  "Bandbreite c (proportional zu n^(-1/5)):",
                  min = 0.5,
                  max = 3,
                  value = 1),
      sliderInput("n2",
                  "Anzahl der Beobachtungen:",
                  min = 100,
                  max = 5000,
                  value = 500,
                  step = 50),
      radioButtons("kernel2", "Kernfunktion:",
                   c("Epanechnikov" = "epanechnikov",
                     "Normalverteilung" = "gaussian",
                     "Rechteck (emp. Dichte)" = "rectangular",
                     "Dreieck" = "triangular")),
    ),
    
    mainPanel(plotOutput("kernelPlot2"))
  )
)

#######################
### User Interfaces ###
#######################


V1_1 <- fluidPage(
  
  PDF_1, 
  
  titlePanel(titles_1[1]), 
  
  navlistPanel(
        "Videos",
        tabPanel("Folien 1-7",    tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
        tabPanel("Folien 8-10",   tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
        tabPanel("Folien 11-19",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
        tabPanel("Folien 20-28",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
        tabPanel("Folien 29-30",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
        tabPanel("Folien 31-35",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
        "Weitere Materialien",
        "Übungsaufgaben",
        tabPanel("Aufgabe 1", "Aufgabe 1")
  )
  
)

V1_2 <- fluidPage(
  
  PDF_1, 
  
  titlePanel(titles_1[2]), 
  
  navlistPanel(
    "Videos",
    tabPanel("Folien 1-7",    tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 8-10",   tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 11-19",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 20-28",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 29-30",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 31-35",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    "Weitere Materialien",
    "Übungsaufgaben",
    tabPanel("Aufgabe 2", "Aufgabe 2")
  )
  
)


V1_3 <- fluidPage(
  
  PDF_1, 
  
  titlePanel(titles_1[3]), 
  
  navlistPanel(
    "Videos",
    tabPanel("Folien 1-7",    tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 8-10",   tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 11-19",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 20-28",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 29-30",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 31-35",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    "Weitere Materialien",
    tabPanel("Kerndichteschätzer (Wahl von h)", kernel_est),
    tabPanel("Kerndichteschätzer (Wahl von c)", kernel_est2),
    "Übungsaufgaben",
    tabPanel("Aufgabe 2", "Aufgabe 2")
  )
  
)


V1_4 <- fluidPage(
  
  PDF_1, 
  
  titlePanel(titles_1[4]), 
  
  navlistPanel(
    "Videos",
    tabPanel("Folien 1-7",    tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 8-10",   tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 11-19",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 20-28",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 29-30",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    tabPanel("Folien 31-35",  tags$video(src = "welcome.mp4", id="videoID", type = "video/mp4", width = "800px", height = "400px", controls = "controls")),
    "Weitere Materialien",
    "Übungsaufgaben",
    tabPanel("Aufgabe 2", "Aufgabe 2")
  )
  
)