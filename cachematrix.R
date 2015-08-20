## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
    mt <- NULL
    
    setmatrix <- function(y){
        x <<- y
        mt <<- NULL
    }
    
    getmatrix <- function() x
    
    setsolvematrix <- function(solve) mt <<- solve
    
    getsolvematrix <- function() mt
    
    list(setmatrix = setmatrix, getmatrix = getmatrix, setsolvematrix = setsolvematrix, getsolvematrix = getsolvematrix)    
}


## Write a short comment describing this function

cacheSolve <- function(x,...){
    mt <- x$getsolvematrix()
    if(!is.null(mt)) {
        message("getting cached data")
        return(mt)
    }
    
    data <- x$getmatrix()
    
    mt <- solve(data, ...)
    
    x$setsolvematrix(mt)
    
    mt
}
