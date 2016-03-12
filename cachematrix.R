## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        q <- NULL
        
	setMatrix <- function(y)
        {  x <<- y }
       
        getMatrix <- function()
        { x }
    
        inverseMatrix <- function(solve)
        { q <<- solve }

        getInverse <- function()
	{ q }        

 	list(setMatrix =setMatrix,getMatrix=getMatrix,inverseMatrix=inverseMatrix,getInverse=getInverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)) 
           {
                message("getting cached data")
                return(inv)
           }
      
        data <- x$getMatrix()
        inv  <- solve(data)
        x$inverseMatrix(inv)
        inv

}
