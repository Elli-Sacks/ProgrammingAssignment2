## This pair of functions will create the inverse of a matrix 
## using the solve function, but will save time building the data 
## by storing intermediate values in a cache using the << operator



## Function takes a matrix as argument and returns a list 
## of function names that set and get the value of the
## matrix and its inverse in the cache.

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinversem <- function(inverse) m <<- inverse
      getinversem <- function() m
      list(set = set, get = get,
           setinversem = setinversem,
           getinversem = getinversem)
}     



## Function takes the returned list of makeCacheMatrix as argument,  
## and when the cache is empty it calculates the inverse of the matrix 
## using solve(). When the cache has a value, it reads from there.

cacheSolve <- function(x, ...) {
      m <- x$getinversem()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinversem(m)
      m
}