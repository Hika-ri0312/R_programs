#データ入力
x <- c(1,2,3,4,5,6,7,8,9,10)
x

#平均
mean(x)

#分散
var(x)

##ヒストグラム
#数学の成績データ
A <- c(70,67,81,92,78,62,85,73)
B <- c(66,75,48,58,80,57,50)

#2行1列の領域にグラフ描画
par(mfrow=c(2,1))

#成績データのヒストグラム
#br:40から100までを15毎に分割
#prob=TRUE:縦軸を度数から頻度に変更
br <- seq(40,100,15)
hist(A,breaks=br,prob=T)
hist(B,breaks=br,prob=T)

#正規乱数の生成
data <- rnorm(n=1000,mean=0,sd=1)
hist(data,prob=T)

##散布図
#面積データ
x <- c(30.16,18,27.92,25.64,29.6,40,35.56,35.74,40.09)

#家賃データ
y <- c(5.5,5.7,8,8.2,11,12.3,12.9,13.7,16.3)

par(mfrow=c(1,1))

plot(x,y,xlab="面積",ylab = "家賃")

##確率分布
#正規分布
curve(dnorm(x),from=-4,to=4)

#図の重ね描き:'add=T'
curve(dnorm(x),from=-6,to=6,ylim=c(0,1),col=1)
curve(dnorm(x,mean=0,sd=0.5),col=2,add=T)
curve(dnorm(x,mean=0,sd=1.5),col=3,add=T)
curve(dnorm(x,mean=-2,sd=2),col=4,add=T)
