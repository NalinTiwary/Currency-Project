library(ggplot2)

Currency=read.csv("C:\\Users\\nalin\\OneDrive\\Documents\\Exchange_Rate_Report_Refined.csv")
Currency_Raw=read.csv("C:\\Users\\nalin\\OneDrive\\Documents\\Exchange_Rate_Report.csv")

dim(Currency_Raw)
names(Currency_Raw)
names(Currency)
head(Currency)

Trade_Raw=read.csv("C:\\Users\\nalin\\OneDrive\\Documents\\WTO Refined DataSet-India.csv")

dim(Trade_Raw)
names(Trade_Raw)

names(Trade)
head(Trade)

keep=c("Year","Partner","Trade.Flow","Trade.Value..US..")
Trade=subset(Trade_Raw, select = keep)

ggplot(data=Trade, mapping=aes(x=Year,y=Trade.Value..US..,color=interaction(Partner,Trade.Flow)))+geom_point(alpha=0.7)+labs(y="Trade Value($)",x="Time")
ggplot(data=Trade, mapping=aes(x=Year,y=Trade.Value..US..,color=Partner))+geom_smooth(method=loess,formula = y~x) +labs(y="Trade Value($)",x="Time")
ggplot(data=Currency,mapping=aes(x=Date,y=Value,color=Name))+geom_line()+labs(x="Year",y="Value of the currency equivalent to 1$")

curr.model=lm(formula=Indian.rupee....INR.~Finnish.markka....FIM.+Swedish.krona....SEK.+Chinese.yuan....CNY.,data=Currency_Raw)
summary(curr.model)