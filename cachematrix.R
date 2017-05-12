## The functions together caches the inverse of a matrix
##to reduce calculation times for matrix inverse calculations
##The functions store the value of the inverse 
##in order for it to be looked up in the cache instead 
##of recalculating it

## This function creates a special "matrix" 
##that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
              inverse <- NULL
              set <- function(y){
               
              x <<- y	
              inverse <<- NULL
              }
      
  get <- function() x
  setInverse <- function(MatrixSolution) inv <<- MatrixSolution        
  getInverse <- function() inverse		
  list(set = set, get = get, 
  setInverse = setInverse, getInverse =       
  getInverse)
}



## This function computes the inverse of the special 
##"matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated 
##(and the matrix has not changed), then cacheSolve 
##should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if(!is.null(inverse)){
      message("getting cached data")
      return(inverse)
      }
    
}
