################ 산점도 그래프 

library(ggplot2)

ggplot(data=mpg, aes(x=displ, y=hwy))  # 배경설정 

# 산점도 그래프
ggplot(data=mpg, aes(x=displ, y=hwy)) + geom_point() # 배경 + 그래프 형태 
ggplot(data=mpg, aes(x=displ, y=hwy)) + geom_point() + xlim(3, 6) # 배경 + 그래프 형태 + x축 범위 설정
ggplot(data=mpg, aes(x=displ, y=hwy)) + geom_point() + xlim(3, 6) + ylim(10, 30)
head(mpg)

#Q1
ggplot(data=mpg, aes(x=cty, y=hwy)) + geom_point()

#Q2
ggplot(data=midwest, aes(x=poptotal, y=popasian)) + 
  geom_point() +
  xlim(0,500000) + 
  ylim(0,10000)



################ 막대 그래프 

library(dplyr)

df_mpg <- mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy, na.rm = T))


df_mpg

ggplot(data=df_mpg, aes(x=drv, y=mean_hwy)) + geom_col()

ggplot(data=df_mpg, aes(x=reorder(drv, -mean_hwy), y=mean_hwy)) + geom_col()  # 내림차순 (-)

# x 축 범주 변수, y 축 빈도
ggplot(data = mpg, aes(x = drv)) + geom_bar()
# 히스토그램
ggplot(data=mpg, aes(x=hwy)) + geom_bar()



#혼자서 해보기
#Q1
df_mpg<-mpg %>% 
  filter(class=="suv") %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty=mean(cty, na.rm=T)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)

df_mpg

ggplot(data=df_mpg, aes(x=reorder(manufacturer,-mean_cty), y=mean_cty)) + geom_col()


#Q2
ggplot(data=mpg, aes(x=class)) + geom_bar()



# 시계열 그래프 만들기
ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()


#혼자서 해보기
economics
ggplot(data = economics, aes(x = date, y = psavert)) + geom_line()


#상자 그래프
ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()


#혼자서 해보기
mpg_t<-mpg %>% 
  filter(class==c("compact", "subcompact", "suv"))

mpg_t

ggplot(data=mpg_t, aes(x=class, y=cty)) + geom_boxplot()
