## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  
       ## To create object of matrix object
       m <- NULL   ## Set m to NULL
       set <- function(y) {
              x <<- y
              m <<- NULL ## Set m to the NULL
                         ## Builtin functions of R
       }
       get <- function() x
       setmean <- function(mean) m <<- mean  ## Calculate mean
       getmean <- function() m  
       list(set = set, get = get,     ##  List is a created in a way similar to data frames with the function list
            setmean = setmean,
            getmean = getmean)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {  ##  ... Take an arbitrary number of inputs
        ## Inverse the matrix object
        ## Return a matrix that is the inverse of 'x'
       m <- x$getmean()  ## Set the value of mean
       if(!is.null(m)) {  ## If  m is not equal to NULL then return m
              message("getting cached data")
              return(m)
       }
       data <- x$get()  ## Get the value of mean
       m <- mean(data, ...)
       x$setmean(m)
       m
}
