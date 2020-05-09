source('global.R', local = TRUE)

server <- auth0_server(function(input, output, session) {
  
  output$Sub <- renderText({
    paste('The sub is: ', str_to_title(session$userData$auth0_info$sub))
  })
  
  output$Nickname <- renderText({
    paste('Welcome ',session$userData$auth0_info$nickname)
  })
  
  
  output$name <- renderText({
    paste('The session users name: ', session$userData$auth0_info$name)
  })
  
  output$infoUpdated <- renderText({
    paste('The users info was updated at: ', session$userData$auth0_info$updated_at)
  })

  }, info = a0_info)