cleanEnv <- function(){
  # Clean workspace
  rm(list=ls(.GlobalEnv), envir=.GlobalEnv)
  # Clear plots
  if(!is.null(dev.list()))
    dev.off();
  # Clear console
  cat("\014");
  # Set working directory
  setwd("C:/Users/dromaf/Documents/coding/R");
  return(getwd());
}

# Clean workspace
cleanwkspc <- function(){
  rm(list=ls(.GlobalEnv), envir=.GlobalEnv)
}