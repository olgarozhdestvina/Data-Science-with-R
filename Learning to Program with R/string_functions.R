greeting <- 'Hello'
greetings <- c('Hello', 'Hi', 'Hey', 'Welcome')
name <- 'World'

Q <- "What is a pirate's favorite programming language?"
A <- "Rrrrrr"

# slicing
substr(Q,1,5)
substr(Q,11,18)
nchar(Q)
substr(Q, nchar(Q)-8, nchar(Q))
substr(greetings, nchar(greetings)-1, nchar(greetings))

# merging
paste(greeting, name, sep=', ')
paste(greeting, ', ', name, '!', sep='')
paste(greetings, ', ', name, '!', sep='')
paste('x',1:10,sep='')

# search
grep('He', greetings) # index
greetings[grep('He', greetings)] # the words
grep('He', greetings, val=T)
grep('New', state.name, val=T)

# split and substitution
word_list <- strsplit(Q, ' ')
sub("pirate's", "statistician's", Q) # substitute 1
gsub(" ", '-', Q) # substitute all
