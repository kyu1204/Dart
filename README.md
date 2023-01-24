# Dart Study
## 0. Introduction
### Why Dart?
1. Optimized for UI
2. Productive development
3. Fast on all platforms
	1. Two Compiler
		1. Dart Web (compile to JS)
		2. Dart Native (compile to multiple cpu architecture(iOS, AOS, OSX, Windows + IOT))
			1. JIT (just in time)
				1. usd dart vm
				2. real time compile
				3. development mode
				4. slow running app
			3. AOT (ahead of time)
				1. publish mode
				2. fast running app
4. Null safety
5. Both Fluter and Dart were made by Google
	1. didn't have an AOT but now have AOT, because dart team built it for flutter team
### Installation
1. `brew install dart-sdk`
2. install `flutter extension` to `vscode`
3. or use `dartpad.dev`
---
## 1. Variables
### [Hello World](Code/0-Introduction/main.dart)
1. always have a **`main`** function
2. **`main`** function is the entry point
3. we really need semicolon **`;`** 
	1. auto formatter does not automatically add a semicolon
	2. because **`cascade operator`**
### [The Var Keyword](Code/1-Variables/var.dart)
1. dart variables is two type
	1. use **var** keyword
	2. use **specific type** (e.g. String, int ...)
	3. variables data can be updated
	   ```dart 
	   var name = 'mint'; 
	   name = 'minkyu'; (O) 
	   name = 1; (X)
	   
	   String birhtday = '1993-12-04';
	   ```
	4. **var** keyword is used by a function or method local variable
	5. **specific type** is used by a class or property
### [Dynamic Type](Code/1-Variables/dynamic.dart)
1. **dynamic** type is not recommended but may be useful in some cases
	1. API Response data or Json..
2. use a dynamic,
	1. use var keyword and not allocate data
	2. use specific keyword
	    ```dart
	    var name;  //dynamic
	    name = 'minkyu';  // (o)
  	    name = 123;  // (o)
	  
	    dynamic birthday;
	    ```
3. If the dynamic type is bound to a specific type, you can use that type function
   ``` dart
   var name;
   if (name is String) {
       name.isEmpty;
       name.length;
   }
   if (name is int) {
       name.isInfinity;
       name.isOdd;
   }
   ```
### [Nullable Variables (a.k.a Optional)](Code/1-Variables/nullable.dart)
1. **null safety** means **null value** cannot be referenced
2. variable default value is a **non-nullable**
3. use a nullable variables,
	1. add a question symbol
	   ```dart
	   String? name = 'minkyu';
	   name = null;
	   ```
3. If you use that type function, check the null type (a.k.a Optional Binding)
    ```dart
    String? name = 'minkyu';
    name = null;
    if (name != null) {
	    name.length;
    }
    name?.length;
    ```
### [Final Variables](Code/1-Variables/final.dart)
1. If you want to use a variable only once,
	1. use **final** keyword
	    ```dart
	    final name = 'minkyu';
	    name = 'mint';  // (X)
	    ```
### [Late Variables](Code/1-Variables/late.dart)
1. If you want to **lazy initialize**, use a **late** keyword
2. late variable protects the uninitialized variable reference
    ```dart
    late final name;
    // print(name);  // (X)
   
    name = 'minkyu';
    print(name);  // (O)
    ```
### [Const Variables](Code/1-Variables/const.dart)
1. **const** variables means constant data for compile-time
2. If you want a constant variable but that variable initializes the run time, you must use the 'final' variable
   ```dart
   // const name = fetchAPI();  // (X)
   // -> final name = fetchAPI();  (O)
   const name = 'minkyu';
   ```
---
## Data Types
### [Basic Data Types](Code/2-DataTypes/basic.dart)
1. basic data types is `String`, `bool`, `int`, `double` 
2. all these types and actually almost everything comes from an **`object`**, even functions are objects.
   ```dart
   String name = "minkyu";  // String name = 'minkyu'; (O)
   bool alive = true;
   int age = 31;
   double money = 99.99;
   ```
3. int and double type comes from an **`num`** class
4. If you use a **`num`** type, it can be either a `integer` or a `double`
   ```dart
   num x = 12;
   x = 1.1;
   ```
### [List](Code/2-DataTypes/list.dart)
1. If you use a `List` , there are two way
	1. use `var` keyword
	2. use specific type `List<type>`
	   ```dart
	   var numbers = [1, 2, 3, 4];
	   List<int> numbers2 = [1, 2, 3, 4];
	   ```
2. `List` is implements many property and method
   ```dart
   var numbers = [1, 2, 3, 4];
   numbers.first;
   numbers.last;
   numbers.isEmpty;
   ```
3. Dart is support **`collection if`** and **`collection for`**
	1. collection if
	   ```dart
	   var giveFive = true;
	   var numbers = [
	       1,
	       2,
	       3,
	       4,
	       if (giveFive) 5,
	   ]
	   ```
	2. collection for
	   ```dart
	   var oldFriends = ["철수", "영희"];
	   var newFriends = [
	       "민식", 
	       "잼민",
	       for (var friend in oldFriends) "🌱 $friend",  // String Interpolation
	   ];
	   ```
### [String Interpolation](Code/2-DataTypes/stringInterpolation.dart)
1. String Interpolation is how we can include **variables** in our **text**
2. just use **`$`** and **variables name**
   ```dart
   var name = "minkyu";
   var age = 30;
   var greeting = "Hello everyone, my name is $name"
   ```
3. If you want variables operation, just use **`$`** and **curly bracket**
   ```dart
   var name = "minkyu";
   var age = 30;
   var greeting = "Hello everyone, my name is $name and I'm ${age - 1}";
   ```
### [Maps](Code/2-DataTypes/maps.dart)
1. If you use a `Maps` , there are two way
	1. use `var` keyword
	2. use specific type `Maps<key type, value type>`
	   ```dart
	   var players = {
               "name": "minkyu",
               "xp": 19.999,
               "superpower": false,
           };
           Map<String, Object> players = {
               "name": "minkyu",
	       "xp": 19.999,
	       "superpower": false,
	   };
	   ```
2. `Maps` is implement many property and method
   ```dart
   var players = {
	    "name": "minkyu",
	    "xp": 19.999,
	    "superpower": false,
	};
	players.isEmpty;
	players.keys;
	players.values;
   ```
3. If you want to build like Python dictionary in Dart, I wouldn't recommend this way. I don't recommend using a lot of **`Maps`**. If you want to define things that have keys and values, recommend using **`class`**.
### [Sets](Code/2-DataTypes/sets.dart)
1. If you use a `Sets`, there are two way
	1. use `var` keyword
	2. use specific type `Sets<type>`
	   ```dart
	   var numbers = {1, 2, 3, 4};
	   Set<int> numbers2 = {1, 2, 3};
	   ```
2. `Sets` make sure that all items here are **unique**
   ```dart
   var numbers = {1, 2, 3, 4};
   numbers.add(1);
   numbers.add(1);
   numbers.add(1);
   
   print(numbers);  // 1, 2, 3, 4
   ```
---
## Functions
### [Defining a Function](Code/3-Functions/defineFunction.dart)
1. The function consists of a `return type`, `function name`, `parameters` and `body`.
   ```dart
   // <return type> <function name> (<parameters>) {
   //    <body>
   // }
   String sayHello(String name) {
	   return "Hello $name";
   }
   ```
2. If your function is one line, you can use the **`fat arrow`**
   ```dart
   String sayHello(String name) => "Hello $name";
   ```
### [Named Parameters](Code/3-Functions/namedParameter.dart)
1. Dart functions supports **Named Parameters**.
2. To use **Named Parameters**, enclose the parameters in **curly bracket**. 
3. And the most important part is to set the **default value of the parameter** or set the **required** keyword.
   ```dart
   String sayHello({
	   String name='mint', 
	   int age=30, 
	   String contry='korea',
	}) {
	   return "Hello $name, you are $age and come from $contry";
   }
   String sayHello2({
	   required String name, 
	   required int age, 
	   required String contry,
	}) {
	   return "Hello $name, you are $age and come from $contry";
   }
   ```
### [Optional Positional Parameters](Code/3-Functions/optionalPositionalParameter.dart)
1. If you want optional positional parameters, follow these steps.
	1. Enclose the parameters in a square brackets.
	2. Add question symbol to parameters.
	3. If desired, add default values.
   ```dart
   String sayHello(String name, int age, [String? contry="korea"]) {
	   return "Hello $name, your $age and come from $contry";
   }
   ```
### [QQ Operator](Code/3-Functions/qqOperator.dart)
1. If you want to use an operator that operates after checking null, use the QQ operator.
   ```dart
   String capitalizeName(String? name) => name?.toUpperCase() ?? "ANON";
   ```
2. If you want to use an operator that assigns a value after checking null, use the QQ assignment operator (QQ equals).
   ```dart
   void main() {
	   String? name;
	   name ??= 'minkyu';
   }
   ```
### [Typedef](Code/3-Functions/typedef.dart)
1. Dart supports **`typedef`**, It means you add an alias to type.
2. If you want to add an alias to type, follow the example.
   ```dart
   typedef ListOfInts = List<int>;
   
   ListOfInts reverseListOfNumbers(ListOfInts list) {
	   var reversed = list.reversed;
	   return reversed.toList();
   }
   ```
## Classes
### [Your First Dart Class](Code/4-Classes/yourFirstDartClass.dart)
1. The format of the class is as in the following example.
   ```dart
   class Player {
	   String name = 'minkyu';  // specific type, var(x)
	   int xp = 1500;
   }
   ```
2. An important part when you create class is setting properties of a **specific type**
3. If you want make class method, following example.
   ```dart
   class Player {
	   String name = 'minkyu';
	   int xp = 1500;
	   
	   void sayHello() {
		   print("Hi my name is $name");
	   }
   }
   ```
4. It is recommended to omit the **`this`** keyword if variable names do not overlap in methods within a class.
5. If you want immutable property, add the **`final`** keyword.
   ```dart
   class Player {
	   final String name = 'minkyu';
	   int xp = 1500;
   }
   ```