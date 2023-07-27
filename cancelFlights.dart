// // ignore_for_file: unused_local_variable

import 'dart:io';

import 'searchFlight.dart';

// void flighCancellation() {
//   if (bookedFlights.isEmpty) {
//     print(
//         "Dear Passenger! You Have Not Make Any Reservation Yet. Please Reserve Your Seat by Pressing 3");
//   } else {
//     cancelFlight();
//   }
// }

// void cancelFlight() {
//   print("");
//   print("===Welcome To Cancel Flight Reservation Section===");
//   printBookedFlights();
//   print("Would You Like to Cancel Any of Your Booked Reservation? (yes/no)");
//   String? choice = stdin.readLineSync()?.toLowerCase();
//   if (choice == 'yes') {
//     print(
//         "Which Flight Reservation Do You Want to Cancel Please Enter Flight Number");
//     String? flightNumToCancel = stdin.readLineSync()?.toUpperCase();
//     for (var flightNo in bookedFlights) {
//       if (bookedFlights.contains('flightNumber')) {
//         bookedFlights.removeWhere((element) => element['flightNumber']);
//       } else {
//         print("No Booked Flight Found..! Please Enter Valid Flight Number");
//       }
//     }
//   } else {
//     print("Thanku for Using Cancel Flight Reservation Section");
//   }
// }

import 'dart:io';

// Assuming 'searchFlight.dart' is used in other parts of the code.

void flightCancellation() {
  if (bookedFlights.isEmpty) {
    print(
        "Dear Passenger! You Have Not Made Any Reservation Yet. Please Reserve Your Seat by Pressing 3");
  } else {
    cancelFlight();
  }
}

void cancelFlight() {
  print("");
  print("===Welcome To Cancel Flight Reservation Section===");
  printBookedFlights();
  print("Would You Like to Cancel Any of Your Booked Reservation? (yes/no)");
  String? choice = stdin.readLineSync()?.toLowerCase();
  if (choice == 'yes') {
    print(
        "Which Flight Reservation Do You Want to Cancel? Please Enter Flight Number");
    String? flightNumToCancel = stdin.readLineSync()?.toUpperCase();
    bool found = false;
    for (var flight in bookedFlights) {
      if (flight['flightNumber'] == flightNumToCancel) {
        bookedFlights.remove(flight);
        found = true;
        break;
      }
    }
    if (!found) {
      print("No Booked Flight Found..! Please Enter a Valid Flight Number");
    }
  } else {
    print("Thank you for Using the Cancel Flight Reservation Section");
  }
}
