cacheSolve <- function(x, ...) {
  # Check if the inverse is already cached
  inv <- x$getInverse()
  
  # If the inverse is cached, return it
  if (!is.null(inv)) {
    message("Getting cached data")
    return(inv)
  }
  
  # If the inverse is not cached, compute it
  mat <- x$get()
  inv <- solve(mat, ...)  # Compute the inverse
  x$setInverse(inv)  # Cache the inverse
  inv
}
