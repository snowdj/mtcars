
Find Out What Is Your Car's Miles/Gallon
======

Course Project: Shiny Application and Reproducible Pitch for Developing Data Products



## Motivation

1. If your car has a big miles per gallon, it means your car is energy efficient. You can save a lot of money.
2. The car's miles per gallon depends on many factors such as number of cylinders, gross horsepower, weight, transimission, and number of forward gears.
3. We use the historical data to estimate the effect of those factors on car's miles per gallon.
4. Use our model to estimate your car's miles per gallon, and you can make a good decision

--- 

## Data of Car's Miles/Gallon

- The data set has 32 observations on 11 variables. The first 3 observations are:

```r
data(mtcars)
library(xtable)
print(xtable(head(mtcars, 3)), type = "html", include.rownames = F)
```

<!-- html table generated in R 3.0.3 by xtable 1.7-3 package -->
<!-- Sat Jun 21 13:35:35 2014 -->
<TABLE border=1>
<TR> <TH> mpg </TH> <TH> cyl </TH> <TH> disp </TH> <TH> hp </TH> <TH> drat </TH> <TH> wt </TH> <TH> qsec </TH> <TH> vs </TH> <TH> am </TH> <TH> gear </TH> <TH> carb </TH>  </TR>
  <TR> <TD align="right"> 21.00 </TD> <TD align="right"> 6.00 </TD> <TD align="right"> 160.00 </TD> <TD align="right"> 110.00 </TD> <TD align="right"> 3.90 </TD> <TD align="right"> 2.62 </TD> <TD align="right"> 16.46 </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 1.00 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 4.00 </TD> </TR>
  <TR> <TD align="right"> 21.00 </TD> <TD align="right"> 6.00 </TD> <TD align="right"> 160.00 </TD> <TD align="right"> 110.00 </TD> <TD align="right"> 3.90 </TD> <TD align="right"> 2.88 </TD> <TD align="right"> 17.02 </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 1.00 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 4.00 </TD> </TR>
  <TR> <TD align="right"> 22.80 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 108.00 </TD> <TD align="right"> 93.00 </TD> <TD align="right"> 3.85 </TD> <TD align="right"> 2.32 </TD> <TD align="right"> 18.61 </TD> <TD align="right"> 1.00 </TD> <TD align="right"> 1.00 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 1.00 </TD> </TR>
   </TABLE>

- The variable: mpg is miles per gallon depends
 - cly is the number of cylinders
 - hp is the gross horsepower
 - gear is the number of forward gears

---
## Number of cylinders, Gross horsepower, and Number of forward gears
- We find Number of cylinders, Gross horsepower, and Number of forward gears have very different effect on car's miles/gallon

```r
fit <- lm(mpg ~ cyl + hp + gear, data = mtcars)
coef(fit)
```

```
## (Intercept)         cyl          hp        gear 
##    25.86869    -1.20819    -0.03929     2.02345
```

- From the results, we know:  
 - More cylinders and gross horsepower decrease miles/gallon.
 - More forward gears increases miles/gallon.  


---
## Prediction of Miles/Gallon
- Now according to our's model, you can easily estimate your car's miles/gallon.
- What you need to do is to go to our shiny website. [Find Out What Is Your Car's Miles/Gallon] (https://jonduan.shinyapps.io/mtcars/)
- Enter your car's Number of cylinders, Gross horsepower, and Number of forward gears.
- Push the "Submit" button, and the miles/gallon will show on the right side of the page.
- Enjoy!
