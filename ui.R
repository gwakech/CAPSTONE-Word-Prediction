# ui.R

shinyUI(fluidPage(
  titlePanel("Predicting the Next Word"),
  
  fluidRow(
    column(12,
           br(),
           h4("This basic application predicts the next word in a phrase as you type it."),
           br(),
           h4("Instructions"),
           h5("To run the application:"),
           h5("(i)  Type a phrase in the box  provided below"),
           h5("(ii) You  should see the following reflected below the input box:"),
           h5("(iii)The phrase entered reflected below the input box"),
           h5("(iv) Completion of the word/Phrase being typed"),
           h5("The predicted next word of your phrase appears in the third box labelled 'Predicted Next word'"),
           br()
          
    )
  ),
  
  fluidRow(
    column(6,
           textInput("input_str", 
                     label = "Enter some text without punctuation:", 
                     value = " "
           )             
    )    
  ),
  
  fluidRow(
    column(12,
           br(),
           br(),
           br(),
           br(),
           h5("You entered (with suggested completion of your current word):", style = "color:red;"), 
           verbatimTextOutput("text1")             
    )
  ),
  
  fluidRow(
    column(12,
           br(),
           br(),
           h5("Predicted next word:", style = "color:blue"), 
           verbatimTextOutput("text2")            
    )
  )
))