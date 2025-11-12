library(readxl)
library(ggplot2)
base = read_xlsx("Base Casos.xlsx")

boxplot_estatura = base |>
  ggplot(mapping = aes(y  = Estatura)) +
  geom_boxplot(fill = "lightgreen") +
  labs( y = "Estatura (metros) ")+
  theme_classic()
