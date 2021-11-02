# create a list
nums <- c(1,2,3,4,5)
strings <- matrix(c('a','b','c', 'd'), ncol=2)
boos <- c(T,T,F,F,T,F)
x <- list(nums,strings,boos)
x

# find subset within subset and change it
x[2]
x[[2]][1]
x[[2]][1,2]
x[[2]][2,1] <- 'HELLO!'
x[2]

# changing names of subsets
x <- list('NUMS'=nums,'STRINGS'=strings,'BOOLEANS'=boos)
x
x$NUMS
x$NUMS[3:5]
attributes(x)
names(x)
attach(x)
NUMS
STRINGS
detach(x)
unlist(x)

# add new component to the list
new_x <- c(x, "DATES"=as.character(Sys.Date()))
new_x
