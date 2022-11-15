## This function is used to set the value of the matrix and calculate its inverse.
## It will then put it into cache so the same computations are not done multiple times. 


makeCacheMatrix <- function(x = matrix()) {
	s <- NULL
	set <- function(y){
		x <<- y
		s<<-NULL
}
get <- function()x
setinverse <- function(inverse) s <<- inverse
getinverse <- function() s
list(set=set, get=get, 
	setinverse = setinverse, 
	getinverse = getinverse)


## This function calculates the inverse but checks to see if there is anything in cache. 

cacheSolve <- function(x, ...) {
	s <- x$getinverse()
	if(!is.null(s)) {
	message("getting cached data")
	return(s)
}
data <- x$get()
s <- solve(data, ...)
x$setinverse(s)
s
}

	
