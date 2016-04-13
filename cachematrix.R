#This function creates a special Matrix,
#and then Caches the inverse


makeCacheMatrix <- function(x = matrix()) {
        #the matrix
        inv<<-NULL
        #Create Matrix
        inv<<-solve(x)
        #solve inverse
        
}


#this function take the matrix created in makeCacheMatrix an
#then solves its inverse, If the inverse is already in the Cache
#it will pull that value to avoid the extra calculation

cacheSolve <- function(x, ...) {
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        inv<-solve(x)
        return(inv)

        
        ## Return a matrix that is the inverse of 'x'
}
