Developing Data Products Presentation
BMI (Body Mass Index) Shiny App
========================================================
author: Praveer Roy
date: 26/07/2015

Introduction
========================================================
This presentation is made as part of the peer reviewed assignment in the Developing Data Products Course.

This presentation explains the Shiny App for calculating the BMI and Classifying the Body type based on the BMI.

This presentation is made using R Presentation and is Published on RPubs with the following URL: http://rpubs.com/praveerroy/DDPShiny

The Shiny App URL is: https://praveerroy.shinyapps.io/DDPShiny



The Body Mass Index (BMI) Shiny App
========================================================
The BMI Shiny App uses the following steps:

- The user is asked to enter her/his height and weight
- With the height and weight as the input the BMI is calculated by the formula BMI=(weight i n KG)/(height in Meters)^2
- The calculated BMI is then classified as follows (based on WHO classification):
  - BMI <18.5       : Underweight
  - BMI [18.5-24.9] : Normal weight
  - BMI [25-29.9]   : Overweight
  - BMI >=30        : Obese
  



R Code Used the Shiny App - 1
========================================================
Functions with the ollowing Code is used in the Shiny App:



```r
BMI_calculation<-function(weight,height) {weight/(height^2)}

classification<-function(weight,height){
  BMI<-weight/(height^2)
  ifelse(BMI<18.5,"underweight",ifelse(BMI<25,"normal-weight",ifelse(BMI<30,"overweight","obese")))
}
```

R Code Used the Shiny App - 2
========================================================
For Illustrative Inputs weight = 70kg and height = 1.7Meters the Shiny App will give the following result based on the calculation in the code of the previous slide.


```r
height <- 1.7
weight <- 70
BMI_calculation(weight,height)
```

```
[1] 24.22145
```

```r
classification(weight,height)
```

```
[1] "normal-weight"
```


Thank You
========================================================


