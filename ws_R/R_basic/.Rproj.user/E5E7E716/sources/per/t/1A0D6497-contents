#> 다음 데이터 프레임을 작성한 후, mtcars 과 join 하여  (gear 기준) new_mtcars를 생성하세요  

test1 <- data.frame(gear =  c(1, 2, 3, 4, 5),           
                    loc = c("울산공장", "서울공장", "부산공장", "포항공장", "경기공장"))

new_mtcars <- left_join(mtcars, test1, by = "gear")

new_mtcars


#> 다음 데이터 프레임을 작성한 후, test1데이터 프레임과 행을 합하여 new_gear 데이터 프레임을 생성하세요.  

test2 <- data.frame(gear =  c(6,7),           
                    loc = c("제주공장","거제도공장")) 

new_gear <- bind_rows(test1, test2) 

new_gear


# 문제 폴더에 주어진 emp.csv과 dept.csv 파일을 데이터프레임으로 읽은 후 다음 문제를 푸세요. 
#1, 두 데이터프레임을 조인하세요. 
#단, emp 데이터프레임을 기준으로 조인합니다.
#조인하는 기준 속성은 deptno입니다.
#조인 후 전체 데이터를 출력하세요. 

emp<-read.csv("emp.csv")
dept<-read.csv("dept.csv")
total<-left_join(emp, dept, by="deptno")
total

#2. emp데이터프레임에서 deptno 별로 평균급여(sal)을 구하세요. 단, 급여가 많은 순으로 출력됩니다. 
emp %>% 
  group_by(deptno) %>% 
  summarise(mean_sal=mean(sal)) %>%
  arrange(desc(mean_sal))
  


#  <복습> part15 - 1


#> vs 컬럼 값이 1이 아닌 행만  출력 
#(참고 : mtcars %>% filter(vs!=1)  )
mtcars[mtcars$vs!=1, ]


#>  wt 컬럼 값이 3이 이상이고 vs가 1인 행만 출력
#(참고 : mtcars %>% filter(wt>=3 & vs==1 ) )
mtcars[mtcars$wt>=3 & mtcars$vs==1, ]


#>  carb 컬럼 값이 2이거나 vs가 1인 행만 출력
#(참고 : mtcars %>% filter(carb==2 | vs==1 ) )
mtcars[mtcars$carb==2 | mtcars$vs==1, ]


#>  carb 컬럼 값이 1이거나 2인 행만 출력 
#(참고 : mtcars %>% filter(carb %in% c(1,2  ) ) )
mtcars[mtcars$carb==1 | mtcars$carb==2, ]


#>  wt 컬럼 값이 3이 이상이고 vs가 1인 행의 
#mpg, cyl 컬럼만,   5개 행 출력
#(참고 : mtcars %>% 
#  filter(wt>=3 & vs==1 ) %>%  
#  select(mpg,cyl) %>%  
#  head(5) 
mtcars<-mtcars[mtcars$wt>=3 & mtcars$vs==1, c("mpg", "cyl")]
mtcars[1:5,]
