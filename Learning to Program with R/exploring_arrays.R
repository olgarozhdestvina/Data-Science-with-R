# simple array
x <- 1:9
ax <- array(x)
attributes(x)
attributes(ax)
ax <- array(x, dim=c(3,3))
attributes(ax)
attributes(ax)$dim[1] # number of rows
attributes(ax)$dim[2] # number of cols

# creating matrix
x <- 1:12
ax <- array(x, dim=c(3,2,2))
ax[1,2,2]
ax*ax
ax[1:2,2,]
ax[1:2,2,] <- 0
ax

# changing dimensions
x <- 1:12
ax <- array(x, dim=c(3,2,2))
dim(ax) <- c(12,1)
ax
