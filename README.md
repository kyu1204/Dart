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
