library(shiny)

# load data set
data("mtcars")

shinyServer(
    function(input,output){
        historyrecord <<- paste("These are the models you have tried:")
        
        output$oid1 = renderPrint({input$checkbox1})
        
        output$fitPlot1 = renderPlot({
            if(!is.null(input$checkbox1)){
                
                subdata <- subset(mtcars,select = input$checkbox1)
                subdata <- data.frame(subdata,mpg=mtcars$mpg)
                fit <<- lm(mpg ~ .-1 , data = subdata)
                
                r <- c(round(summary(fit)$r.squared,4),round(summary(fit)$adj.r.squared,4))
                temprecord <- paste("mpg ~",paste(input$checkbox1,collapse="+"),",","squared r:", r[1],",","adjusted r square:", r[2])
                historyrecord <<- paste(historyrecord,temprecord,sep="\n")
                
                plot(fit,1)
            }
        })
        output$fitPlot2 = renderPlot({
            if(!is.null(input$checkbox1)){
                plot(fit,2)
            }
        })
        output$fitPlot3 = renderPlot({
            if(!is.null(input$checkbox1)){
                plot(fit,3)
            }
        })
        output$fitPlot4 = renderPlot({
            if(!is.null(input$checkbox1)){
                plot(fit,4)
            }
        })
        output$summary = renderPrint(
            if(!is.null(input$checkbox1)){
                summary(fit)
            })
        output$history = renderPrint(
            if(!is.null(input$checkbox1)){
                noquote(strsplit(historyrecord, "\n")[[1]])
            })
    }
)