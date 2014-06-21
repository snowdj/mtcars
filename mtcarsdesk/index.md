---
title       : Find Out What Is Your Car's Miles/Gallon
subtitle    : 
author      : Jon Duan
job         : Project for Developing Data Produts
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Motivation

1. If your car has a big miles per gallon, it means your car is energy efficient. You can save a lot of money.
2. The car's miles per gallon depends on many factors such as number of cylinders, gross horsepower, weight, transimission, and number of forward gears.
3. We use the historical data to estimate the effect of those factors on car's miles per gallon.
4. Use our model to estimate your car's miles per gallon, and you can make a good decision

--- .class #id 

## Data of Car's Miles/Gallon

- The data set has 32 observations on 11 variables. The first 3 observations are:

```r
data(mtcars)
head(mtcars, 3)
```

```
##                mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4     21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710    22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
```

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




