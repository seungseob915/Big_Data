exam<-read.csv("data/csv_exam.csv")
head(exam)


library(dplyr)

# math 오름차순 정렬
exam %>% arrange(math)

# math 내림차순 정렬
exam %>% arrange(desc(math))

#class, math 기준으로 정렬
exam %>%arrange(class, math)


# 혼자서 해보기(mpg 데이터를 이용해서 분석 문제를 해결하라)
library(ggplot2)
mpg<-as.data.frame(ggplot2::mpg)
mpg

ans<-mpg %>% filter(manufacturer=="audi")
ans<-ans %>% arrange(desc(hwy))
head(ans, 5)


# 파생 변수 추가하여 출력하기(원본은 바뀌지 않고 출력할 때만 추가해주는 것)
exam %>% 
  mutate(total=math+english+science) %>% 
  head

exam %>% 
  mutate(total=math+english+science, 
         mean=total/3) %>% 
  head

exam %>% 
  mutate(result=ifelse(science>=60, "pass","fail")) %>% 
  head

exam %>% 
  mutate(total=math+english+science) %>%
  arrange(total) %>% 
  head
  

# 혼자서 해보기
mpg_t<-as.data.frame(ggplot2::mpg)
mpg_t

#Q1
mpg_t$total<-mpg_t$cty+mpg_t$hwy

#Q2
mpg_t$mean<-mpg_t$total/2

#Q3
mpg_t %>% arrange(desc(mean)) %>% 
  head(3)

#Q4
mpg %>% 
  mutate(total=cty+hwy, mean=total/2) %>% 
  arrange(desc(mean)) %>% 
  head(3)


# 집단별로 요약
exam %>% summarise(mean_math = mean(math)) # math 평균 산출

exam %>%
  group_by(class) %>% # class 별로 분리
  summarise(mean_math = mean(math)) # math 평균 산출

exam %>%
  group_by(class) %>% # class 별로 분리
  summarise(mean_math = mean(math), # math 평균
            sum_math = sum(math), # math 합계
            median_math = median(math), # math 중앙값
            n = n()) # 학생 수


# dplyr 조합하기
mpg_t<-as.data.frame(ggplot2::mpg)

mpg_t %>% 
  group_by(manufacturer) %>% 
  filter(class=="suv") %>% 
  mutate(total=(cty+hwy)/2) %>% 
  summarise(mean_total=mean(total)) %>% 
  arrange(desc(mean_total)) %>% 
  head(5)



# 혼자서 해보기
#Q1
mpg %>% 
  group_by(class) %>% 
  summarise(mean_c=mean(cty))

#Q2
mpg %>% 
  group_by(class) %>% 
  summarise(mean_c=mean(cty)) %>% 
  arrange(desc(mean_c))

#Q3
mpg %>% 
  group_by(manufacturer) %>% 
  summarise(mean_h=mean(hwy)) %>% 
  arrange(desc(mean_h)) %>% 
  head(3)

#Q4
mpg %>% 
  group_by(manufacturer) %>% 
  filter(class=="compact") %>% 
  summarise(count=n()) %>% 
  arrange(desc(count))



#데이터 합치기
# 중간고사 데이터 생성
test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(60, 80, 70, 90, 85))
# 기말고사 데이터 생성
test2 <- data.frame(id = c(1, 2, 3, 4, 5),
                    final = c(70, 83, 65, 95, 80))

total <- left_join(test1, test2, by = "id") # id 기준으로 합쳐 total 에 할당(left join이라 id가 test1꺼는 무조건 들어옴)
total # total 출력


# 중간고사 데이터 생성
test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(60, 80, 70, 90, 85))
# 기말고사 데이터 생성
test2 <- data.frame(id = c(1, 2, 3, 4, 6),
                    final = c(70, 83, 65, 95, 80))

total <- inner_join(test1, test2, by = "id") # id 기준으로 합쳐 total 에 할당(inner join이라 id가 동일한 것만 들어옴)
total # total 출력


# 중간고사 데이터 생성
test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(60, 80, 70, 90, 85))
# 기말고사 데이터 생성
test2 <- data.frame(id = c(1, 2, 3, 4, 6),
                    final = c(70, 83, 65, 95, 80))

total <- right_join(test1, test2, by = "id") 
total


# 다른 데이터를 활용해 변수 추가
name <- data.frame(class = c(1, 2, 3, 4, 5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name

exam
exam_new <- left_join(exam, name, by = "class")
exam_new


# 세로로 합치기
group_a<-data.frame(id=c(1,2,3,4,5),
                    test=c(60,80,70,90,85))
group_b<-data.frame(id=c(5,7,8,9,10),
                    test=c(70,83,65,95,80))

group_all <- bind_rows(group_a, group_b) # 데이터 합쳐서 group_all 에 할당
group_all

group_all<-rbind(group_a, group_b)
group_all


# 혼자서 해보기
mpg

fuel<-data.frame(fl=c("c", "d", "e", "p", "r"),
                 price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22))

fuel

#Q1
mpg_n<-left_join(mpg, fuel, by="fl")
mpg_n


#Q2
mpg_n %>% select(model, fl, price_fl) %>% 
  head(5)


# 분석 도전
m<-data.frame(ggplot2::midwest)

#Q1
m$total_ua<-(m$poptotal-m$popadults)/m$poptotal*100
m

#Q2
m %>% arrange(desc(total_ua)) %>% 
  select(county, total_ua) %>% 
  head(5)

#Q3
m<-m %>% 
  mutate(grade=ifelse(total_ua>=40, "large", ifelse(total_ua>=30, "middle", "small")))

table(m$grade)

#Q4
m
m$total_asa<-(m$popasian/m$poptotal)*100

m %>% select(state, county, total_asa) %>% 
  arrange(total_asa) %>% 
  head(10)






#############################################################################
### 7. 데이터 정제

df <- data.frame(gender = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

is.na(df)
table(is.na(df))
table(is.na(df$gender))
table(is.na(df$score))

mean(df$score)
mean(df$score, na.rm=T)    # 결측치 제외하고 평균 산출

library(dplyr)
df %>% filter(is.na(score))    # 결측치가 있는지 확인인

df %>% filter(!is.na(score) & !is.na(gender)) # 모든 변수에 결측치 없는 데이터 추출
df_nomiss2 <- na.omit(df) # 모든 변수에 결측치 없는 데이터 추출
df_nomiss2


# 결측치를 찾으면 특정 숫자로 대체하기
df <- data.frame(gender = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
table(is.na(df$gender))
df$gender <- ifelse(is.na(df$gender), "M", df$gender) # gender 가 NA 면 M 로 대체
table(is.na(df$gender))


#혼자서 해보기
mpg_t<-as.data.frame(ggplot2::mpg)
mpg_t<-mpg_t[c(65, 124, 131, 153, 212), "hwy"]
mpg

table(is.na(mpg_t$drv))
table(is.na(mpg_t$hwy))

mpg_t %>% filter(!is.na(hwy))



#이상치 제거
mpg<-as.data.frame(ggplot2::mpg)
boxplot(mpg$hwy)

boxplot(mpg$hwy)$stats

mpg$hwy<-ifelse(mpg$hwy <12 | mpg$hwy > 37, NA, mpg$hwy)    # 이상치 데이터를 바꾸기
table(is.na(mpg$hwy))

# 고속도로별 이상치를 제거한 평균 
mpg %>% group_by(drv) %>% 
  summarise(mean_hwy=mean(hwy, na.rm=T))


#혼자서 해보기
mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기
mpg[c(10, 14, 58, 93), "drv"] <- "k" # drv 이상치 할당
mpg[c(29, 43, 129, 203), "cty"] <- c(3, 4, 39, 42) # cty 이상치 할당

mpg

#Q1
table(mpg$drv)
mpg$drv <- ifelse(mpg$drv %in% c("4", "f", "r"), mpg$drv, NA) 
table(mpg$drv)

#Q2
boxplot(mpg$cty)

boxplot(mpg$cty)$stats

table(is.na(mpg$cty))
mpg$cty <- ifelse(mpg$cty<9 | mpg$cty>26, NA, mpg$cty)
boxplot(mpg$cty)

#Q3
mpg %>%
  filter(!is.na(drv) & !is.na(cty)) %>% # 결측치 제외
  group_by(drv) %>% # drv 별 분리
  summarise(mean_hwy = mean(cty)) # cty 평균 구하기

