# Mann-Whitney U test 

# iki değişken oluşturalım.

x1<-c(253,218,292,280,276,275)
x2<-c(216,291,256,270,277,285)

# örnek değişkeni oluşturalım.

ornek<-c(rep(1,6),rep(2,6))

# Bu değişkenleri ile bir data.frame oluşturalım.

w<-data.frame(c(x1,x2),ornek)

# 1.sütunu isimlendirelim.

names(w)[1]<-'agirlik'

# Veri setini düzenleyelim.

cbind(w[1:6,],w[7:12,])

# Ağırlıkları küçükten büyüğe doğru sıralayalım.

idx<-sort(w[,1],index.return=T)
d<-rbind(agirlik=w[idx$ix,1], ornek=w[idx$ix,2], rank=1:12)
dimnames(d)[[2]]<-rep('',12)
print(d)

# veri setindeki gözlemlerin ranklarını toplayalım.

rank_toplam<-c(sum(d[3,d[2,]==1]), sum(d[3,d[2,]==2]))
rank_toplam<-rbind(ornek=c(1,2),'rank toplam'=rank_toplam)
dimnames(rank_toplam)[[2]]<-c(" "," ")
print(rank_toplam)

# rank toplam sonuçları eşit çıktı.

# Farz edelim ki eşit çıkmadı. İlk örneklemdeki gözlem değeri 
# ikinci örneklemdeki gözlem değerinden daha küçük çıktı.

# Örneğin ilk örneklemin sıraları (rank) ları toplamı 21 
# İkinci örneklemin rankları toplamı 57 çıksın. 

# Rankları toplamının bütün mümkün değerlerinin olasılıklarını bulalım.

# 12 örnek vardı. H0 hipotezinin doğruluğu altında -> 12!/6!6!=924 farklı yol vardır.

# Birinci örneklem sıra toplamı W1=21 ve ikinci örneklem sıra toplamı W2=57 olmasının olasılığı:
# P(W1=21 ve W2=57)=2/924 =0.002

# p=0.002<0.05 olduğu için H0 hipotezi reddedilir. 











