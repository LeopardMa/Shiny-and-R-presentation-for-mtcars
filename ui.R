library(shiny)

# load data set
 data("mtcars")


shinyUI(pageWithSidebar(
    # header panel
    headerPanel("Linear regretion model for mtcars data",
                windowTitle = "Linear regretion on Transmission of mtcars data"
                ),
    
    # sidebar panel
    sidebarPanel(
        h3("Data Set:"),
        h4("mtcars"),
        hr(),
        checkboxGroupInput("checkbox1", "Variables",
                             c(names(mtcars)[-1])
                             ),
        submitButton('Submit'),
        hr(),
        h4("Help"),
        helpText("This is a shiny application used for the regression model",
                 "and exploratory data analysis on mtcars data set,",
                 "which is comprises fuel consumption and 10 aspects",
                 "of automobile design and performance for 32 automobiles.",
                 "Different variables can be selected to be predictors for ",
                 "the outcome, fuel consumption.",
                 "Select the variables which you want to use to build your model",
                 "and submit it to the application.",
                 "The application will give you the plots of performance of this model",
                 "and the summary.",
                 "Among other things, all models you have tried and their performance",
                 "are recorded as history in the website.",
                 "It can help you to compare different models.")

    ),
    
    # main panel
    mainPanel(
        h3("Linear Model"),
        h4("Variables slected:"),
        verbatimTextOutput("oid1"),
        hr(),
        h4("Modeling Imformation:"),
        tabsetPanel(
            tabPanel("Plots", 
                     plotOutput('fitPlot1'),
                     plotOutput('fitPlot2'),
                     plotOutput('fitPlot3'),
                     plotOutput('fitPlot4')
                     ),
            tabPanel("Summary", verbatimTextOutput("summary")),
            tabPanel("History", verbatimTextOutput("history"))
        )
        )
))