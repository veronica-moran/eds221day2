# Creating Vectors

# Integers

# integers ()

# Sequence operator
1:5

# seq() function

seq(1,5)
seq(2004, 2024, by=2)

#c() - combine

c(1L, 2L,-1L)

# Sampling ransom numbers from a distribution
rpois(5, lambda= 10)
# Lambda - parameter that describes the distribution

# Doubles (i.e decimals)

double(5)

# c() (COME BACK TO THIS)

c(1, 2, -1)

# seq () function can produce doubles

seq(1, 5, length.out =4)

seq(1, 5, by=9)



# Random numbers 

rnorm(5, mean=5, sd=2)


#Coercion
1L / 2L


#Characters

# character()

character(5)

c("R", "Python", "SQL")

# What hapens if I drop the quotes

c(R, Python, SQL)

# Without quotes R interprets these as Characters


# What is the type of this vector

c("1", "2", "3")

c(True, Falce)


# Logical

c(TRUE, FALSE)
#This is useless


#Relational Operators

5> 1

5> 3:6

# Predicates ( any function that returns logic)

3:6 >2


all(3:6 >2)

5:10>7

any(5:10 > 7)


