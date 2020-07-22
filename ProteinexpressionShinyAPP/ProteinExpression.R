#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(DBI)
library(RMySQL)
library(dplyr)
library(ggplot2)

mydb = dbConnect(MySQL(),
                 user='root',
                 password='XXXX',
                 dbname='ProteinDB',
                 port=3306)
#dbListTables(mydb)

Dataset1 <- dbGetQuery(mydb, "SELECT DATASET1.Protein, DATASET1.Expression, DATASET1.SampleID, Group1.groupname FROM ProteinDB.Group1, ProteinDB.DATASET1
WHERE ProteinDB.DATASET1.SampleID = ProteinDB.Group1.SampleID") 
Dataset2 <- dbGetQuery(mydb, "SELECT DATASET2.Protein, DATASET2.Expression, DATASET2.SampleID, Group1.groupname FROM ProteinDB.Group1, ProteinDB.DATASET2
WHERE ProteinDB.DATASET2.SampleID = ProteinDB.Group1.SampleID")


# Define UI for application 
ui <- fluidPage(
    titlePanel("Protein Expression"),
    sidebarLayout(
        sidebarPanel(
            selectInput("Dataset","Please select a Dataset:",choices = c("Dataset1", "Dataset2")),
            uiOutput("Protein")
            ),

        # Show the barplot of the Protein Expression
    mainPanel(
           plotOutput("barplot")
           )
    )
)
        
    


# Define server logic required to make the UI
server <- function(output, input)({
    var <- reactive({
        switch(input$Dataset,
               "Dataset1" = unique(Dataset1$Protein),
               "Dataset2" = unique(Dataset2$Protein)
               )
    })
    
        
    output$Protein <- renderUI({
selectInput("Protein", "Please select a Protein", choices = var())
    })
    
    output$barplot <- renderPlot({
        attach(get(input$Dataset))
        if (input$Dataset == "Dataset1") {
            filtered_data <- Dataset1 %>% filter(Protein == input$Protein)
        } else {
            filtered_data <- Dataset2 %>% filter(Protein == input$Protein)
        }
        p <- ggplot(filtered_data, aes(fill=groupname,y=filtered_data$Expression, x=filtered_data$SampleID)) + geom_bar(stat = "identity") + geom_text(aes(label=Expression), position=position_dodge(width=0.9), vjust=-0.25)
        p + labs(title = "Protein Expression Level", x = "SampleID", y = "Expression") + theme(plot.title = element_text(size = 30), axis.title=element_text(size=14))
    })

})


    

# Run the application 
shinyApp(ui = ui, server = server)

