/* 
D'mariee Hanson 
Mobile Application Development 
Homework 1
Due: 1/21/2016
*/

// create class called user; Each user has an age and name identifier
class User 
{
    var name : String 
    var age : Int
    
    // Data required at creation
    init (name : String, age : Int)
    { 
        self.name = name
        self.age = age
    }
    
    // Prints the name and age of the user 
    func printDetails() -> String
    {
        return "My name is \(name) and I am \(age) years old"
    }
}


// Loop through the users in the array to print the details of all users
func printAllUsers(Arr : [User]) -> Void 
{
    for var i = 0; i < Arr.count; i += 1 
    {
        print(Arr[i].printDetails())
    }
}


// Prints the name and age of the oldest user in the array
func printOldestUser(Arr : [User]) -> Void 
{
    var oldest_index : Int = 0
    for var i = 1; i < Arr.count; i += 1 
    {
        if Arr[oldest_index].age < Arr[i].age
        {
            oldest_index = i
        }
    }
    print(Arr[oldest_index].printDetails())
}


// Prints the average age of the users in the array
func printAverageAge(Arr : [User]) -> Void 
{
    var age_average : Float = 0
    for var i = 0; i < Arr.count; i += 1 
    {
        age_average += Float(Arr[i].age)
    }
    age_average /= Float(Arr.count)
    print("The age average is \(age_average) years old")
}


// Prints the name and age of the youngest user in the array
func printYoungestUser(Arr : [User]) -> Void 
{
    var youngest_index : Int = 0
    for var i = 1; i < Arr.count; i += 1 
    {
        if Arr[youngest_index].age > Arr[i].age
        {
            youngest_index = i
        }
    }
    print(Arr[youngest_index].printDetails())
}


// create an array and then hard-code the addition of different users
var User_Array = [User]()
User_Array.append(User(name:"Dmariee", age:19))
User_Array.append(User(name:"Marlon", age:28))
User_Array.append(User(name:"Washington", age:45))
User_Array.append(User(name:"Teric", age:24))
User_Array.append(User(name:"Gordin", age:56))

// Calling functions to test functionality
print("\n ------------------ Print all users in array -----------------")
printAllUsers(User_Array)
print("\n ------------------ Print details of oldest user in array -----------------")
printOldestUser(User_Array)
print("\n ------------------ Print details of youngest user in array -----------------")
printYoungestUser(User_Array)
print("\n ------------------ Print average age of users in array -----------------")
printAverageAge(User_Array)

