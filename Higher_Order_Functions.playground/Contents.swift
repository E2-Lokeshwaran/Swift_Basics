import UIKit

// ------------------ To get the Type of the element ----------------------
let tup : [Any] = ["Lokesh", 23, 10.12]

for element in tup
{
    print("element is :\(element)",type(of: element))
}

//------------------------------ Higher order functions -------------------

//Reference :- https://medium.com/@nareshkukkala/higher-order-functions-c141893a7ec1

//HOF :- Accepts one or more functions as inputs and returns another function as result.

//1.Map - it works on all the elements and returns a new set of elements.
//2.Compact map - remove the nil values and adds optional values to it
//3.Flat map - combines 2 or more arrays into a single arrays
//4.Filter - filtering from a data set (using in search bar)
//5.Reduce - it is used to generate a single value from the collection.
//6.for Each - eg:- [1,2,3,4,5] we can print this as 1 is odd, 2 is even, 3 is odd, 4 is even, 5 is odd.
//7.Contains -  is used if the element meets the specific requirement or not.


//NOTE:- HOF are functions that can take other functions as parameter or retrun functions as their result.


//------------------------------------- 1.MAP --------------------------------

//1. Map:- it works on all the elements and returns a new set of elements.

//eg 1 :- here we make the actual array by *2 and creating a new array.
var num = [1,5,2,90,3]
var newNum = num.map {$0 * 2}
print(newNum)

//eg 2 :- converting from int to string
var userDetails = [1,4,5,6]
var latDetails = userDetails.map{String($0)}
print(latDetails)

//eg 3:- Convert from lower to upper case
var lowerText = ["lokesh","raj"]
print(lowerText.map{$0.uppercased()})

//eg 4:- coverting from upper to lower case
var upperText = ["LOKESH","RAJ"]
print(upperText.map{$0.lowercased()})






//2. Compact map:- removes the nil values to it and adds the optional values to it.
//To print the int values
var dataSet = ["1","2","Lokesh"]
var newDataSet = dataSet.compactMap{Int($0)}
print(newDataSet)

//uisng map it will inlcude nil values.
var newSetData = dataSet.map{Int($0)}
print(newSetData)


//-------------------------------- 2.FILTER ----------------------------

//The filter function creates a new array with the elements that satisfy a given condition.

let number = [1,2,3,4,5,6,7,8,9,10]
let oddNum = number.filter{$0 % 2 != 0}
print(oddNum)


//----------------------------- 3.REDUCE ----------------------------------

//Combines all elements in a collection into a single value using a closure.

let numbers = [1,2,3,4,5,6,7,8,9,10]
let total = numbers.reduce(0,{$0 + $1})
print("Reduce value:- ",total)


//----------------------------- 4.SORTED ----------------------------------

//The sorted function sorts the elements of an array using a given sorting closure.

let numValues = [5,1,2,0,45,4]
//assending order
let assending = numValues.sorted{$0 < $1}
//descending order
let descending = numValues.sorted{$0 > $1}


//----------------------------- 5.COMPACT MAP ----------------------------------

//The compactMap function transforms the elements of an array using a given closure and removes any resulting nil values.


var values = ["1","2","abc"]
print(values.compactMap{Int($0)})


//---------------------------------- 6.FLAT MAP ----------------------------------

//The flatMap() function is similar to map() except that it flattens the resulting array

var nums = [[7,2],[4,12],[9,5],[10,3]]
var result = nums.flatMap{$0}.sorted{$0 < $1}
print(result)


//-------------------------- 6.CHANGING MULTIPLE HIGHER-ORDER FUCNTIONS ---------------

var numberData = [1,2,3,4,5,6]
var value = numberData.filter{$0 % 2 != 0}.map{$0 * 3}.reduce(0, +)
print(value)


//1,2,3,4,5,6
//1,3,5
//3,9,15
//27

//------------------------------- 7. CONTAINS -------------------------

var empNames = ["Lokesh","Raj","Sam"]
if empNames.contains("Lokesh")
{
    print("Permission is granted")
}
else
{
    print("Permission is denied")
}


//----------------------------- If let & Gaurd let -------------------------------------

//1. If let:- non-nil case is valid
//2. Gaurd let:- nil case represent some error

//------------ if let -------------
var name: String? = "Lokesh"
print(name)
if let unwrappedName = name
{
    print("Hello, \(unwrappedName)")
}
else
{
    print("Name is nil")
}


//------------- Gaurd let -------------

let testNumber: String? = "12345"
print(testNumber)
test()


func test()
{
    guard let number = testNumber else
    {
        print("The string doesn't contain a valid number.")
        return
    }
    print("The number is \(number)")
}



