import 'dart:io';

// void main(List<String> arguments) {
//   int age = 19;
//   if (age >= 19) {
//     print("cheers!");
//   } else {
//     print("fuckoff");
//   }
// }



// void main(List<String> arguments) {

// int personAge = 20;
// bool hasLicense = false;
// print("Velkominn til syslumanns thu tharft ad vera ordin 17 til thess ad fa bilprof");
// print("Herra X er $personAge gamall");
// if(personAge >= 17 && hasLicense == true) {
//   print("gjordu svo vel kutur fardu ad keyra");
// } else if (personAge <= 17) {
   
//   print("Afsakid thu ert ekki nogu gamall til thess ad fa bilprof"); 

// } else {
//   print("thu ert ekki med bilprof");
// }
// }


// void main() {
  

//   String socialSecurityNumber1 = "300599-2499";
//   String socialSecurityNumber2 = "3005992499";
//   String socialSecurityNumber3 = "300599 2499";
//   String socialSecurityNumber4 = "300599499";

//   print(socialSecurityNumber1.length);
//   print(socialSecurityNumber2.length);
//   print(socialSecurityNumber3.length);
//   print(socialSecurityNumber4.length);

  

//   if(countDigits(socialSecurityNumber1)) {
//     print("This SSN $socialSecurityNumber1 looks ok");
//   } else if (socialSecurityNumber1.contains("-")) {
//       socialSecurityNumber1 = socialSecurityNumber1.replaceAll("-", "");
//       print("$socialSecurityNumber1 1");
//     } else {
//       print("veit ekki");
//     }

//   if(countDigits(socialSecurityNumber2)) {
//     print("This SSN $socialSecurityNumber2 2 looks ok");
//   } else if (socialSecurityNumber2.contains("-")) {
//       socialSecurityNumber2 = socialSecurityNumber2.replaceAll("-", "");
//       print(socialSecurityNumber2); 
//    } else {
//     print("Ég veit ekkert hvað ég á að gera við þetta number2");
//    }

//   if(countDigits(socialSecurityNumber3)) {
//     print("This SSN $socialSecurityNumber3 looks ok");
//   } else if (socialSecurityNumber3.contains(" ")) {
//       socialSecurityNumber3 = socialSecurityNumber3.replaceAll(" ", "");
//       print("$socialSecurityNumber3 3");
//    } else {
//     print("Ég veit ekkert hvað ég á að gera við þetta number 3");
//    }
//   if(countDigits(socialSecurityNumber4)) {
//     print("This SSN $socialSecurityNumber4 looks ok");
//   } else if (socialSecurityNumber4.contains("-")) {
//       socialSecurityNumber4 = socialSecurityNumber4.replaceAll("-", "");
//       print(socialSecurityNumber4);
//    } else {
//     print("Ég veit ekkert hvað ég á að gera við þetta number 4");
//    }
// }

// bool countDigits(String ssn) {
//   int socialSecurityNumberLength = 10;
//   return ssn.length == socialSecurityNumberLength;
// }




  void main() {
  
  print("Enter your SSN:");
  String socialSecurityNumber1 = stdin.readLineSync().toString();
  print("You entered: $socialSecurityNumber1");
  socialSecurityNumber1 = fixSSN(socialSecurityNumber1);
   
   if (socialSecurityNumber1.length == 10) {
    print("SSN: $socialSecurityNumber1");
   } else {
    print("To short.");
   }
  // Þetta er miklu floknari og oskiljanlegri koði en gerir það sama
  // if(countDigits(socialSecurityNumber1) == 0) {
  //   print("This SSN $socialSecurityNumber1 looks ok");
  // } else if (countDigits(socialSecurityNumber1) >= 1) {
  //     // socialSecurityNumber1 = socialSecurityNumber1.replaceAll("-", "");
  //     print("$socialSecurityNumber1 er of stutt ssn");
  //   } else if  (countDigits(socialSecurityNumber1) <= -1){
  //     socialSecurityNumber1 = fixSSN(socialSecurityNumber1);
  //     print(socialSecurityNumber1);
  //   }
}
  // Þetta er sett fyrir utan svo þú getir notað þetta í fullt af functions 
  int countDigits(String ssn) {
  int socialSecurityNumberLength = 10;
  return socialSecurityNumberLength - ssn.length;
  }

String fixSSN(String brokenSSN) {
  if (brokenSSN.contains(" ")) {
    brokenSSN = brokenSSN.replaceAll(" ", "");
  }
  if (brokenSSN.contains("-")) {
    brokenSSN = brokenSSN.replaceAll("-", "");
  }
  return brokenSSN;
}