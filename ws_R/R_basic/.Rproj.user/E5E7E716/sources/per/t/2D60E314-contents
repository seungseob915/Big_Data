#> 1 행만  출력 
mtcars[1,]


#> 1 열만  출력 
mtcars[,1]


#> 1행 1열만  출력 
mtcars[1,1]


#> 1행 "mpg"열만  출력 
mtcars[1,"mpg"]


#> "mpg"열만  출력 
mtcars[,"mpg"]


#> "mpg"열과 "cyl"열만  출력 
mtcars[,c("mpg" , "cyl")]


#> vs 컬럼 값이 1인 행만  출력 
#(참고 : mtcars %>% filter(vs==1) )  
mtcars[mtcars$vs==1,]

#>  wt 컬럼 값이 3이 이상이고 vs가 1인 행의 mpg, cyl 컬럼만   출력  
#(참고 : mtcars %>% select(mpg,cyl) %>%  filter(wt>=3 & vs==1 ) )
#또는 (참고 : mtcars %>% filter(wt>=3 & vs==1 ) %>%  select(mpg,cyl))
mtcars[mtcars$wt>=3 & mtcars$vs==1,c("mpg", "cyl")]

