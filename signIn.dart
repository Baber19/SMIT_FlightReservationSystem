import 'dart:io';
import 'main.dart';

void passengerSignIn() {
  print("");
  print("===Welcome To SignIn Section===");
  print("");

  do {
    print("Please Enter Your Email");
    email = stdin.readLineSync();
    isEmailTrue =
        (email?.contains("@") == true && email?.contains(".com") == true);

    if (isEmailTrue!) {
      print("Your email is  : $email");
      signedinPassengers.insert(0, email);
    } else {
      print("Please Enter Valid Email That Must Contain @ and .com");
    }
  } while (!isEmailTrue!);

  do {
    print("Please Enter Your Password");
    password = stdin.readLineSync();
    isPasswordTrue = (password?.contains(RegExp(r'[A-Z]')) == true &&
        password?.contains(RegExp(r'[0-9]')) == true);

    if (isPasswordTrue!) {
      print("Your password is  : $password");
      signedinPassengers.insert(1, password);
    } else {
      print("Your Password Must Contain a Capital Letter and a Number");
    }
  } while (!isPasswordTrue!);
  if (registeredPassengers.contains(email) &&
      registeredPassengers.contains(password)) {
    print("Login Successful");
  } else {
    print("User Not Found. Please Create Your Account by Pressing 2");
  }
}
