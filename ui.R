ui <- shinydashboard::dashboardPage(skin = "purple",
  shinydashboard::dashboardHeader(title = "ECONOMETRICS"), # dashboard Head


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
                HTML("<b> Introduction to ECONOMETRICS </b>")
              ),
              
              tags$p(
                HTML("<p  style='text-align: justify;'>Welcome to the realm of data visualization, a critical facet of agricultural research where comprehending and presenting data is as challenging as the fieldwork itself. Our mission is to assist researchers in effectively visualizing and comprehending the potential inherent in their data.</p>
<p  style='text-align: justify;'>grapesDraw serves as an gateway to the future of data exploration in agriculture. Through 14 designed tools, we harness the power of grapesDraw to transform raw numbers into captivating narratives. Our aim is to be your reliable ally on this stimulating journey, facilitating the translation of data into clear, visually compelling stories.</p>
<p  style='text-align: justify;'>Through grapesDraw, we intend to introduce you to a visual landscape of charts, plots, and graphs that transcend mere information, seamlessly weaving data narratives into aesthetically pleasing representations. We have tried to merge simplicity with sophistication, ensuring that the genuine story behind your data effortlessly shines through.</p>
<p  style='text-align: justify;'>grapesDraw operates as an open-source platform, governed by the <b>GNU Public License Version 3</b>. For any concerns or issues encountered, we encourage users to kindly raise them on our GitHub repository. Your feedback is invaluable in enhancing and ensuring a more seamless and effective data visualization experience. </p>
                   ")
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