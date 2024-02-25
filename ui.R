ui <- shinydashboard::dashboardPage(skin = "purple",
  shinydashboard::dashboardHeader(title = "econR"), # dashboard Head


  shinydashboard::dashboardSidebar( # Sidebarmenu
    shinydashboard::sidebarMenu(
      menuItem("Home", tabName = "Home", icon = icon("home")),
      menuItem("Time series", tabName = "bp", icon = icon("align-left"),
               menuItem("ARIMA modelling", 
                        tabName = "arima",icon = icon("pencil"))
                            ),
      div(
        style = "display: flex; justify-content: center;",
      img(src='logo.png', align = "center",
          width="200", height = "200")
      )
      
    )
  ),
  
  shinydashboard::dashboardBody(
    shinydashboard::tabItems(
      # draw_ebp tab content
      tabItem(tabName = "arima","building"),
      
      # home tab content
      tabItem(tabName = "Home",
               
              tags$h3(
                HTML("<b> Introduction to econR</b>")
              ),
              
              tags$p(
                HTML("<p style='text-align: justify;'>Welcome to the realm of econometrics, a fundamental aspect of economic analysis where understanding and presenting data is paramount. Our goal is to provide researchers with the tools they need to effectively analyze and interpret economic phenomena.</p>
  <p style='text-align: justify;'>The econR package serves as a comprehensive toolkit for econometric analysis in R. With its diverse range of functions and intuitive interface, we empower users to delve into the intricacies of economic data and uncover meaningful insights.</p>
  <p style='text-align: justify;'>Through EconometricsR, we aim to demystify econometric modeling and make it accessible to economists at all levels of expertise. Whether you're a student learning the basics or a seasoned researcher tackling complex economic problems, our package is designed to meet your needs.</p>
  <p style='text-align: justify;'>EconometricsR is an open-source project, licensed under the <b>GNU General Public License Version 3</b>. We encourage users to contribute to the package's development and report any issues or suggestions on our GitHub repository. Your input is crucial in improving the functionality and usability of EconometricsR.</p>")
              ),
              
               tags$h3(
                 div(
                   style = "display: flex; justify-content: center;",
                 HTML("<b>Your data, Your story, Your masterpiece</b>"))
               ),
                 tags$br(),
              div(
                style = "display: flex; justify-content: center;",
              img(src='logo.png', align = "center",
                  width="200", height = "200")
              )
              
      )
    )
  )
)