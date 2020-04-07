
# http://mybinder.org/v2/gh/philot789/data_science_2/master?urlpath=shiny/inst/

source("Functions.R", encoding = "utf8")

source("V0.R", encoding = "utf8")

source("V1.R", encoding = "utf8")


# <iframe width="560" height="315" src="https://www.youtube.com/embed/M5azNpTwVk8" frameborder="0" 

# allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# # Define UI for application that draws a histogram
ui <- fluidPage(
  
  includeCSS("www/potto.css"),

  # Application title
  titlePanel("Data Science II - Statistics"),
  
  # Navigation Bar
  navbarPage("Data Science II",
            tabPanel("Organisatorisches", V0),
            navbarMenu("Kapitel 1", 
                       tabPanel("Grundbegriffe", V1_1),
                       tabPanel("Zufallsvariablen", V1_2),
                       tabPanel("Kenngrößen univariater Daten", V1_3),
                       tabPanel("Kenngrößen bivariater Daten", V1_4)),
            navbarMenu("Kapitel 2",
                       tabPanel("Hauptkomponentenanalyse"),
                       tabPanel("Diskriminanzanalyse"),
                       tabPanel("Clusteranalyse")),
            navbarMenu("Kapitel 3",
                       tabPanel("Parameterschätzung"),
                       tabPanel("Maxmimum-Likelihood-Schätzung"),
                       tabPanel("Konfidenzintervalle"),
                       tabPanel("Statistische Tests")),
            navbarMenu("Kapitel 4",
                       tabPanel("Priori-, Posterioriverteilung"),
                       tabPanel("Kredibilitätsintervalle"),
                       tabPanel("Bayes-Faktor")),
            navbarMenu("Kapitel 5",
                       tabPanel("Lineare Modelle"),
                       tabPanel("Generalisierte lineare Modelle")),
            navbarMenu("Kapitel 6",
                       tabPanel("Zeitreihen"),
                       tabPanel("Komponentenmodell"),
                       tabPanel("Autoregressive Prozesse")))


)

