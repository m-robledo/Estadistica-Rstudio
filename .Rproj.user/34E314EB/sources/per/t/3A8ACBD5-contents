library(readxl)
library(ggplot2)
library(dplyr)
base_usuario_encoprac <- read_excel("C:/Users/matut/OneDrive/Desktop/tute/Facultad/Estadistica/base_usuario_encoprac.xlsx")
View(base_usuario_encoprac)
df %>%
  filter(AL_03 > 0 & AL_03 < 100) %>% 
  ggplot(aes(x = AL_03)) +
  geom_histogram(binwidth = 1, fill = "#69b3a2", color = "white") +
  labs(title = "Distribución de la Edad de Inicio de Consumo",
       subtitle = "(Excluyendo valores perdidos o errores de carga)",
       x = "Edad de Inicio",
       y = "Cantidad de Personas") +
  theme_minimal()