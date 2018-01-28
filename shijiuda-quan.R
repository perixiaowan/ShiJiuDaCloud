setwd("D:/xiaowan/shijiudaCloud")
setwd('/Users/xiaowan/R/shijiudaCloud')
#text=read.table("shijiudacloud.txt",fileEncoding='UTF-8',stringsAsFactors=F)
text=read.table(file.choose())
text=as.list(text)[[1]]
text=as.character(text)
library(jiebaR)
aa=unlist(segment(text,worker()))
b=as.data.frame(table(aa))
prep=c('的','和','是','在','要','为','我们','以','把','了','到','上','有','不','对','大','从','各','而')
f=b[-which(apply(b['aa'],1,function(x)any(x==prep))),]

ff=f[-which(apply(f[2],1,function(x)any(x<=1))),]
library(wordcloud2)
wordcloud2(ff,figPath='danghui.jpg',size=2,color='yellow',backgroundColor='red')
wordcloud2(ff,shape='star',color='red',backgroundColor='black')

letterCloud(f,word = "党",wordSize = 2,color='random-dark',backgroundColor="snow")