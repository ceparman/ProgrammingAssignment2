## Put comments here that give an overall description of what your
## functions do

#These functions create a function that create a matrix and stores the inverse



## Write a short comment describing this function

# create a list of functions to create a matrix and create the inverse
# 
# set set value of the matrix
# get - returns matrix
# setInverse sets the value of the matrix inverse
# getInverse get stored matix inverse

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(y) {
        x <<- y
        inv <<- NULL
      }
  
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function
# This function will either return the inverse stored in an object 
# created with makeCacheMatrix or if missing calculate the inverse,
# store the inverse and return the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()  
  #should catch the case where the matrix value has not been set
  if(is.null(data)){
  message("value for matix not set, set with $set()")
  return()
  } 
  
  inv <- solve(data, ...)
  x$setInverse(inv)
  inv



}
