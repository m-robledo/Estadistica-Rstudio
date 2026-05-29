library(readxl)
library(ggplot2)
library(dplyr)
base_usuario_encoprac <- read_excel("C:/Users/matut/OneDrive/Desktop/tute/Facultad/Estadistica/base_usuario_encoprac.xlsx")
View(base_usuario_encoprac)
df %>%
  filter(AL_03 > 0 & AL_03 < 100) %>% 
  ggplot(aes(x = AL_03)) +
  geom_histogram(binwidth = 1, fill = "steelblue", color = "white") +
  labs(title = "Gráfico 1. Distribución de la edad de inicio de consumo",
       subtitle = "Base ENCoPraC 2022",
       x = "Edad de Inicio (en años)",
       y = "Frecuencia (Cantidad de personas)",
       caption = "Fuente: Elaboración propia en base a datos del INDEC (ENCoPraC 2022)") +
  theme_minimal()

df %>%
  filter(AL06_TRAGOS_TOTAL > 0 & AL06_TRAGOS_TOTAL < 100) %>% 
  ggplot(aes(x = as.factor(SEXO_SEL), y = AL06_TRAGOS_TOTAL, fill = as.factor(SEXO_SEL))) +
  geom_boxplot(alpha = 0.7) +
  scale_fill_manual(values = c("1" = "#7570b3", "2" = "#1b9e77")) +
  scale_x_discrete(labels = c("1" = "Varón", "2" = "Mujer")) +
  labs(title = "Gráfico 2. Distribución de consumo de alcohol por sexo",
       subtitle = "Base ENCoPraC 2022",
       x = "Sexo",
       y = "En cantidad de tragos",
       caption = "Fuente: Elaboración propia en base a datos del INDEC (ENCoPraC 2022)") +
  theme_minimal() +
  theme(legend.position = "none")

ggplot(df, aes(x = EDAD_SEL)) +
  geom_histogram(binwidth = 5, fill = "gray40", color = "white") +
  labs(title = "Gráfico 3. Distribución de edades de los encuestados",
       subtitle = "Base ENCoPraC 2022",
       x = "Edad (en años)",
       y = "Frecuencia",
       caption = "Fuente: Elaboración propia en base a datos del INDEC (ENCoPraC 2022)") +
  theme_minimal()

ggplot(df, aes(x = CANT_MIEMBROS_HOGAR)) +
  geom_bar(fill = "#d95f02", alpha = 0.8) +
  labs(title = "Gráfico 4. Cantidad de miembros por hogar encuestado",
       subtitle = "Base ENCoPraC 2022",
       x = "Número de personas",
       y = "Frecuencia",
       caption = "Fuente: Elaboración propia en base a datos del INDEC (ENCoPraC 2022)") +
  theme_minimal()

df %>%
  filter(AL06_TRAGOS_TOTAL > 0 & AL06_TRAGOS_TOTAL < 100) %>%
  ggplot(aes(x = EDAD_SEL, y = AL06_TRAGOS_TOTAL)) +
  geom_point(alpha = 0.3, color = "darkblue") +
  geom_smooth(method = "lm", color = "red", se = TRUE) + # Línea de Regresión
  labs(title = "Gráfico 5. Correlación entre Edad del Encuestado y Consumo Total",
       subtitle = "Análisis de Regresión Lineal - Base ENCoPraC 2022",
       x = "Edad (EDAD_SEL)",
       y = "Cantidad de Tragos",
       caption = "Fuente: Elaboración propia en base a datos del INDEC (ENCoPraC 2022)") +
  theme_minimal()
