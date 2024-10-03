a = 10
my_num = 10
print(a)
print(my_num)

# function - set of instructions
# (a) user Defined Function (b) Library Function
#<name of funct>(<argument>)
getwd()

#Data Types: (a) Integer = 1,2,3 (b) Float = 1.2 
#(c) String = "abc" (d) Boolean = True/False


a = 10
b = 10.2
c = "Avinash"

# Data Structure (Data Container)

# Vector

my_vector = c(10122,10123,10124) #c = Combined

my_vector_name = c("Victor", "Sam", "Matt")

#Fetch data from vector

my_vector[1]
my_vector[1:3]
my_vector[c(1,3)]

#Change value in vector
my_vector_name[2] = "Avinash"
my_vector_name

sum(1,2)
sum(my_vector)
mean(my_vector)
log(my_vector) #Logarithm
sd(my_vector) #Standard Deviation
var(my_vector) #Variance

#Dataframe = 2D data Structure
#Collection of rows & columns (Vectors)
#Each Vector will be one column 

my_first_df = data.frame(my_vector, my_vector_name)
View(my_first_df)

my_first_df = data.frame("IDs" = my_vector,"Name" = my_vector_name)
View(my_first_df)

#Add column
my_first_df$City = c("Delhi", "London", "Brisbane")

#Add row
new_row = data.frame("IDs" = 10125, "Name" = "Aaamir", "City" = "Dubai" )
my_first_df = rbind(my_first_df, new_row)


my_first_df[1,1]
#row = 1 to 3; column = 1
my_first_df[1:3,1]

#row= 1 and 3; col = 1 and 3
my_first_df[c(1,3),c(1,3)]

my_first_df[-1,-1]

#Give names of columns
names(my_first_df)
max(my_first_df$IDs)

#Read csv or xsl file
DF1 = read.csv("file.csv")
View(DF1)
library(readxl)
DF2 = read_xlsx("file.xlsx")

 
#conditional statement (If/else)
3 > 2

if(3 > 2){
  print("I will say YESSSS")
}else{
  print("I will say NOOOO")
}

# & (and), |(or),

(3>2) & (2>3) 
# True & False -> False
#True & True -> True
#False & False -> False

(3>2) | (2>3)
#True | False -> True
#True | True -> True
#False | False -> False 

if((3>2) & (2>3)){
  print ("Yes")
}else{
  print("No")
}

if((3>2) | (2>3)){
  print ("Yes")
}else{
  print("No")
}

# Checking : >, <, ==, !=
3 == 3
3 != 3

#for loop 
#iterator
#list

1:10

for(my_it in (1:10)){
  print(my_it)
}
#my_it is the iterator
#1:10 is the list

#list can be a vector
#Finding a value in a list, using a for loop and
#a flag (Here check is the flag)
for(my_it in my_vector_name){
  if(my_it == "Avinash"){
    Check = TRUE
    break
  }else{
    Check = FALSE
  }
}
if(Check == TRUE){
  print("Avinash found")
}else{print("Avnash not found")
}

#Functions
#3 COMPONENTS - DECLARATION/DEFINITION/CALLING
#In R declaration not required (Only defnition and calling)
#<Name Of function> = function(<Arguments>){}

square_myFunction = function(num){
  output = num*num
  return(output)
}

square_myFunction(2)
result = square_myFunction(2)
#With using return instead of print we can save output as a function

name_find = function(query,myset){
  for(my_it in myset){
    if(my_it == query){
      Check = TRUE
      break
    }else{
      Check = FALSE
    }
  }
  if(Check == TRUE){
    print(paste(query ," found"))
  }else{print(paste(query, " not found"))
  }  
}

name_find("veloo", my_vector_name)
