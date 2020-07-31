# Currency Project
This project aims to look at the correlation between the relative value of a currency and trade value between those countries. Looking at the data and after discussing the context I decided on the following Null Hypothesis:
H0: There is no significant relationship between the relative value of a currency and the trade value between those countries.
H1: There is a significant relationship between the relative value of a currency and the trade value between those countries.
 
 
## ggplot2
ggplot2 is an R library function to plot


### Installation 
Use install.package to install ggplot2
```R
install.package("ggplot2")
```

### Usage

```R
library(ggplot2)
ggplot(data=Trade, mapping=aes(x=Year,y=Trade.Value..US..,color=interaction(Partner,Trade.Flow)))+geom_point(alpha=0.7)+labs(y="Trade Value($)",x="Time")
ggplot(data=Trade, mapping=aes(x=Year,y=Trade.Value..US..,color=Partner))+geom_smooth(method=loess,formula = y~x) +labs(y="Trade Value($)",x="Time")
ggplot(data=Currency,mapping=aes(x=Date,y=Value,color=Name))+geom_line()+labs(x="Year",y="Value of the currency equivalent to 1$")
```

## Datset
1. Currency data set -This data set stores the daily value of currencies in USD equivalent from January 1994 to January 2020
(https://www.kaggle.com/kianwee/foreign-exchange-rate-1994-2020?select=Exchange_Rate_Report.csv)

2. WTO Trade data set - It contains the product and monetary value in equivalent USD of the product imported and exported by India to every other country for the years 1999, 2004, 2009, 2014, 2019
(https://comtrade.un.org/data/)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
