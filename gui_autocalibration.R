SS = function(ParametersFile){
 
return(ParametersFile)
}
 
OutFile= choose.dir ()

ParametersFile <- guiv(SS,argFilename = list(ParametersFile = NULL))
iteration = 1
Bounds = ParametersBound(ParametersFile) 
initial=c(as.vector(Bounds["Initial"]))$Initial
lower= c(as.vector(Bounds["Minimum"]))$Minimum
upper = c(as.vector(Bounds["Maximum"]))$Maximum
 
fit <- guiv(OptimizationFunction,argFilename = list(SWMMOptFile = NULL, swmm = NULL,wkRain  =NULL,wkObs = NULL),argList = list(StatParameters = c("PercentBias2","linearCorrelationTimesMinus1_2","NashsutcliffeTimesMinus1_2","MeanSquaredError_2","IndexAgreementTimesMinus1_2","MeanError_2"),initial = c("initial"), lower = c("lower"),upper = c("upper"),Timeseries = c("Timeseries"),OutFile = c("OutFile")), argText  = list(c(SWMMOptFile = "load SWMM Optimization File", swmm= "load SWMM executable file",StatParameters = "Select the objective function",initial = "initial boundary",lower = "lower boundary",upper  ="upper boundary",summary = "Print summary",iteration  = "iteration")))
#----------------------------------------------------------------------------
#----------------------------------------------------------------------------

#write.xlsx(summaryRow[3:5],"summaryRow.xlsx",sheetName = paste("iteration",iteration),append = TRUE)
