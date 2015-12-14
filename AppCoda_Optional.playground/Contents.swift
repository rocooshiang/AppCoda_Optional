import UIKit

let intValue : Int = 0
let intValue2 : Int? = nil

let image = UIImage(named: "imageName")
let image2 = UIImage(named: "imageName1")
let image3 : UIImage? = image
let image4 : UIImage? = nil


/***  Unwrapping的五種方法  ***/

// 1. 使用 !
// 優： 快速，短小精幹
// 缺： 沒值時會crash
let img = image!


// 2. 使用 if
// 優： 可以避免沒值狀況
// 缺： 比方法1冗長
if image != nil{
  let img = image!
  
}else{
  print("There isn't a value")
}


// 3. 使用 if let
// 優： 可以從直接從if let取值
// 缺： 比方法1冗長，但比方法2簡潔
if let img = image{
  print("The img isn't nil")
}else{
  print("The img is nil")
}

if let img = image , let img2 = image2{
  print("Both of img and img2 have value")
}else{
  print("img img2 or not value")
}

// 4. Assigned Value
// 優： 如果是nil時，提供另一個初始值
// 缺： 要小心提供的初始值
// a ?? b ，如果a有值，則取a值，反之，則取b值
let myImg = image ?? image2
let myImg2 = image2 ?? image


// 5. 使用 guard let
func getImage(optionalValue optionalValue : String?) ->String{
  
  guard let unwrappedValue2 = optionalValue else{
    return "\(optionalValue)"
  }
  
  //解開的值會在guard let的scrope外面
  return unwrappedValue2
}

let str : String? = nil
getImage(optionalValue: str)
getImage(optionalValue: "Rocoo")




