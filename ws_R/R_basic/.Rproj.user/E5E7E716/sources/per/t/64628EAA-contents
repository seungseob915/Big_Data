emp<-read.csv("emp.csv")

# 1. emp 에는 comm 컬럼은 결측치가 있습니다. 
#    comm 컬럼  결측치가 총 몇 건이 있는 지 출력하세요. 
table(is.na(emp$comm))


# 2. emp의 comm 컬럼의 결측치를 빼고 평균을 구하세요. 
mean(emp$comm, na.rm=T)


# 3. emp의 comm 컬럼의 결측치를 빼고 
#   job별 평균을 구하세요.  
emp %>% 
  group_by(job) %>% 
  summarise(mean_job=mean(comm, na.rm=T))


# 4. emp의 comm 컬럼의 결측치를 빼고 
#   job별 평균과, 합과 중앙값을 구하세요.  
emp %>% 
  group_by(job) %>% 
  summarise(mean_job=mean(comm, na.rm=T),
            sum_job=sum(comm, na.rm=T),
            median_job=median(comm, na.rm=T)
            )


# 5. emp의 comm 컬럼의 결측치를  0으로 
#    대체하고 comm 컬럼의 총합을 구하세요  
emp$comm<-ifelse(is.na(emp$comm), 0,emp$comm)
table(is.na(emp$comm))
sum(emp$comm)


# 6. emp의 sal 값으로 상자그림을 그리세요. 
boxplot(emp$sal)

# 7. emp의 sal 값으로 상자그림 통계치를 출력하세요. 
boxplot(emp$sal)$stats


# 8. emp의 sal 값으로 상자그림 통계치를 통하여 정상영역에서
#    벗어나는 극단치를 찾아 NA로 값을 바꾸어 줍니다. 
emp$sal <- ifelse(emp$sal < 800 | emp$sal > 5000, NA, emp$sal)
emp

# 9. emp의 sal 값으로 결측치(NA)를 빼고  
#    평균을 구합니다. 
emp %>% 
  summarize(mean_sal=mean(sal, na.rm=T))


# 10. emp의 sal 값으로 결측치(NA)를 빼고  
#     deptno 별로 평균을 구합니다.  (단, sal평균이 높은 deptno가 먼저 출력되도록 ) 
emp %>% 
  group_by(deptno) %>% 
  summarize(mean_sal=mean(sal, na.rm=T)) %>% 
  arrange(desc(mean_sal))
