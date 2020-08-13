exam<-read.csv("Data/csv_exam.csv")
exam[,]

exam[1,]    # 1행만, 모든열을 추출
exam[1, 3]
exam[exam$class==1,]
exam[exam$math>=80,]
exam[exam$math>=80 & exam$english>=90, ]
exam[exam$science<60 & exam$english>=50, ]


exam[, 1]
exam[,"class"]
exam[,c("math", "english")]

exam[1,3]
exam[5, "english"]
