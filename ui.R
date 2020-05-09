source('global.R', local = TRUE)

# simple UI with user info
ui <- auth0_ui(dashboardPage(
  title = span("Dashboard"),
  dashboardHeader(
    title =  "Dashboard"
    ),
###################################     SIDEBAR    ################################################################

dashboardSidebar(
  sidebarMenu(
    textOutput("Nickname"),
    logoutButton(label = "Log out", id = "._auth0logout_")
  )
),
  
dashboardBody(
  tabItem(tabName = "userInfo",
          h2("This is for development only"),
          textOutput("Sub"),
          textOutput("name"),
          textOutput("infoUpdated")
  )
  )
  ), info = a0_info)
