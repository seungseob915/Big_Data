#mtcars 데이터프레임으로 다음 문제를 푸세요. 
#> vs 컬럼 값이 1인 행만  출력 
mtcars %>% filter(vs==1)


#> vs 컬럼 값이 1이 아닌 행만  출력
mtcars %>% filter(vs!=1)


#>  wt 컬럼 값이 3이 이상이고 vs가 1인 행만 출력
mtcars %>% filter(wt>=3 & vs==1)


#>  carb 컬럼 값이 2이거나 vs가 1인 행만 출력
mtcars %>% filter(carb==2 | vs==1)


#>  carb 컬럼 값이 1이거나 2이거나 3인 행만 출력 
mtcars %>% filter(carb %in% c(1,2,3))


#>  mpg, cyl 컬럼만 출력 
mtcars %>% select(mpg, cyl)


#>  mpg, cyl 컬럼만 빼고  출력 
mtcars %>% select(-mpg, -cyl)


#>  wt 컬럼 값이 3이 이상이고 vs가 1인 행의 mpg, cyl 컬럼만 빼고 출력  
mtcars %>% filter(wt>=3&vs==1) %>% 
  select(-mpg, -cyl)


#>  mpg, cyl 컬럼만   5개 행만 출력
mtcars %>% 
  select(-mpg, -cyl) %>% 
  head(5)


#> wt 컬럼을 기준으로 정렬 하여 모두 출력 
mtcars %>% arrange(wt)
