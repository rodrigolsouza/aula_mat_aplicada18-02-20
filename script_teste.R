install.packages("dplyr")

library(dplyr)

glimpse(iris)

glimpse()

select(iris,Petal.Length, Petal.Width)
filter(iris,Petal.Length > 2)

mutate(iris,Petal.Length=Petal.Length+2)


iris %>%
  filter(Petal.Length > 2) %>%
  mutate(Petal=Petal.Length+2) %>% 
  select(Species,Petal) %>% 
  glimpse()

iris %>%
  transmute(Petal.Length + 2, Species)

t<- iris %>%
  transmute(Petal.Length + 2, Species)
t

iris %>%
  group_by(Species) %>%
  summarise(media=mean(Petal.Length))
