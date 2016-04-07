//
//  main.swift
//  Calculator
//
//  Created by Annie Lace on 4/6/16.
//  Copyright © 2016 Annie Lace. All rights reserved.
//

import Foundation

//Calculator
print("Calculator")
//Add two integers
func add(num1 : Int, num2 : Int) -> Int
{
    return num1 + num2
}

//Add function tests
print("Add function results:")
for var i = 0; i < 6; i++
{
    print("\(i) + \(i * 2) = \(add(i, num2: (i*2)))")
}
print()

//Subtract num2 from num1
func subtract(num1: Int, num2: Int) -> Int
{
   return num1 - num2
}

//Subtract function tests
print("Subract function results:")
for var i = 0; i < 6; i++
{
    print("\(i * 2) - \(i) = \(subtract((i*2), num2: i))")
}
print()

//Multiply two integers
func multiply(num1: Int, num2 : Int) -> Int
{
    return num1 * num2
}

//Multiply function tests
print("Multiply function results:")
for var i = 0; i < 6; i++
{
    print("\(i) * \(i) = \(multiply(i, num2: i))")
}
print()

//divide num1 by num2
func divide(num1: Int, num2: Int) -> Int
{
    return num1 / num2
}

//Divide function tests
print("Divide function results:")
print("4 / 2 = \(divide(4, num2: 2))")
print("9 / 1 = \(divide(9, num2: 1))")
print("6 / 3 = \(divide(6, num2: 3))")
print("30 / 5 = \(divide(30, num2: 5))")
print("33 / 11 = \(divide(33, num2: 11))")
print("50 / 10 = \(divide(50, num2: 10))")
print()

//Generic math operation - perform specified basic operation on two ints
func mathOp(num1: Int, num2 : Int, op : (Int, Int) -> Int) -> Int
{
    return op(num1, num2)
}

//Generic function tests
print("Generic function using add:")
print("7 + 6 = \(mathOp(7, num2 : 6, op: add))")
print("9 + 2 = \(mathOp(9, num2 : 2, op: add))")
print("Generic function using subtract:")
print("7 - 6 = \(mathOp(7, num2 : 6, op: subtract))")
print("9 - 2 = \(mathOp(9, num2 : 2, op: subtract))")
print("Generic function using multiply:")
print("7 * 6 = \(mathOp(7, num2 : 6, op: multiply))")
print("9 * 2 = \(mathOp(9, num2 : 2, op: multiply))")
print("Generic function using divide:")
print("15 / 3 = \(mathOp(15, num2 : 3, op : divide))")
print("14 / 7 = \(mathOp(14, num2 : 7, op : divide))")
print()

//Array Fun
print("Array fun")

//Test arrays
let emptyArray : [Int] = []
let zeroArray : [Int] = [0]
let smallArray : [Int] = [10]
let sameArray : [Int] = [1, 1, 1]
let medArray : [Int] = [4, 5, 6]
let largeArray : [Int] = [2, 4, 6, 5, 3]

func arrAdd(arr : [Int]) -> Int
{
    var sum = 0
    for(var i = 0; i < arr.count; i++)
    {
        sum += arr[i]
    }
    return sum
}

print("arrAdd results:")
print("Empty Array Test returned \(arrAdd(emptyArray)), Expected: 0")
print("Zero Array Test returned \(arrAdd(zeroArray)), Expected: 0")
print("Small Array Test returned \(arrAdd(smallArray)), Expected: 10")
print("Same Array Test returned \(arrAdd(sameArray)), Expected: 3")
print("Medium Array Test returned \(arrAdd(medArray)), Expected: 15")
print("Large Array Test returned \(arrAdd(largeArray)), Expected: 20")
print()

func mul(arr : [Int]) -> Int
{
    if(arr.count == 0)
    {
        return 0
    }
    var product = 1
    for(var i = 0; i < arr.count; i++)
    {
        product *= arr[i]
    }
    return product
}

print("mul results:")
print("Empty Array Test returned \(mul(emptyArray)), Expected: 0")
print("Zero Array Test returned \(mul(zeroArray)), Expected: 0")
print("Small Array Test returned \(mul(smallArray)), Expected: 10")
print("Same Array Test returned \(mul(sameArray)), Expected: 1")
print("Medium Array Test returned \(mul(medArray)), Expected: 120")
print("Large Array Test returned \(mul(largeArray)), Expected: 720")
print()

func count(arr : [Int]) -> Int
{
    return arr.count
}

print("count results:")
print("Empty Array Test returned \(count(emptyArray)), Expected: 0")
print("Zero Array Test returned \(count(zeroArray)), Expected: 1")
print("Small Array Test returned \(count(smallArray)), Expected: 1")
print("Same Array Test returned \(count(sameArray)), Expected: 3")
print("Medium Array Test returned \(count(medArray)), Expected: 3")
print("Large Array Test returned \(count(largeArray)), Expected: 5")
print()

func avg(arr : [Int]) -> Int
{
    if(arr.count == 0)
    {
        return 0
    }
    var sum = 0
    for(var i = 0; i < arr.count; i++)
    {
        sum += arr[i]
    }
    return sum / arr.count
}

print("avg results:")
print("Empty Array Test returned \(avg(emptyArray)), Expected: 0")
print("Zero Array Test returned \(avg(zeroArray)), Expected: 0")
print("Small Array Test returned \(avg(smallArray)), Expected: 10")
print("Same Array Test returned \(avg(sameArray)), Expected: 1")
print("Medium Array Test returned \(avg(medArray)), Expected: 5")
print("Large Array Test returned \(avg(largeArray)), Expected: 4")
print()

func arrOp(arr : [Int], op : ([Int])->Int) -> Int
{
    return op(arr);
}

print("Generic function using arrAdd:")
print("Generic function using arrAdd on emptyArray returned \(arrOp(emptyArray, op: arrAdd)), Expected: 0")
print("Generic function using arrAdd on zeroArray returned \(arrOp(zeroArray, op: arrAdd)), Expected: 0")
print("Generic function using arrAdd on sameArray returned \(arrOp(sameArray, op: arrAdd)), Expected: 3")
print("Generic function using mul:")
print("Generic function using mul on emptyArray returned \(arrOp(emptyArray, op: mul)), Expected: 0")
print("Generic function using mul on zeroArray returned \(arrOp(zeroArray, op: mul)), Expected: 0")
print("Generic function using mul on sameArray returned \(arrOp(sameArray, op: mul)), Expected: 1")
print("Generic function using count:")
print("Generic function using count on emptyArray returned \(arrOp(emptyArray, op: count)), Expected: 0")
print("Generic function using count on zeroArray returned \(arrOp(zeroArray, op: count)), Expected: 1")
print("Generic function using count on sameArray returned \(arrOp(sameArray, op: count)), Expected: 3")
print("Generic function using avg:")
print("Generic function using avg on emptyArray returned \(arrOp(emptyArray, op: avg)), Expected: 0")
print("Generic function using avg on zeroArray returned \(arrOp(zeroArray, op: avg)), Expected: 0")
print("Generic function using avg on sameArray returned \(arrOp(sameArray, op: avg)), Expected: 1")
print()

//Points
print("Points")

typealias Point = (Int, Int)

let tup1 = (1, 2)
let tup2 = (3, 4)
let tup3 = (5, 6)
let tup4 = (7, 8)

func addTupPoints(p1 : Point, p2 : Point) -> Point
{
    return (p1.0 + p2.0, p1.1 + p2.1)
    
}

print("Adding Tuple Points Results:")
print("\(tup1) + \(tup2) = \(addTupPoints(tup1, p2 : tup2))")
print("\(tup1) + \(tup3) = \(addTupPoints(tup1, p2 : tup3))")
print("\(tup1) + \(tup4) = \(addTupPoints(tup1, p2 : tup4))")
print("\(tup2) + \(tup3) = \(addTupPoints(tup2, p2 : tup3))")
print("\(tup2) + \(tup4) = \(addTupPoints(tup2, p2 : tup4))")
print("\(tup3) + \(tup4) = \(addTupPoints(tup3, p2 : tup4))")
print()

func subTupPoints(p1: Point, p2 : Point) -> Point
{
    return (p1.0 - p2.0, p1.1 - p2.1)
}

print("Subtracting Tuple Points Results:")
print("\(tup1) - \(tup2) = \(subTupPoints(tup1, p2 : tup2))")
print("\(tup1) - \(tup3) = \(subTupPoints(tup1, p2 : tup3))")
print("\(tup1) - \(tup4) = \(subTupPoints(tup1, p2 : tup4))")
print("\(tup2) - \(tup3) = \(subTupPoints(tup2, p2 : tup3))")
print("\(tup2) - \(tup4) = \(subTupPoints(tup2, p2 : tup4))")
print("\(tup3) - \(tup4) = \(subTupPoints(tup3, p2 : tup4))")
print()

let emptyDict = [String : [Int]]()
let wrongDict = ["q": [4], "y": [9]]
let manyDict = ["x": [1,2], "y": [1,2]]
let dict1 = ["x": [1], "y": [2]]
let dict2 = ["x": [3], "y": [4]]

func addDictPoints(p1: Dictionary<String, [Int]>, p2: Dictionary<String, [Int]> ) -> Dictionary<String, Int>
{
    if(p1.indexForKey("x") == nil || p1.indexForKey("y") == nil || p2.indexForKey("x") == nil || p2.indexForKey("y") == nil)
    {
        return ["e": 0, "r": 0]
    }
    if(p1["x"]!.count > 1 || p1["y"]!.count > 1 || p2["x"]!.count > 1 || p2["y"]!.count > 1)
    {
        return ["e": 1, "r": 1]
    }
    return ["x": (p1["x"]![0] + p2["x"]![0]), "y": (p1["y"]![0] + p2["y"]![0])]
}

print("Adding Dictionary Points Results:")
print("\(emptyDict) + \(dict1) = \(addDictPoints(emptyDict, p2 : dict1))")
print("\(wrongDict) + \(dict1) = \(addDictPoints(emptyDict, p2: dict1))")
print("\(manyDict) + \(dict1) = \(addDictPoints(manyDict, p2: dict1))")
print("\(emptyDict) + \(dict1) = \(addDictPoints(dict1, p2 : emptyDict))")
print("\(wrongDict) + \(dict1) = \(addDictPoints(dict1, p2: wrongDict))")
print("\(dict1) + \(manyDict)) = \(addDictPoints(dict1, p2: manyDict))")
print("\(dict1) + \(dict2) = \(addDictPoints(dict1, p2 : dict2))")

func subDictPoints(p1: Dictionary<String, [Int]>, p2: Dictionary<String, [Int]> ) -> Dictionary<String, Int>
{
    if(p1.indexForKey("x") == nil || p1.indexForKey("y") == nil || p2.indexForKey("x") == nil || p2.indexForKey("y") == nil)
    {
        return ["e": 0, "r": 0]
    }
    if(p1["x"]!.count > 1 || p1["y"]!.count > 1 || p2["x"]!.count > 1 || p2["y"]!.count > 1)
    {
        return ["e": 1, "r": 1]
    }
    return ["x": (p1["x"]![0] - p2["x"]![0]), "y": (p1["y"]![0] - p2["y"]![0])]
}

print("Subtracting Dictionary Points Results:")
print("\(emptyDict) - \(dict1) = \(subDictPoints(emptyDict, p2 : dict1))")
print("\(wrongDict) - \(dict1) = \(subDictPoints(emptyDict, p2: dict1))")
print("\(manyDict) - \(dict1) = \(subDictPoints(manyDict, p2: dict1))")
print("\(emptyDict) - \(dict1) = \(subDictPoints(dict1, p2 : emptyDict))")
print("\(wrongDict) - \(dict1) = \(subDictPoints(dict1, p2: wrongDict))")
print("\(dict1) - \(manyDict)) = \(subDictPoints(dict1, p2: manyDict))")
print("\(dict1) - \(dict2) = \(subDictPoints(dict1, p2 : dict2))")