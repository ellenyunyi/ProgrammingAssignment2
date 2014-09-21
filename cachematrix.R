##This function creates a matrix objec that cache its inverse


makeCacheMatrix <- function (x = matrix()){
  ##set the internal variable to null
   inverseMatrix <<-NULL
  
  # set the value of the matirx
  set <- function(y){ 
    x<<-y
    inverseMatrix<<-NULL
    }

  #get the value of the matrix
  get<- function() x
  

  #set the inverse of the matrix
  setinverse <-function(inverse){
    inverseMatrix<<- inverse
  }
  #get the inverse of the matrix
  getinverse<- function() inverseMatirx

   
  list(set=set,get=get,
	setinvser=setinverse, getinverse = getinverse)
}


##This function will check the result of matrix inversion in the cache. 
##If the inverse has already been calculated (and the matrix has not changed), 
##then the cachesolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...){
	##get the inverse from cache
	inverseMatrix <- x$getinverse()
	
	##if the value is not null, this will return the cache value. 
	if (!is.null(inverseMatirx)){
	message("getting cached data")
	return(inverseMatrix)
}


##if the value is null, this will calculate the inverse and stroe it in cache 
data <- x$get()
inverseMatrix <- solve(data, ...)
x$setinverse(inverseMatrix)

inverseMatrix
}
