## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        # initialize 
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInversion <- function(inversion) i <<- inversion
        getInversion <- function() i
        list(set = set,
             get = get,
             setInversion = setInversion,
             getInversion = getInversion)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInversion()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        dat <- x$get()
        i <- solve(dat, ...)
        x$setInversion(i)
        i
}
