library(shiny)
library(auth0)

# simple UI with user info
ui <- fluidPage(
  
  verbatimTextOutput("user_info"),
  verbatimTextOutput("credential_info")
)
