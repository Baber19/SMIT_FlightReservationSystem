// ignore_for_file: unused_local_variable, unused_import

import 'dart:io';
import 'bookedFlight.dart';
import 'cancelFlights.dart';
import 'flightData.dart';
import 'generateFlightsTicket.dart';
import 'passengerProfile.dart';
import 'searchFlight.dart';
import 'signIn.dart';
import 'signUp.dart';
import 'searchFlight.dart' as search;

var email, name, password, cnic;
bool? isEmailTrue, isPasswordTrue;
var registeredPassengers = [];
var signedinPassengers = [];
List<Map<String, dynamic>> matchedFlights = [];
// List<Map<String, dynamic>> bookedFlights = [];

void main(List<String> args) {
  int choice = 0;

  do {
    print("");
    print("===Welcome to PIA online Flight Reservation System===");
    print("");
    print("          Press 1 For SignIn");
    print("          Press 2 For SignUp");
    print("          Press 3 For View Passenger Profile or Update Profile");
    print("          Press 4 For Search Flights and Make Reservation");
    print("          Press 5 For View Booked Flight(s) Reservation");
    print("          Press 6 For Cancel Flight(s) Reservation");
    print("          Press 7 For Generate Flight(s) Ticket");
    print("");
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      passengerSignIn();
    } else if (choice == 2) {
      passengerSignUp();
    } else if (choice == 3) {
      passengerDetails();
    } else if (choice == 4) {
      flightSearch();
    } else if (choice == 5) {
      viewBookedFlights();
    } else if (choice == 6) {
      flightCancellation();
    } else if (choice == 7) {
      generateReservationTicket();
    } else {
      print("Exiting");
    }
  } while (choice != 7);
}
