
import UIKit

// Swift Collections

// 1. Array

// 2. Set

// 3. Dictionary

// 4. Tuples



// ------------------------------------- Array ---------------------------------------

var studentName  = ["Vijay","Mukesh","Raj"]
var studentRoll : [Any] = ["1","2",3]
let numbers = [1, 2, 3]


//to count
//studentName.count



//add more than one index
//studentName.append(contentsOf: ["jiva","sidhu"])



//add single element
//studentName.append("Karthick")



//remove all elements
//studentName.removeAll()



//remove all elements and hold the size of the array
//studentName.removeAll(keepingCapacity: true)



//show the size
//studentName.capacity



//removes the element
//studentName.removeAll(where: { name in name.contains("a") })



//merge 2 arrays (error showing)
//studentName.append(contentsOf: a2)



//to remove at particular index
//studentName.remove(at: 0)



//remove first or last
//studentName.removeFirst()
//studentName.removeLast()



//remove from last elements by range
//studentName.removeLast(1)



//sort
//studentName.sort()



//sorting by assending or descending
//studentName.sort(by: <)



//studentName.first



//modify
//studentName[1] = "Hari"



//reverse
//studentName.reverse()



//to have the orginal array and store the reversed array
//let reversedArray = studentName.reversed()
//print(studentName)
//print(reversedArray)



//maximum & minimum value
//studentName.max()
//studentName.min()



//Shuffle
//studentName.shuffle()



//to show end index
//studentName.endIndex



//to show the first index
//studentName.startIndex



//print in a seperate
//studentName.forEach { name in

//    print(name)

//}


//hash value
//studentName.hashValue


//show last & first element in the array
//studentName.last
//studentName.first

//To check if the array is empty or not empty
//studentName.removeAll()
//if studentName.isEmpty
//{
//    print("Array is Empty")
//}
//else
//{
//    print("Array is Not empty")
//}

//to join
//studentName.joined()


//print(studentName)


//------------------------------------- DICTIONARY ----------------------------------

//to create a Dictionary
var  mobileNumber = ["Lokesh" : "9090909090", "Raj" : "8080808080", "Vijay" : "7878787878"]
var personalDetails = ["mail": "lok@gmail.com"]
    
//to count the no. of elements in the dictionary
//print(mobileNumber.count)
    
//to check the Dict in empty or not empty
//if mobileNumber.isEmpty
//{
//    print("Dict is empty")
//}
//else
//{
//    print("Dict is not empty")
//}
    
    
//to print the key
//print(mobileNumber.keys)
    
//to print the values
//print(mobileNumber.values)
    
//to remove all the elements
//mobileNumber.removeAll()

//to remove using the key
//mobileNumber.removeValue(forKey: "Lokesh")
//print(mobileNumber)
    
//to print the first dictionary
//print(mobileNumber.first!)


//to print the start & end index
//print(mobileNumber.startIndex)
//print(mobileNumber.endIndex)


//to get the hash value
//print(mobileNumber.hashValue)

//Sorting by assending or descending
//mobileNumber.sorted(by: >)
//mobileNumber.sorted(by: <)

//update the dictionary using key
//mobileNumber.updateValue("1111111111", forKey: "Lokesh")
//print(mobileNumber)


//Spliting the dictionary with the key & values and saving it in the seperate variables
//var userName = mobileNumber.keys
//var userNumber = mobileNumber.values
//print(userName)
//print(userNumber)


//to print the dictionary in the reverse order
//print(mobileNumber.reversed())



//-------------------------------------- SET -----------------------------

//NOTE :- In set we dont have indexing.

var userData: Set = ["Lokesh","Vijay","Raj"]
var userNumber: Set = ["Lokesh","Raj"]

//to count
//print(userData.count)

//to insert
//userData.insert("Mukesh")

//to remove
//userData.remove("Lokesh")

//to print the first element
//print(userData.first)


//to sort the set elements
//print(userData.sorted())

//searches the specified element in a set and returns a bool value
//userData.contains("Lokes")

//return a random elemnt
//print(userData.randomElement())

//union (set merging)
//print(userData.union(userNumber))

//intersection to find out the common element
//print(userData.intersection(userNumber))

//to check if the give set empty or not
//userData.isEmpty

//subracting (to show the differecne elements in the set)
//print(userData.subtracting(userNumber))

//symentric difference (does not print the uinque elements)
//print(userData.symmetricDifference(userNumber))

//to check if b is a subset of a
//print(userNumber.isSubset(of: userData))

//to remove all the elements
//userData.removeAll()

//Bool value if both the values are differnt
//print(userNumber.isDisjoint(with: dump))



//---------------------------------- Tuples ----------------------------------

//Note:- Tuples can have any type of data (Mixture of differnt type of data)
//       We can also access the value of the tuples by NAMED TUPLES

var infoData = ("Lokesh",123,0.55)
var infoDatas = (name: "Lokesh",intVal: 123,floatVal : 0.45, "443")

//to get the value of the element using the index
//infoData.0

//modify the element
//infoData.1 = 909

//to access the values of the tuples uisng the NAMED TUPLES (like dictionary)
//print(infoData.floatVal)









