## Put comments here that give an overall description of what your functions do
## Get the inverse of matrix and cache it. 
## Write a short comment describing this function
## make a "special Matrix" by makeCacheMatrix. Well,It's actully a list.
makeCacheMatrix <- function(x = matrix()) { 
  m <- NULL
set <- function(y) {
  x <<- y
  m <<- NULL
}
get <- function() x
setinverse <- function(solve) m <<- solve
getinverse <- function() m
list(set = set,
     get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}



## Write a short comment describing this function
## Use the cacheSolve function to
## calculate the inverse of the matrix of makeCacheMatrix or Get the cached data(if it exist.)
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
