import 'dart:io';
void main() {
// //  assignment1();
// //  assignment2();
// //  assignment3();
// //  assignment4();
//   assignment5();
    assignment6 ();
}
// Solve the challenge

// 1. Write a program to accept two integers and check whether they are equal or not
void assignment1() {

  print("Type in your first number");
  String? input = stdin.readLineSync();
  // if statement ef input er ekki jafn og null þá reynir kóðinn að runna int.tryParse etc annars null
  int? num1 = input != null ? int.tryParse(input) : null;
  
  print("Type in your second number");
  String? input2 = stdin.readLineSync();
  int? num2 = input2 != null ? int.tryParse(input2) : null;

  bool numAreSame = num1 == num2;

  if(numAreSame) {
    print("num1 $num1 and num2 $num2 are equal");
  } else {
    print("num1 $num1 and num2 $num2 are not equal");
  }
}


// 2. Write a program to check whether a given number is even or odd
void assignment2() {

  print("Enter a number to check if it's an even number or odd");
  String? input = stdin.readLineSync();
  int? num1 = input != null ? int.tryParse(input) : null;

  if (num1 == null || num1 == 0) {
  print("Error: The number you entered is invalid.");
  } else if (num1 % 2 == 0) {
    print("The number you typed in: $num1 is an even number");
  } else {
    print("The number you typed in: $num1 is an odd number");
  }
     
}


// 3. Write a program to check whether a given number is positive or negative
void assignment3() {
  print("Enter a number to check if the number is positive or negative");
  String? input = stdin.readLineSync();
  double? num1 = input != null ? double.tryParse(input) : null;
  if(num1 == null || num1 == 0) {
  print("The number you typed in $num1 is neither positive nor negative");
  } else if (num1 > 0) {
    print("The number you typed in $num1 is positive");
  }else  {
    print("The number you typed in $num1 is negative");
  };

}

// 4. Write a program to find whether a given year is a leap year or Not
// Every year that is exactly divisible by four is a leap year, except for years 
// that are exactly divisible by 100, but these centurial years are leap years if they are exactly divisible by 400.
void assignment4 () {
  print("Type in the year you are thinking of to check if it's a leap year or not");
  String? input = stdin.readLineSync();
  int? num1 = input != null ? int.tryParse(input) : null;

  if (num1 == null || num1 < 0) {
    print("Invalid year. Pick a year from 0 and up. No commas allowed");
  } else if (num1 % 400 == 0) {
    print("$num1 is a leap year !");
  } 
  else if (num1 % 100 == 0) {
    print("$num1 is not a leap year!");
  } else if (num1 % 4 == 0) {
    print("$num1 is a leap year!");
  } else {
    print("$num1 is not a leap year !");
  }

}


// 5. Write a program that asks the user to input 3 numbers. 
// The program will tell the user which of the numbers are the largest.

void assignment5() {
  print("Write in your three numbers here!");

  String? input1 = stdin.readLineSync();
  int? num1 = input1 != null ? int.tryParse(input1) : null;

  String? input2 = stdin.readLineSync();
  int? num2 = input2 != null ? int.tryParse(input2) : null;

  String? input3 = stdin.readLineSync();
  int? num3 = input3 != null ? int.tryParse(input3) : null;

  if (num1 == null || num2 == null || num3 == null) {
  print("One of the numbers is not valid please type in your three numbers again !");
  } else if (num1 > num2 && num1 > num3) {
    print("$num1 is your largest number ! not $num2 and $num3");
  } else if (num2 > num1 && num2 > num3) {
    print("$num2 is your largest number! not $num1 and $num3");
  } else if(num3 > num1 && num3 > num2) {
    print ("$num3 is your largest number! not $num2 and $num1");
  }

}



// 6. Write a Menu-Driven Program to perform a simple calculation 
void assignment6() {
// (a) Ask the users to enter two numbers 
print("Enter the first number of the two please!");
String? input1 = stdin.readLineSync();
double? num1 = input1 != null ? double.tryParse(input1) : null;

print("Enter the second number");
String? input2 = stdin.readLineSync();
double? num2 = input2 != null ? double.tryParse(input2) : null;

if (num1 == null || num2 == null) {
  print("Invalid inputs");
  return assignment6();
}

// (b) Offer the user this menu, where he can select what 

print ("What would you like to do with these numbers?");
print("i Addition");
print("ii Subtraction");
print("iii Multiplication");
print("iv Division");
print("v Exit");

String? choice = stdin.readLineSync();

switch (choice) {
  case "i":
  print("You chose addition!");
  print("$num1 + $num2 is ${num1 + num2}");
  
  break;
  
  case "ii":
  print("You chose subtraction");
  print("$num1 - $num2 is ${num1 - num2}");
  break;

  case "iii":
  print("You chose Multiplication");
  print("$num1 * $num2 is ${num1 * num2}");
  break;

  case "iv":
  print("You chose division!");
  print("$num1 / $num2 is ${num1/num2}");
  break;

  case "v":
  print("You chose Exit");
  return;

  default:
  print("Invalid choice, now you have to start over from the start because I'm lazy!");
  
}



// he wants to do with those two numbers, and print out the result
// i. Addition
// ii. Subtraction
// iii. Multiplication
// iv. Division 
// v. Exit


}

