## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Make a matrix. Variable m for saving the inverse of x.

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) m <<- inverse
	getinverse <- function() m
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
# Input x must be the result of function makeCacheMatrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if (!is.null(m)) {
        	message("Getting cached data.")
        	return (m)
        }
        mtrx <- x$get() #constructor?
        m <- solve(mtrx)
        x$setinverse(m)
        m
}
