library(dplyr)

#> wt 컬럼을 기준으로 정렬 하여 모두 출력 
mtcars %>% 
  arrange(wt)


#> wt 컬럼을 기준으로 정렬 하여 모두 출력. (단 내림차순)
mtcars %>% 
  arrange(desc(wt))


#>  gear컬럼을 기준으로 정렬, gear 컬럼의 값이 같은 경우, wt  컬럼의 값을 기준으로 정렬하여 모두 출력. 
mtcars %>% 
  arrange(gear, wt)


# wt 컬럼 값이 3이 이상이고 vs가 1인 행의 mpg, cyl 컬럼만 빼고 5개 행 출력. 단, wt 컬럼 값 기준으로 정렬하여 출력 
mtcars %>% 
  filter(wt<=3 & vs==1) %>% 
  select(-mpg, -cyl) %>% 
  arrange(wt) %>% 
  head(5)


#>  wt 컬럼 값이 3이 이상이고 vs가 1인 행의 mpg, cyl 컬럼만 빼고 5개 행 출력. 단, wt 컬럼 값 기준으로 내림 차순 정렬하여 출력 
mtcars %>% 
  filter(wt<=3 & vs==1) %>% 
  select(-mpg, -cyl) %>% 
  arrange(desc(wt)) %>% 
  head(5)


#> disp 컬럼 값과 wt 컬럼 값을 합하여 tnt 컬럼으로 추가하면서 모든 행과, 열출력 
mtcars %>% 
  mutate(tnt=disp+wt)


#> disp 컬럼 값과 wt 컬럼 값을 합한 값이 100 이상이면,"Y" 그렇지 않으면 "N" 값을 tnt 컬럼에 축가하면서  모든 행과, 열출력 
mtcars %>% 
  mutate(tnt=ifelse(disp+wt>=100, "Y", "N"))


#> mpg 평균을 구하여 출력 
mtcars %>% summarise(mean_mpg=mean(mpg))


#gear 별로  mpg 평균을 구하여 출력  
mtcars %>% 
  group_by(gear) %>% 
  summarise(mean_mpg=mean(mpg))


#> gear 별로 행 갯수와   mpg 평균을 구하여 출력  
mtcars %>% 
  group_by(gear) %>% 
  summarise(mean_mpg=mean(mpg), n=n())


#> gear 별로 행 갯수와   mpg 평균,mpg 합계, mpg 중앙값을 구하여 출력  
mtcars %>% 
  group_by(gear) %>% 
  summarise(mean_mpg=mean(mpg),
            sum_mpg=sum(mpg),
            median_mpg=median(mpg),
            n=n())


#> gear 별로 행 갯수와   mpg 평균,mpg 합계, mpg 중앙값을 구하여 출력 단,   mpg 평균 순으로 정렬하여 출력
mtcars %>% 
  group_by(gear) %>% 
  summarise(mean_mpg=mean(mpg),
            sum_mpg=sum(mpg),
            median_mpg=median(mpg),
            n=n()) %>% 
  arrange(mean_mpg)
