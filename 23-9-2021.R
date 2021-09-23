ipod <- sample(c(rep(1, 250),
                 rep(2,300),
                 rep(3, 600),
                 rep(4, 800),
                 rep(5, 550),
                 rep(6, 350),
                 rep(7, 100),
                 rep(8, 25),
                 rep(9, 20),
                 rep(10, 5)))

s1<- c(rep(sample(ipod, 25), 50))
s1
hist(s1, main="Frequency distribution by time group", xlab="time", ylab="frequency") 
count1 <- 0
for (i in 1:length(s1)){
  if (s1[i] >= 6){count1 <- count1 + 1}
}
count1
xs1 <- count1/length(s1)
paste(round(100*xs1, 2), "%", sep="")


s2<- c(rep(sample(ipod, 25), 500))
s2
hist(s2, main="Frequency distribution by time group", xlab="time", ylab="frequency") 
count2 <- 0
for (i in 1:length(s2)){
  if (s2[i] >= 6){count2 <- count2 + 1}
}
count2
xs2 <- count2/length(s2)
paste(round(100*xs2, 2), "%", sep="")


s3<- c(rep(sample(ipod, 30), 30))
s3
hist(s3, main="Frequency distribution by time group", xlab="time", ylab="frequency") 
count3 <- 0
for (i in 1:length(s3)){
  if (s3[i] >= 6){count3 <- count3 + 1}
}
count2
xs3 <- count3/length(s3)
paste(round(100*xs3, 2), "%", sep="")