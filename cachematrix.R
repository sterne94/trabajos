## For this Programming Assignment, I am going to write two functions in order to calculate the inverse of a matrix. 


## In order to do this, I will write a function called makeCacheMatrix. 
#This first function will allow to create an objetc that can cache the inverse. In order to do this:


makeCacheMatrix <- function(x = matrix()) {
  z <- NULL
  
  #I set the value of the matrix:
  set <- function(y) {
    x <<- y
    z <<- NULL
  }
  
  #then, in order to get the value of the matrix:
  get <- function() x
  
  #To set the value of inverse matrix, I write:
  setmatrix <- function(solve) z <<- solve
  
  #Finally, I get the value of inverse matrix.
  getmatrix <- function() z
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## Now it's time to write the second function, called cacheSolve. 
#The aim of this function is to calculate the inverse matrix from the cache matrix that was calculated before. 
#In order to do this, I write: 

cacheSolve <- function(x, ...) {
  z <- x$getmatrix()
  if(!is.null(z)) {
    message("getting cached data")
    return(z)
  }
  data <- x$get()
  z <- solve(data, ...)
  x$setmatrix(z)
  z
}


