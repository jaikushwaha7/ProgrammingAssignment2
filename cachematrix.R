  ## Storing the matrix and it's inverse(if its there) in the cache.
  
  ## Write a short comment describing this function
  
  makeCacheMatrix <- function(x = matrix()) {
    inv_Matrix<-NULL
    set<-function(y)
    {
      x <<- y
      inv_Matrix<-NULL 
    }
   get<-function() x
   set_Inv<- function(solve)inv_Matrix<<-solve
   get_Inv<-function()inv_Matrix
   list(set=set , get=get, set_Inv=set_Inv, get_Inv=get_Inv)
  }
  
  
  
  ## if null values is there get the inverse of the matrix
  ## Getting the values from the cache for inverse matrix 
  ## and getting the message printed.
  
  cacheSolve <- function(x, ...) {
    inv_Matrix<- x$get_Inv()
    if(!is.null(inv_Matrix)){
      message("Getting cached inverse matrix")
      return(inv_Matrix)
    }
    data<-x$get()
    inv_Matrix<-solve(data,...)
    x$set_Inv(inv_Matrix)
    inv_Matrix
  }
