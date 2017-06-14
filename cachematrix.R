## Put comments here that give an overall description of what your
## functions do
##Assumption: All matrices are invertible
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


## The function uses the inbuilt function 'solve' of R and helps us getting the inverse from cached values
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invertedM <- x$getinv()
    if(!is.null(invertedM)) {
        message("getting cached data") ##if the inverse exists already it gets the value from cached data here
        return(invertedM)
    }
    data <- x$get()
    inv <- solve(data) #else it uses the solve function to calculate the value
    x$setinv(inv) # here it stores the inverted matrix value
    invertedM
       
}
