#>  df1 변수에 위와 같은 데이터를 갖는 데이터 프레임을 생성하세요. 
df1 <- data.frame(productId = c(10, 20, 30, 40),
                         productName = c("smTV", "lgTv", "sonyTv", "pTv"),
                         price = c(1000000, 900000, 500000, 700000))

df1

#>  위 데이터 프레임에서 가격 평균을 출력하세요.  
mean(df1$price)

#>  위 데이터 프레임에서 가격 최대값을 출력하세요. 
max(df1$price)

#>  위 데이터 프레임을 product.csv 파일로 저장하세요. 
write.csv(df1, file = "product.csv")


#> 위 데이터 프레임을 R 전용 파일인 "product.rda" 파일로 저장하세요. 
save(df1, file = "product.rda")
rm(df1)


#>  df2 변수에 "product.csv"  이 파일을 읽어서 데이터 프레임으로 저장하세요.
df2<-read.csv("product.csv")


#>  product 변수에 "product.rda"  이 파일을 읽어서 데이터 프레임으로 저장하세요.
load("product.rda")
df1
