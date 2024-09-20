import UIKit
import Foundation

//References :- https://www.programiz.com/swift-programming/library/string/reversed

//String Manipulation :- A String is a sequence of characters.


//Declaring a String
var userName = "Lokesh"
var userData = ""
var userRole = "Developer"
var sameData = "Lokesh"


// 1. To check if the string is empty or not empty
//if userName.isEmpty
//{
//    print("userName is empty")
//}
//else
//{
//    print("userName is not empty")
//}
//
//
//if userData.isEmpty
//{
//    print("userData is empty")
//}
//else
//{
//    print("userData is empty")
//}


// 2. To cout the length of the string
//print(userName.count)

// 3. Merging two string
//print(userName + " " + userRole)

// 4. To check 2 strings are equal or not
//if userName == sameData
//{
//    print("Same data")
//}
//else
//{
//    print("Different data")
//}


//------------------------------------ Need to check -------------------------

// 5. Greator than operations
//if userRole > userData
//{
//    print("userrole is big")
//}
//else
//{
//    print("userdata is big")
//}
//
//
// 6. Less than operations
//if userName < userRole
//{
//    print("userName is small")
//}
//else
//{
//    print("userRole is big")
//}
//------------------------------------------------------------------------------------

// 5. To apped 2 string
//userName.append(userRole)

// 6. To insert a character
//userName.insert("w", at: userName.endIndex)

// 7. To insert a string at end index
//userName.insert(contentsOf: "waran", at: userName.endIndex)

// 8.  To insert a string at the start of the index
//userName.insert(contentsOf: "Waran",at : userName.startIndex)

//9. To check both the element are same and return true/false (Boolean Value).
//var res = userName.elementsEqual(sameData)
//print(res)

//to remove the element from the index
var myName = "Lokeshwaran ios developer"
//var toRemove : Set<Character> = ["L","n"]
//a b c d e f    a b c e f
//0 1 2 3 4 5    0 1 2 3 4

// 10. To remove the element by using indexing
//var removeVal = myName.index(myName.startIndex, offsetBy: 3)
//myName.remove(at: removeVal)
//print(myName)
//myName.remove(at: myName.index(myName.startIndex, offsetBy: 4))
//print(myName)
//myName.remove(at: myName.index(myName.startIndex, offsetBy: 4))
//myName.remove(at: myName.index(myName.startIndex, offsetBy: 5))

// 11. To remove particular methods
//myName.removeAll(where: {toRemove.contains($0)})
//print(myName)


// 12. Replace the string by another string
//var newName  = myName.replacingOccurrences(of: "ios", with: "iOS")
//print(newName)


// 13. Triming characters
//var location = "I live in chennai "
//print(location.trimmingCharacters(in: .whitespaces))


// 14. To remove the first element from the string
//print(myName.dropFirst())


//15. To remove elements from string based on the index count
//print(myName.dropFirst(11))


//16. To remove the elements in the last index
//print(myName.dropLast())


//17. To remove the elements from the string from last uisng range.
//print(myName.dropLast(11))


//18. To convert it to lower case
//print(myName.lowercased())

//19. To convert it to upper case
//print(myName.uppercased())


//20. To check it has prefix
//print(myName.hasPrefix("Lokesh"))


//21. To check it has suffix
//print(myName.hasSuffix("developer"))


//22. To check if the string contains this give string
//print(myName.contains("ioss"))


//23. To join a array to an string
//var myValue = ["iOS", "developer"]
//print(myValue.joined(separator: " "))


//24. To split the string to an array
//print(myName.split(separator: " "))


//25. To reverse a string
//print(String(myName.reversed()))


//------------------------------ Higher order functions -------------------

//Accepts one or more functions as inputs and returns another function as result.

//1.Map - it works on all the elements and returns a new set of elements.
//2.Compact map - remove the nil values and adds optional values to it
//3.Flat map - combines 2 or more arrays into a single arrays
//4.Filter - filtering from a data set (using in search bar)
//5.Reduce - it is used to generate a single value from the collection.
//6.for Each - eg:- [1,2,3,4,5] we can print this as 1 is odd, 2 is even, 3 is odd, 4 is even, 5 is odd.
//7.Contains -  is used if the element meets the specific requirement or not.


//1. Map:- it works on all the elements and returns a new set of elements.

//eg 1 :- here we make it to the multiples of 2
//var num = [1,5,2,90,3]
//var newNum = num.map {$0 * 2}
//print(newNum)

//eg 2 :- converting from int to string
//var userDetails = [1,4,5,6]
//var latDetails = userDetails.map{String($0)}
//print(latDetails)

//eg 3:- Convert from lower to upper case
//var lowerText = ["lokesh","raj"]
//print(lowerText.map{$0.uppercased()})

//eg 4:- coverting from upper to lower case
//var upperText = ["LOKESH","RAJ"]
//print(upperText.map{$0.lowercased()})




//2. Compact map:- removes the nil values to it and adds the optional values to it.
//To print the int values
var dataSet = ["1","2","Lokesh"]
var newDataSet = dataSet.compactMap{Int($0)}
print(newDataSet)

//uisng map it will inlcude nil values. 
var newSetData = dataSet.map{Int($0)}
print(newSetData)



