a<-1
a

b<-2
b

c<-3
c

a+b

a+b+c

4/b

5*b

a[2]<-10

a

var1<-c(1,2,5,7,8)
var1
var1[1]

var2<-c(1:6)
var2

var3<-seq(1, 5)
var3

var4<-seq(1,10,by=2)
var4

var5<-seq(1,10,by=3)
var5

var1
var1+2    # 벡터연산(모든 원소에 대해 2씩 더해줌)

var3+var4


str1<-"a"
str1

str2<-"text"
str2

str3<-"Hello World!"
str3

str4<-c(str1, str2, str3)
str4

str5 <- c("Hello!", "World", "is", "good!")
str5

paste(str5, collapse = ",") # 쉼표를 구분자로 str4 의 단어들 하나로 합치기


x<-c(1,2,3)
x

mean(x)
max(x)
min(x)

install.packages("ggplot2")    # 시각화 함수 패키지
library(ggplot2)    # 시각화 함수 임포트

# 여러 문자로 구성된 변수 생성
xp <- c("a", "a", "b", "c")
xp
qplot(xp)    # 그래프 출력

mpg
head(mpg)    # 데이터가 많은 경우 6개만 출력력

# data 에 mpg, x 축에 hwy 변수 지정하여 그래프 생성 (mpg는 샘플 데이터)
qplot(data = mpg, x = hwy)

# data 에 mpg, x 축에 hwy 변수 지정하여 그래프 생성 (mpg는 샘플 데이터)
qplot(data = mpg, x = cty)

# x 축 drv, y 축 hwy
qplot(data = mpg, x = drv, y = hwy)

# qplot 사용법
?qplot



# 데이터 프레임 생성
english<-c(90, 80, 60, 70)
english
math<-c(50,60,100,20)
math

class<-c(1,1,2,2)

df_midterm<-data.frame(english, math, class)
df_midterm

mean(df_midterm$english)
mean(df_midterm$math)
mean(df_midterm$class)

# 데이터 프레임 한번에 만들기
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))

df_midterm


# data.frame()과 c()를 조합하여 데이터 프레임 만들기
df_fr<-data.frame( prd=c("사과", "딸기", "수박"), 
                   prc=c(1800, 1500, 3000), 
                   pa=c(24, 18, 13))
df_fr


# 외부데이터(엑셀 파일) 읽어오기 , CSV는 내장함수가 존재
install.packages("readxl")
library(readxl)

df_exam<-read_excel("Data/excel_exam.xlsx")
df_exam

mean(df_exam$id)
mean(df_exam$english)

# 엑셀에 여러개의 시트가 있을 때 시트를 선택하고 싶으면 >>Default는 첫번째 sheet
df_exam_sheet1 <- read_excel("Data/excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet2 <- read_excel("Data/excel_exam_novar.xlsx", sheet = 1, col_names=F)

df_exam_sheet1
df_exam_sheet2



# CSV 파일 읽기
df_csv_exam<-read.csv("Data/csv_exam.csv")
df_csv_exam

# CSV 파일 읽기
df_csv_exam<-read.csv("Data/csv_exam.csv", stringsAsFactors=F)


# csv 파일로 데이터 저장하기기
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))

df_midterm

write.csv(df_midterm, file = "df_midterm.csv")


####### 
# CSV 파일 읽기
exam <- read.csv("Data/csv_exam.csv")
head(exam)    # 앞에서부터 6행만 볼 수 있음
head(exam, 10)
tail(exam)    # 뒤에서부터 6행만 볼 수 있음
tail(exam, 10)
summary(exam)    # exam 관련 데이터의 정보를 요약


# dim()  몇 행 몇 열로 구성되어 있는지
dim(exam)


# ggplo2 의 mpg 데이터를 데이터 프레임 형태로 불러오기
mpg <- as.data.frame(ggplot2::mpg)
head(mpg)    # Raw 데이터 앞부분 확인
tail(mpg)    # Raw 데이터 뒷부분 확인
View(mpg)   # Raw 데이터 뷰어 창 확인
dim(mpg)   # 행, 열 출력
str(mpg)  # 데이터 속성 확인
summary(mpg)    # 요약통계량 출력


# 데이터 프레임 내 데이터 수정하기
install.packages("dplyr")
library(dplyr)

# 데이터 프레임 생성
df_raw <- data.frame(var1 = c(1, 2, 1),
                     var2 = c(2, 3, 2))

df_raw

df_new <- df_raw
df_new
df_new<-rename(df_new, v2=var2)     # var2 를 v2 로 수정


#혼자서 해보기
test<-as.data.frame(ggplot2::mpg)   #Q1


test_new<-test
test_new<-rename(test_new, city=cty, highway=hwy)    #Q2
test_new    #Q3


# 파생변수 생성
df <- data.frame(var1 = c(4, 3, 8),
                 var2 = c(2, 6, 1))
df

df$sum<-df$var1+df$var2

df

df$mean<-(df$var1+df$var2)/2
df


head(mpg)

temp<-as.data.frame(ggplot2::mpg)
temp$comb=(temp$cty+temp$hwy)/2
temp


# 파생문 내 조건문 설정: 20 이상이면 pass, 그렇지 않으면 fail 부여
temp$test <- ifelse(temp$comb >= 20, "pass", "fail")
tem
table(temp$test)    # 빈도 확인
qplot(temp$test)    # 그래프로 표현


# total 을 기준으로 A, B, C 등급 부여
temp$grade <- ifelse(temp$comb >= 30, "A",
                    ifelse(temp$comb >= 20, "B", "C"))

tail(temp, 20)

# A, B, C, D 등급 부여
temp$grade2 <- ifelse(temp$comb >= 30, "A",
                      ifelse(temp$comb >= 25, "B",
                            ifelse(temp$comb >= 20, "C", "D")))
                     
temp


test<-as.data.frame(ggplot2::midwest)
test
summary(test)    # Q1. 데이터의 특성을 파악
test<-rename(test, total=poptotal, asian=popasian)    # Q2. 변수명 변경경
test$total_perc=(test$asian/test$total)*100     # Q3. 전체 인구대비 아시아 인구
table(test$total_perc)
hist(test$total_perc)

m<-mean(test$total_perc)

test$total_percr <- ifelse(test$total_perc >= m, "large", "small")
test

table(test$total_percr)



# 데이터 가공(전처리)
library(dplyr)
exam <- read.csv("csv_exam.csv")
exam

exam %>% filter(class == 1)
exam %>% filter(class == 2)
exam %>% filter(class == 1 & math >= 50)
exam %>% filter(math >= 90 | english >= 90)
exam %>% filter(class == 1 | class == 3 | class == 5) # 1, 3, 5 반에 해당되면 추출
exam %>% filter(class %in% c(1,3,5)) # 1, 3, 5 반에 해당하면 추출


# 혼자서 해보기
mpg<-as.data.frame(ggplot2::mpg)
mpg

summary(mpg)

# Q1
t1<-mpg %>% filter(displ<=4)
t2<-mpg %>% filter(displ>=5)

mean(t1$hwy)
mean(t2$hwy) 


# Q2
mpg_audi <- mpg %>% filter(manufacturer == "audi") # audi 추출
mpg_toyota <- mpg %>% filter(manufacturer == "toyota") # toyota 추출

mean(mpg_audi$cty)
mean(mpg_toyota$cty)


#columm 만 추출
exam %>% select(math) # math col만 추출
exam %>% select(-math) # math col만 빼고 추출


#select와 filter를 같이 사용 가능
exam %>% filter(class == 1) %>% select(english)

# 일부만 출력하기
exam %>%
  select(id, math) %>% # id, math 추출
  head(10) # 앞부분 6 행까지 추출



# 혼자서 해보기
#Q1.
mpg<-as.data.frame(ggplot2::mpg)
mpg<-mpg %>% 
  select(class, cty)

#Q2.
t1<-mpg %>% filter(class=="suv")
t2<-mpg %>% filter(class=="compact")

mean(t1$cty)
mean(t2$cty)
