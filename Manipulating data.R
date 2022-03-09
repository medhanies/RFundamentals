library(tidyverse)
star <- starwars
star

View(star)

filter(star, species == "Droid")
filter(star, species == "Droid", homeworld == "Tatooine")
filter(star, eye_color == "red" | eye_color == "yellow" | eye_color == "orange",
       species == "Human")

select(star, name, birth_year, homeworld, species, starships)
select(star, name, homeworld:starships)
select(star, ends_with("color"))
select(star, name, vehicles, starships, everything())

star <- mutate(star, bmi = mass/((height/200)^2))
select(star, name:bmi)

star.trans <- transmute(star, bmi2 = mass/((height/100)^2))
star.trans

arrange(star, mass)
arrange(star, desc(mass))

summarize(star, avg.height = mean(height, na.rm = T))

star.species <- group_by(star, species)
summarize(star.species, avg.height = mean(height, na.rm = T))

sample_n(star, 10)
sample_frac(star, 0.1)

star.species <- group_by(star, species)
star.smr <- summarise(star.species, count = n(), avg.mass = mean(mass, na.rm = T))
filter(star.smr, count>1)

filter(summarise(group_by(star, species), count = n(), avg.mass = mean(mass, na.rm = T)), count > 1)

star %>%
  group_by(species) %>%
  summarise(count = n(), mass = mean(mass, na.rm = T)) %>%
  filter(count > 1)

billboard <- read.csv("billboard.csv")
billboard <- as_tibble(billboard)
billboard

billboard %>% gather(x1st.week:x76th.week,key = "week", value = "rank", na.rm = T) %>%
  arrange(artist.inverted)

tb <- read.csv("tb.csv")
tb <- as_tibble(tb)
tb

tb.gathered <- tb %>% gather(m.014:f.65, key = "column", value = "cases", na.rm = T) %>%
  arrange(country)
tb.gathered

tb.separated <- tb.gathered %>% separate(column, into = c("sex", "age"), sep = ",")
tb.separated

tb.separated <- tb.separated %>% separate(age, into = c("age.low", "age.high"))
tb.separated

tb.united <- tb.separated %>% unite("age.low", "age.high")
tb.united

weather <- read.csv("weather.csv")
weather <- as_tibble(weather)
weather

weather.spread <- spread(weather, key = element, value = value)
weather.spread
