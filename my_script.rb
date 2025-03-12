
# 1. Variables in ruby
# Basic Variable Usage
name = "Likhitha"
age = 21
height = 5.5
puts "My name is #{name}, I am #{age} years old, and my height is #{height} feet."
# Real world use case
acc_balance = 1000.50
withdraw_amount = 200
remaining_balance = acc_balance - withdraw_amount
puts "Initial Balance: $#{acc_balance}"
puts "Withdrawn: $#{withdraw_amount}"
puts "Remaining Balance: $#{remaining_balance}"

#2. Constants in ruby
#Using Constants
PI = 3.14
GRAVITY = 9.8
puts "The value of PI is #{PI} and gravity on Earth is #{GRAVITY} m/s^2."
#Real-World use Case(Tax Rate Calculation)
TAX_RATE = 0.05
product_price = 100
tax_amount = product_price * TAX_RATE
puts "Price before tax: $#{product_price}"
puts "Tax amount: $#{tax_amount}"
puts "Final price: $#{product_price + tax_amount}"

#3. DataTypes in Ruby
puts 10.class
puts 3.14.class
puts "Hello".class
puts true.class
puts nil.class
puts :ruby.class
puts [1, 2, 3].class
hash = {name: "Rudra"}
puts hash.class
#Real World Usecase(Storing User Info)
user_info = {
name: "Likhitha",
age: 21,
height: 5.5,
is_student: true
}
puts "User Details:"
puts "Name: #{user_info[:name]}"
puts "Age: #{user_info[:age]}"
puts "Height: #{user_info[:height]} feet"
puts "Is Student: #{user_info[:is_student]}"

#4. Strings in Ruby
first_name = "Likhitha"
last_name = "Gogisetti"
#Concatination
full_name = first_name + " " + last_name
puts "Full Name: #{full_name}"
#String Length
puts "Length of Name: #{full_name.length}"
#Uppercase & Lowercase
puts "Uppercase: #{full_name.upcase}"
puts "Lowercase: #{full_name.downcase}"
#Accessing characters
puts "First Character: #{full_name[0]}"
puts "Last Character: #{full_name[-1]}"
#Real world usecase(Generating Student Id)(21471A1233)
join_year = 21
college_code = 47
department_code = "1A"
student_no = 1233
student_id = join_year.to_s + college_code.to_s + department_code + student_no.to_s
puts "Generated Student ID : #{student_id}"

#5.Numbers in ruby
#Basic number operations
a = 10
b = 3
puts "Addition: #{a + b}"
puts "Subtraction: #{a - b}"
puts "Mutiplication: #{a * b}"
puts "Division: #{a / b}"
puts "Float Division: #{a.to_f / b}"
puts "Modulo (Remainder): #{a % b}"
puts "Exponentiation: #{a ** b}"
# Real world usecase(Currency Conversation)
usd_to_inr = 87.20
usd = 50
inr = usd * usd_to_inr
puts "Converted Amount: \u20b9#{inr}"

#6.Taking User input in ruby
puts "Enter your name:"
name = gets.chomp
puts "Hello, #{name}!"
#UseCase(Simple calculator)
puts "Enter First Number:"
num1 = gets.chomp.to_i
puts "Enter Second Number:"
num2 = gets.chomp.to_i
sum = num1 + num2
puts "Sum: #{sum}"

#7. Arrays in ruby
fruits = ["Apple", "Banana", "Mango"]
puts "First fruit: #{fruits[0]}"
puts "All fruits: #{fruits.join(', ')}"
puts "Total fruits: #{fruits.length}"
fruits.push("Orange")
puts "After adding orange: #{fruits}"
#Usecase(Student Marks)
marks = [85, 94, 97]
puts "Average Marks: #{marks.sum / marks.length}"

#8. 2D Arrays(Nested Arrays) in ruby
#Matrix Representation
matrix = [
[1, 2, 3],
[4, 5, 6],
[7, 8, 9]
]
puts "Element at  (1,1): #{matrix[1][1]}"
#Usecase(Seating Arrangement)
seats = [
["A1", "A2", "A3"],
["B1", "B2", "B3"],
["C1", "C2", "C3"]
]
puts "Second row seats: #{seats[1].join(', ')}"

#9. Conditional Statements in ruby
#1. if, elsif, else
age = 18
if age < 18
puts "You are a minor."
elsif age == 18
puts "You just became an adult!"
else
puts "You are an adult."
end
#2. Ternary Operator(? :)
age = 20
message = age >= 18 ? "Adult" : Minor
puts message
#3. Unless Statement
temperature = 30
unless temperature > 35
puts "It's not too hot."
end
# Usecase(checking Login status)
is_logged_in = false
puts is_logged_in ? "Welcome back!" : "Please log in."

#10. case(Switch statement)
grade = "A"
case grade
when "A"
puts "Excellent!"
when "B"
puts "Great Job!"
when "C"
puts "Needs improvement."
else
puts "Invalid Grade."
end
#usecase(Menu Selection)
puts "Enter a number (1-3):"
choice = gets.chomp.to_i
case choice
when 1 
puts "You selected Coffee."
when 2
puts "You selected Tea."
when 3
puts "You selected Juice."
else
puts "Invalid choice."
end

#11. Loops in ruby
#1. While Loop
i = 1
while i <= 5
puts "Number: #{i}"
i += 1
end
#2. until Loop
i = 1
until i > 5
puts "Number: #{i}"
i += 1
end
#3. For Loop
for i in 1..5
puts "Number: #{i}"
end
#4. times Loop
3.times do
puts "Hello!"
end
#5. each Loop (Iterating over Arrays)
fruits = ["Apple", "Banana", "Mango"]
fruits.each do |fruit|
puts "Fruit: #{fruit}"
end

#12. Exception Handling in Ruby
#1.begin-rescue Block(Handling Division By zero)
begin
result = 10 / 0
rescue ZeroDivisionError
puts "Error: Division by zero is not allowed."
end
#2.begin-rescue-else-ensure(complete Exception Handling)
begin
puts "Enter a number:"
num = gets.chomp.to_i
result = 100 / num
puts "Rsult: #{result}"
rescue ZeroDivisionError
puts "Error: Cannot divide by zero!"
else
puts "Division Successful!"
ensure
puts "Execution Complete."
end

#13. Classes & Objects in Ruby
#Creating a Class and an object
class Car
def initialize(brand)
@brand = brand
end
def show_brand
puts "Car brand: #{@brand}"
end
end
my_car = Car.new("Tesla")
my_car.show_brand

#14. Constructore in ruby(initialize method)
# Using initialize to set properties
class Student
def initialize(name, age)
@name = name
@age = age
end
def show_details
puts "Student: #{@name}, Age: #{@age}"
end 
end
student1 = Student.new("Likhitha", 22)
student1.show_details

#15. Getters and Setters in ruby
# Getters --> Retrives Values
# Setters --> Update Values
# Using attr_accessor
class Person
attr_accessor :name
def initialize(name)
@name = name
end
end
p = Person.new("Alice")
puts p.name
p.name = "Bob"
puts p.name

#16. Inheritance in ruby 
#Inheriting from parent class
class Animal
def speak
puts "Some sound.."
end
end
class Dog < Animal
def speak
puts "Bark!"
end
end
dog = Dog.new
dog.speak
