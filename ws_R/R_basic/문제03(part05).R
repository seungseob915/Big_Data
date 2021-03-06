#>df2 변수가 저장한 데이터프레임이 몇행 몇열인지 출력하시요. 
df2<-read.csv("product.csv")
dim(df2)

#>df2 변수가 저장한 데이터프레임의 요약(summary) 정보를 출력하세요.  
summary(df2)

#>1월 상품 가격을 10%할인하려고 한다. janDiscount컬럼을 10%할인된 가격으로 추가하세요. 
df2$janDiscount=(df2$price)*0.9
df2

#>mtcars  변수에 데이터 프레임이 존재한다.  출력하여 데이터 확인 
mtcars

#>mtcars$gear 의 값 빈도 수를  숫자로 출력하세요. 
table(mtcars$gear)

#>mtcars$gear 의 값 빈도 그래프를 출력하세요. (qplot함수) 
library(ggplot2)
qplot(mtcars$gear)

#>mtcars$mpg 값이 15이상이면 Y, 이하이면 N인 값을 갖는 pass 컬럼을 추가하세요. 
mtcars$pass <- ifelse(mtcars$mpg >= 15, "Y", "N")
mtcars
