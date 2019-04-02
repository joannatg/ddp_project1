install.packages("leaflet")
install.packages("htmltools")
library(htmltools)
library(leaflet)

my_title <- tags$p(tags$style("p {color: red; font-size:22px}"),
                   tags$b("Map created 2019-04-02"))


content <- paste(sep = "<br/>",
                 "<b><a href='https://azstateparks.com/red-rock/explore/maps'>Red Rock State Park, AZ</a></b>"
)

locationOnMap  <- leaflet() %>% addTiles() %>% 
  addPopups( -111.8306,  34.8129,  content,
             options = popupOptions(closeButton = FALSE)
             %>%  addControl(my_title, position = "bottomright")
              )
locationOnMap 