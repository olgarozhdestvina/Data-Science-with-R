## Matrix operations
A <- matrix(c(30,32,31,27,34,30,29,27,29,34,45,54,55,43,56), ncol=3)
colnames(A) <- c('Barcelona', 'Madrid', 'Catellon')
rownames(A) <- paste('3/',12:16,sep='')

B <- matrix(c(20,23,23,24,21,25,26,27,26,30,34,36,34,34,23), ncol=3)
colnames(B) <- c('Voronezh', 'Moscow', 'Saint Petersburg')
rownames(B) <- paste('3/',12:16,sep='')

# combine matrices and add one more row
new_data <- matrix(c(37,70,50,77,63, 91), nrow=1)
rownames(new_data) <- "3/17"
colnames(new_data) <- c(colnames(A), colnames(B))
combined_matrix <- rbind(cbind(A,B), new_data)

old_data <- cbind(A,B)
full_data <- rbind(old_data, new_data)
