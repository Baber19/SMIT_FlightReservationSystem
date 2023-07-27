import 'dart:io';
import 'main.dart';

void passengerDetails() {
  print("");
  print("=== Welcome To Passenger Profile Section ===");
  print("");
  if (registeredPassengers.contains(email) &&
      registeredPassengers.contains(password)) {
    passengerProfile();
  } else {
    print("No Passenger Found! Please Sign In to Your Account or Sign Up");
  }
}

void passengerProfile() {
  // print("");
  // print("=== Welcome To Passenger Profile Section ===");
  // print("");
  print("Name : ${registeredPassengers[0]}");
  print("Email : ${registeredPassengers[1]}");
  print("Cnic : ${registeredPassengers[2]}");
  print("Password : ${registeredPassengers[3]}");

  String? userChoice;
  do {
    print("");
    print("Would You Like to Edit Your Profile? (yes/no)");
    userChoice = stdin.readLineSync()!.toLowerCase();
    if (userChoice == 'yes') {
      print("");
      print("What would You Like To Edit or Update");
      print("Press 1 for Name");
      print("Press 2 for CNIC");
      print("Press 3 for Email");
      print("Press 4 for Password");
      int? option = int.tryParse(stdin.readLineSync()!);
      if (option == 1) {
        print("\nPlease Update Your Name");
        var name = stdin.readLineSync();
        registeredPassengers[0] = name;
      } else if (option == 2) {
        print("/nPlease Update Your CNIC");
        var cnic = stdin.readLineSync();
        registeredPassengers[2] = cnic;
      } else if (option == 3) {
        print("/nPlease Update Your Email");
        var email = stdin.readLineSync();
        bool isEmailTrue =
            (email?.contains("@") == true && email?.contains(".com") == true);

        if (isEmailTrue) {
          registeredPassengers[1] = email;
        } else {
          print("Please Enter Valid Email That Must Contain @ and .com");
        }
      } else if (option == 4) {
        print("/nPlease Update Your Password");
        var password = stdin.readLineSync();
        bool isPasswordTrue = (password?.contains(RegExp(r'[A-Z]')) == true &&
            password?.contains(RegExp(r'[0-9]')) == true);

        if (isPasswordTrue) {
          registeredPassengers[3] = password;
        } else {
          print("Your Password Must Contain a Capital Letter and a Number");
        }
      }
    } else {
      print("/nThank you For Viewing Your Profile");
    }
  } while (userChoice != 'no');

  print(
      "/nThank you for Updating Your Profile. After Updates Your Details are Listed Below");
  print("Your Name is ${registeredPassengers[0]}");
  print("Your CNIC is ${registeredPassengers[2]}");
  print("Your Email is ${registeredPassengers[1]}");
  print("Your Password is ${registeredPassengers[3]}");
}
