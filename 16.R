df <- data.frame( Name = c("Bhuwanesh", "Anil", "Jai", "Naveen"),
                  Physics = c(98, 87, 91, 94),
                  Chemistry = c(93, 84, 93, 87),
                  Mathematics = c(91, 86, 92, 83) )
print(df)
library(dplyr)
print(select(df, starts_with("Ph")))
print(select(df, contains("cs")))


print(df %>% filter(Mathematics > 90 & Mathematics < 94))
print(df %>% arrange(Physics))

print(df %>% rename(CHEMISTRY = Chemistry))

df1<-df %>% mutate(TotalMarks = Physics + Chemistry+ Mathematics)
print(df1)

