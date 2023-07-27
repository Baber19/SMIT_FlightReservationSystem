import 'dart:io';

import 'main.dart';

void passengerSignUp() {
  var name, email, password, cnic;
  bool isEmailTrue;
  bool isPasswordTrue;
  print("");
  print("=== Welcome To Sign Up Section ===");
  print("");

  print("Please Enter Your Name");
  name = stdin.readLineSync();
  registeredPassengers.insert(0, name);

  print("Please Enter Your CNIC without dashes");
  cnic = stdin.readLineSync();
  registeredPassengers.insert(1, cnic);

  do {
    print("Please Enter Your Email");
    email = stdin.readLineSync();
    isEmailTrue =
        (email?.contains("@") == true && email?.contains(".com") == true);

    if (isEmailTrue) {
      registeredPassengers.insert(2, email);
    } else {
      print("Please Enter Valid Email That Must Contain @ and .com");
    }
  } while (!isEmailTrue);

  do {
    print("Please Enter Your Password");
    password = stdin.readLineSync();
    isPasswordTrue = (password?.contains(RegExp(r'[A-Z]')) == true &&
        password?.contains(RegExp(r'[0-9]')) == true);

    if (isPasswordTrue) {
      registeredPassengers.insert(3, password);
    } else {
      print("Your Password Must Contain a Capital Letter and a Number");
    }
  } while (!isPasswordTrue);
  print(" ");
  print("Thank You For Sign Up");
  print("Your Details are Listed Below");
  print(" ");
  print("Your Name is ${registeredPassengers[0]}");
  print("Your CNIC is ${registeredPassengers[1]}");
  print("Your Email is ${registeredPassengers[2]}");
  print("Your Password is ${registeredPassengers[3]}");
}
