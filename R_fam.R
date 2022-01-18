heights=read.table("http://www.randomservices.org/random/data/Galton.txt",header=T)
attach(heights)
pairs(heights)
summary(lm(heights ~Father + Mother + Gender))

heights.lm = lm(Height~Father+Mother+Gender)
predict(heights.lm,data.frame(Father = 68,Mother = 64, Gender="M",interval =' predict '))
predict(heights.lm,data.frame(Father = 68,Mother = 64, Gender="F",interval =' predict '))