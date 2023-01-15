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
### Dynamic Type
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
3. 