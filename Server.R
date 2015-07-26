library(shiny) 

BMI_calculation<-function(weight,height) {weight/(height^2)}

classification<-function(weight,height){
  BMI<-weight/(height^2)
  ifelse(BMI<18.5,"underweight",ifelse(BMI<25,"normal-weight",ifelse(BMI<30,"overweight","obese")))
}

shinyServer(
  function(input, output) {
    
    output$inputweight <- renderPrint({input$weight})
    output$inputheight <- renderPrint({input$height})
    output$calculated <- renderPrint({BMI_calculation(input$weight,input$height)})
    output$classified <- renderPrint({classification(input$weight,input$height)})
  } 
)
