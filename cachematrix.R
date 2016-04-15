#This function creates a special Matrix,
#and then Caches the inverse


makeCacheMatrix <- function(x = matrix()) {
        
        set<-function(y){
        #the matrix
        inv<<-NULL
        #Create Matrix
        inv<<-x
        #solve inverse
        }
        get<-function() x
        setinv<-function(invs) inv<<-inv
        getinv<-function()inv
        list(set=set,get=get,setinv=setinv,getinv=getinv)
        
}


#this function take the matrix created in makeCacheMatrix an
#then solves its inverse, If the inverse is already in the Cache
#it will pull that value to avoid the extra calculation

cacheSolve <- function(x=matrix()) {
        inv<-x$getmean()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data<-x$get()
        inv<-solve(data...)
        x$setinv(inv)
        inv

        
        ## Return a matrix that is the inverse of 'x'
}
