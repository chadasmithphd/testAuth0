library(shiny)
library(shinydashboard)
library(auth0)

options(shiny.port = 8080)
a0_info <- auth0::auth0_info()
