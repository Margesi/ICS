library(tidyverse)
#Feel free to suggest other stuff to summarize
p20<-as.data.frame(ics2020) %>%
  group_by(Region) %>% summarise(mean_fertility=mean(Total.Fertility.Rate),mean_LifeExpectancy=mean(Life.Expectancy.at.Birth..Both.Sexes),median_Fertility=median(Total.Fertility.Rate),median_LifeExpectancy=median(Life.Expectancy.at.Birth..Both.Sexes) ,sd_fertility=sd(Total.Fertility.Rate),sd_LifeExpectancy=sd(Life.Expectancy.at.Birth..Both.Sexes))
p21<-as.data.frame(ics2020) %>%
  group_by(Subregion) %>% summarise(mean_fertility=mean(Total.Fertility.Rate),mean_LifeExpectancy=mean(Life.Expectancy.at.Birth..Both.Sexes),median_Fertility=median(Total.Fertility.Rate),median_LifeExpectancy=median(Life.Expectancy.at.Birth..Both.Sexes) ,sd_fertility=sd(Total.Fertility.Rate),sd_LifeExpectancy=sd(Life.Expectancy.at.Birth..Both.Sexes))

##Text Output
t1<-formattable(p20,type="text") 
formattable(p21,type="text")

#Latex Output
formattable(p20) 
formattable(p21)
