# python-program
6.armstrong number
num = int(input("Enter a number: "))

sum = 0

temp = num

while temp > 0:
  
 digit = temp % 10
  
 sum += digit ** 3
   
 temp =temp/10

if num == sum:
   
 print(num,"is an Armstrong number")

else:
   
 print(num,"is not an Armstrong number")

7.program for displayng the powers of 2.
n=int(input("enter a number:"))
for i in range (1,n+1):
 a=i**2
 print(i,'*','*','2','=',a)

8.hcf and lcm
x=int(input("enter a number"))


y=int(input("enter a number"))



a = x


b = y



while(b != 0 ):
    
    
 t = b
    
   
 b = a % b
    
   
 a = t

hcf = a


lcm = (x*y)/hcf



print("HCF of %d and %d is %d\n" %(x,y,hcf))


print("LCM of %d and %d is %d\n" %(x,y,lcm))


9.Transpose of two matrices
X = [[12,7],
    
     [ 4,5],
    
     [3 ,8]]
result = [[0,0,0],

         [0,0,0]]

for i in range(len(X)):
   
   for j in range(len(X[0])):
 
      result[j][i] = X[i][j]
for r in result:

   print(r)

10.addition of two matrices
X = [[12,7,3],

    [4 ,5,6],
    [7 ,8,9]]


Y = [[5,8,1],

    [6,7,3],

    [4,5,9]]


result = [[0,0,0],

         [0,0,0],

         [0,0,0]]



for i in range(len(X)):
 

   for j in range(len(X[0])):

       result[i][j] = X[i][j] + Y[i][j]


for r in result:

   print(r)

11.multiplication of 2 matrices:
X = [[12,7,3],

    [4 ,5,6],
 
   [7 ,8,9]]

Y = [[5,8,1,2],
   
     [6,7,3,0],
   
     [4,5,9,1]]


result = [[0,0,0,0],
     
          [0,0,0,0],
        
          [0,0,0,0]]


for i in range(len(X)):
  
   for j in range(len(Y[0])):
   
       for k in range(len(Y)):
          
             result[i][j] += X[i][k] * Y[k][j]


for r in result:
   
    print(r)
12.program to generate random number:
import random
print(random.randint(1,10))
