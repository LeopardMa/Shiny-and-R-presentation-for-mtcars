Explorative Analysis on mtcars
========================================================
author: Rubao Ma
date: Jun 17th, 2016
transition: linear

Overview
========================================================
id: slide1

![alt text](fig0.png)

***

This is a shiny application used for the exploratory data analysis on mtcars data set. Users can selection predictors to build specific regression model with the outcome, fuel consumption mpg. The application returns the plots and summary of the model. The history of user's trial is recorded.

<small>
<https://rubaoma.shinyapps.io/Analysis_on_mtcars/>
</small>

Variable Selection and Model
========================================================
id: slide2
left: 40%
![alt text](fig3.png)
![alt text](fig1.png)

***

The list of variables is generated according to the data set mtcars. 
All variables are listed except mpg.  
After the selected variables are submitted to be the predictors in the regression model, there is response to show which variable is submitted. And the model is built.
<small>

```r
data("mtcars")
names(mtcars)
```

```
 [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear"
[11] "carb"
```
</small>


Plots and Summary
========================================================
id: slide3
left: 40%

![alt text](fig4.png)
![alt text](fig5.png)

***
Two tabs are used to illustrate the performance of the model.  
The Plots tab gives 4 plots of model, which consists of Residuals vs Fitted, Normal Q-Q, Scale-Location and Cook's distance.  
The Summary tab gives the coefficients in detail.


History
========================================================
id: slide4

![alt text](fig6.png)
***

All tried models are recorded in tab History with the squared r and adjusted r squared.  
It is convinient for users to compare the performance of different models and pick up the model they want.

