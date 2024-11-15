makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Initialize the inverse to NULL

  # Function to set the value of the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL  # Reset the inverse if the matrix changes
  }

  # Function to get the value of the matrix
  get <- function() x

  # Function to set the value of the inverse
  setInverse <- function(inverse) inv <<- inverse

  # Function to get the value of the inverse
  getInverse <- function() inv

  # Return a list of the functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

