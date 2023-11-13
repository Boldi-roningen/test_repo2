#My first github synched script
#Always pull first
#Notes to self: stage, commit, push, change. 
#renv::init at the start of package, renv::snapshot when major update
#restore the version of the packages used to develop this project :
library(renv)
renv::restore()
#project libraries
library(tidyverse)

#data
x <- c(1,2,3,4,5,6,7,8,9,10)
y <- c(1,2.3,4,6.7,5,6,9,8.7,9.9,11.1)
data <- data.frame(x, y)
fig01 <- data |> ggplot(aes(x,y))+
  geom_point(col = "red")+
  geom_smooth(method = 'lm', linewidth = 1)+
  theme_classic()
fig01
ggsave("./figures/fig01.png", plot = fig01, width = 1920, height = 1068, units = "px")
