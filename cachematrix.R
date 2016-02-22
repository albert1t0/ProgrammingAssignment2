## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function generate a object for use with
## cacheSolve, requieres a square matrix.

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) i <<- solve
    getsolve <- function() i
    list( set = set, get = get,
          setsolve = setsolve,
         getsolve= getsolve)
}


## Write a short comment describing this function this function calculates inverse matrix of
## a matrix object created with makeCacheMatrix, if the inverse of thwe object is cached then
## returnd it else it calculates the inverse.

cacheSolve <- function(x , ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getsolve()
    if(!is.null(i)) {
         message("Getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setsolve(i)
    i
}
