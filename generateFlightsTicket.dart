import 'dart:io';

import 'main.dart';
import 'searchFlight.dart';

void generateReservationTicket() {
  print("");
  print("=== Welcome To Generate Flight(s) Reservation Ticket Section ===");
  print("");
  printBookedFlights();
  print(
      "Would You Like to Print Ticket of Any of Your Booked Reservation? (yes/no)");
  String? choice = stdin.readLineSync()?.toLowerCase();
  if (choice == 'yes') {
    print(
        "Which Flight Reservation Ticket Do You Want to Print? Please Enter Flight Number");
    String? flightNumToPrint = stdin.readLineSync()?.toUpperCase();
    bool found = false;
    for (var i = 0; i < bookedFlights.length; i++) {
      var flight = bookedFlights[i];
      if (flight['flightNumber'] == flightNumToPrint) {
        print("Ticket Details:");
        print("Flight Number: ${flight['flightNumber']}");
        print("Departure: ${flight['departure']}");
        print("Destination: ${flight['destination']}");
        print("Departure Time: ${flight['departureTime']}");
        print("User Information:");
        print("Name: ${registeredPassengers[0]}"); // Name
        print("CNIC: ${registeredPassengers[1]}"); // CNIC
        print("Email: ${registeredPassengers[2]}"); // Email
        // Password should not be displayed on the ticket for security reasons.
        found = true;
        break;
      }
    }
    if (!found) {
      print("No Booked Flight Found..! Please Enter a Valid Flight Number");
    }
  } else {
    print(
        "Thank you for Using the Generate Flight(s) Reservation Ticket Section");
  }
}
