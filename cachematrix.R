## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function makes a matrix of cached inverted values

makeCacheMatrix <- function(x = matrix()) {
 invertedM <- NULL
   set <- function(invert) {
   x <<- invert
   invertedM <<- NULL
    }
    get <- function() x
    
        setinv <- function(inverse) invertedM <<- inverse
    getinv <- function() invertedM
        list(set=set,
             get=get, 
             setinv=setinv, 
             getinv=getinv)
}


## Write a short comment describing this function
## The function uses the inbuilt function 'solve' of R and helps us getting the inverse from cached values
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invertedM <- x$getinv()
    if(!is.null(invertedM)) {
        message("getting cached data")
        return(invertedM)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinv(inv)
    invertedM
       
}
