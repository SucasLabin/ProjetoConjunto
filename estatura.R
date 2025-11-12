library(readxl)
library(ggplot2)
base = read_xlsx("Base Casos.xlsx")

boxplot_estatura = base |>
  ggplot(mapping = aes(y  = Estatura)) +
  geom_boxplot(fill = "lightgreen") +
  labs( y = "Estatura (metros) ")+
  theme_classic()

library(usethis)
use_git_config(user.name = "anna02vieira",
               user.email ="annav@id.uff.br")
usethis::create_github_token()
gitcreds::gitcreds_set()
