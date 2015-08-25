//
//  main.swift
//  L02Hello-OSX
//
//  Created by gaoruishan on 15/8/24.
//  Copyright (c) 2015年 gaoruishan. All rights reserved.
//

import Foundation


//变量 重新赋值
var a = 1
a = 3
var b = 2

//常量  不能重新赋值
let c = a + b

println(c)// 5

//定义字符串
var str = "Hello "
//指定类型 使用 :
var s:String = "World"
var i:Int = 100

//字符串 相加
println(str+s) //Hello World

var j = 100
//使用 \来拼接不同类型的 “”包裹
str = "\(str),abs,\(j)"
println(str) //Hello ,abs,100

//数组 可添加不同类型变量
var arr = ["Hello ","Swift",100,2.3]
//创建空数组
var arr1 = []
//创建指定类型的空数组
var arr2 = [String]()
println(arr)//[Hello , Swift, 100, 2.3]

//字典 
var dict = ["name":"Swift","age":"16"]
//动态添加
dict["sex"] = "famale"

println(dict) //[age: 16, sex: famale, name: Swift]
//直接取值
println(dict["name"])//Optional("Swift")

//for循环: index 整数变量 in指代后面的返回 从0...到100
for index in 0...100{
      //将Item index 字符串 添加空数组中
      arr2.append("Item \(index)")
}
//对字典遍历
for (key,value) in dict {
      println("\(key)=\(value)")
}

//打印的是数组集合
println(arr2)
//将数组中每个Item 打印
for value in arr2{
      println(value)
}

//while循环
var k = 0
while k < arr2.count {
      println(arr2[k])
      k++
}

//流程控制
for index in 0...10{
      if index%2==0{
            println(index)
      }
}

//? 指代标记可选变量 显式拆包
var myName:String?="Swift"
//赋值为空 if不执行
myName = nil
//只要可选变量为空或false  if不执行
if let name = myName{
      println("Hello \(name)") //Hello Swift
}

// 创建方法 指定参数类型
func sayHello(name:String){
      println("Hello \(name)")
}
//直接调用
sayHello("Swift")
//赋值变量 调用
var fun = sayHello
fun("World") //Hello World

//返回多个 ->指代返回值类型用(), return 用()之间用 , 分开
func getNums()->(Int,String){
      return(2,"str")
}
//指定获得的类型
let (n:Int,m:String) = getNums()

println("n= \(n),m= \(m)")//n= 2,m= str


//面向对象 >>>>>>>>>>>>>>>
// 继承 NSObject
class Hi: NSObject{
      //定义方法
      func sayHi(){
            println("Hi Swift")
      }
}
class Hello: Hi {
      // 定义成员变量
      var _name:String
      //构造函数
      init(name:String){
            self._name=name
      }
      //重写父类方法
      override func sayHi() {
            println("Hello \(self._name)")
      }
}

var hi = Hi()
hi.sayHi()//Hi Swift

var h = Hello(name: "ZhangSan")
h.sayHi()//Hello ZhangSan


// <<<<<<<<<<<<<<<<<<<

//定义一个类
class Hello1 {
      //定义一个可选变量 隐式拆包
      var _name:String!="Swift"
      //构造函数和重载
      init(){}
      init(name:String){
            _name = name;
            println("-Hello init")
      }
      //方法
      func sayHello(){
            println("-Hello \(_name)")
      }
      //类方法- 类的内部 可以直接调用（类名.方法名） 相当于java中的静态方法
      class func sayHi(){
            println("Hi Swift")
      }
}
//继承 父类Hello1
class Hello2: Hello1 {
      //重写方法
      override func sayHello() {
            //执行父类的方法
            super.sayHello()
            println("Hello2 \(_name)")
      }
}
class Hello3: Hello2{
      
}

//扩展Hello2类功能
extension Hello2{
      func sayHaha(){
            println("Haha")
      }
}

//使用类
var hello = Hello1()
hello.sayHello()//-Hello Swift
//不声明变量 先执行init
Hello1(name: "World").sayHello()//-Hello init  -Hello World

//调用类方法
Hello1.sayHi()//Hi Swift

var hello2 = Hello2()
hello2.sayHello()//-Hello Swift Hello2 Swift
hello2.sayHaha()//Haha

var hello3 = Hello3()
//扩展的方法也同样被子类继承
hello3.sayHaha()

//创建一个接口 （小写字母开头的）
protocol People{
      func getName()->String
}

class Man:People {
      func getName() -> String {
            return "ZhangSan"
      }
}

var man = Man()
println("Name is \(man.getName())")//Name is ZhangSan

//命名空间
//class com{
//      class gaoruishan {
//      }
//}
//
//extension com.gaoruishan{
//      class Hello {
//            func sayHello(){
//                  println("Hello gaoruishan")
//            }
//      }
//      class Hi {
//            func sayHi(){
//                  println("Hi gaoruishan")
//            }
//      }
//}

var h1 = com.gaoruishan.Hello()
h1.sayHello()//Hello gaoruishan

var h2 = com.gaoruishan.Hi()
h2.sayHi()//Hi gaoruishan


//输出信息 定位错误
class Math {
      //注：参数类型 与 返回值
      class func max(a:Int,b:Int)->Int {
            //有较为详细信息
            NSLog("run Math.max")
            return a > b ? a:b
      }
}
//第二个参数 加b:
var mathNum = Math.max(2, b: 4)

println("The MaxNum is \(mathNum)")






