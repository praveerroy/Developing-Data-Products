library(shiny) 
shinyUI(
pageWithSidebar(
    
headerPanel("Body Mass Index (BMI) Calculator and Classifier"),
    
sidebarPanel(
numericInput('weight', 'Insert your weight in kilograms', 70) ,
numericInput('height', 'Insert your height in metres', 1.7),
submitButton('Submit')
), 
mainPanel(
p('We use the following criterions (as per WHO guidelines) for classification of BMI types:'),
tags$div(
tags$ul(
tags$li('BMI <18.5       : Underweight'),
tags$li('BMI [18.5-24.9] : Normal weight'),
tags$li('BMI [25-29.9]   : Overweight'),
tags$li('BMI >=30        : Obesity')
)
),
      
h4('Values entered are:'), 
p('weight:'), verbatimTextOutput("inputweight"),
p('height:'), verbatimTextOutput("inputheight"),
h4('Calculated BMI is:'),
verbatimTextOutput("calculated"),
p('The BMI Classification is:'),strong(verbatimTextOutput("classified"))      
      
)
    
)   
)
