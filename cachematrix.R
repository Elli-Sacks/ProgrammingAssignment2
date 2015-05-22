## This pair of functions will create the inverse of a matrix 
## using the solve function.  To save time building the data, 
## we will store intermediate values in a cache (an environment 
## outside of the function loop) by using the << operator, and 
## reading from the cache if there is a value there.

## Function takes a matrix as argument and returns a list 
## of function names that set and get the value of the
## matrix and its inverse in the cache.

makeCacheMatrix <- function(x = matrix()) {
     
}


## Function takes the returned list of makeCacheMatrix as argument,  
## and when the cache is empty it calculates the inverse of the matrix 
## using solve(). When the cache has a value, it reads from there.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
