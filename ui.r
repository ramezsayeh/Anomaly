library(shiny)
library(shinydashboard)
library(RMySQL)
library(shinyjs)
library(scatterplot3d)


ui <- dashboardPage(
  
  #assign('new_user',new_user,envir=.GlobalEnv)
      dashboardHeader(title = "DRUG ANOMALY",
                  uiOutput("ui2"), 
                  uiOutput("error2")),
  
  dashboardSidebar(
    sidebarMenuOutput("menu_A_1_A"),
   
    sidebarMenuOutput("menu_A"),
    sidebarMenuOutput("menu_B"),
    sidebarMenuOutput("menu_C"),
    sidebarMenuOutput("menu_D"),
    sidebarMenuOutput("menu_E"),
    sidebarMenuOutput("menu_F"),
    sidebarMenuOutput("menu_H")
   
   
   
    ),
  dashboardBody(
    shinyjs::useShinyjs(),
  
    fluidRow(
      infoBoxOutput("Box_MU_1"),
      infoBoxOutput("Box_MU_2"),
      infoBoxOutput("Box_MU_3"),
      br(),
      uiOutput("box_Plot"),
      uiOutput("box_info"),
      uiOutput("box_info_error"),
      uiOutput("Box_amend"),
      br()),
      fluidRow(
      column(width = 1),
      useShinyjs(),
      DT::dataTableOutput("Details_Table"),
      DT::dataTableOutput("AN_Table1"),
      column(width = 10)
    ),
    br(),
    uiOutput("Box_logo")
  )
)
  
   
  



  

