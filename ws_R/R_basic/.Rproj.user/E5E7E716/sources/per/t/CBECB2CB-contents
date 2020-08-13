# 문제 폴더에 주어진 emp.csv 파일을 데이터프레임으로 읽은 후 다음 문제를 푸세요. 
emp<-read.csv("emp.csv")
library(ggplot2)

emp
#산점도 그래프를 그리세요. x = job y = sal 
ggplot(data=emp, aes(x=job, y=sal)) + geom_point()

#산점도 그래프를 그리세요. x = hire_year  단 2000년 이후에 입사한 사원만 y = sal 
ggplot(data=emp, aes(x=hire_year, y=sal)) + geom_point() + ylim(2000, 2020)


# 직종별(job) 별로 평균 급여(sal)을 구한 후 막대 그래프를 그리세요.(단, 급여가 많은 순으로 ) 
library(dplyr)

emp_t<-emp %>% 
  group_by(job) %>% 
  summarize(mean_sal=mean(sal))

ggplot(data=emp_t, aes(x=job, y=mean_sal)) + geom_col()


# 직종별(job) 별로 사원 수를 빈도 막대 그래프로 그리세요. 
ggplot(data=emp, aes(x=job)) + geom_bar()


# 입사년도(hire_date) 별로 사원 수를 구한 후, 시계열 그래프를 그리세요. (년도별 입사자 수 추이 확인)
emp_t<-emp %>% 
  group_by(hire_year) %>% 
  summarize(num=n())

ggplot(data = emp_t, aes(x = hire_year, y = num)) + geom_line()
