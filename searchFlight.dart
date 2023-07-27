import 'dart:io';
import 'flightData.dart';
import 'main.dart';

List<Map<String, dynamic>> matchedFlights = [];
List<Map<String, dynamic>> bookedFlights = [];

void flightSearch() {
  print("");
  print("=== Welcome To Flight Search Section ===");
  print("");
  if (registeredPassengers.contains(email) &&
      registeredPassengers.contains(password)) {
    searchFlights();
  } else {
    print(
        "For Search For Flights. Please First Sign In to Your Account or Sign Up");
  }
}

void searchFlights() {
  print("");
  print("");
  print("Please Enter Origin");
  var originInput = stdin.readLineSync()?.toLowerCase();
  print("");
  print("Please Enter Destination");
  var destinationInput = stdin.readLineSync()?.toLowerCase();
  for (var flight in flightData['flights']) {
    String origin = flight['origin'].toLowerCase();
    String destination = flight['destination'].toLowerCase();

    if (originInput == origin && destinationInput == destination) {
      matchedFlights.add(flight);
    }
  }

  if (matchedFlights.isNotEmpty) {
    print("");
    print(
        "Following Flight(s) are available from $originInput to $destinationInput!");
    for (var flight in matchedFlights) {
      print("");
      print("Flight Number: ${flight['flightNumber']}");
      print("Origin: ${flight['origin']}");
      print("Destination: ${flight['destination']}");
      print("Departure Time: ${flight['departureTime']}");
      print("Arrival Time: ${flight['arrivalTime']}");
      print("Duration: ${flight['duration']}");
      print("Aircraft: ${flight['aircraft']}");
      print("Flight Class: ${flight['flightClass']}");
      print("Rent: ${flight['rent']}");
      print("");
    }

    print("Would You Like to Book Any of the Available Flights? (yes/no)");
    String userInput = stdin.readLineSync()!.toLowerCase();
    if (userInput == 'yes') {
      while (true) {
        bookFlight();
        print("Would You Like to Book Another Flight? (yes/no)");
        String anotherBooking = stdin.readLineSync()!.toLowerCase();
        if (anotherBooking != 'yes') {
          break;
        }
      }
      printBookedFlights();
    } else {
      print("Thank You For Using Flight Search Section");
    }
  } else {
    print("No matching flight found for the specified origin and destination.");
  }
}

void bookFlight() {
  print("");
  print("Which Flight would you like to book? Please Enter Flight Number");
  var flightNumberInput = stdin.readLineSync()?.toUpperCase();
  Map<String, dynamic>? matchedFlight = null;

  for (var flight in matchedFlights) {
    if (flight['flightNumber'] == flightNumberInput) {
      matchedFlight = flight;
      break;
    }
  }

  if (matchedFlight != null) {
    print("Entered Flight Number is: $flightNumberInput");
    print("");
    print(
        "Congratulations..! The following flight(s) has been booked successfully:");
    print("\nFlight Number: ${matchedFlight['flightNumber']}");
    print("Origin: ${matchedFlight['origin']}");
    print("Destination: ${matchedFlight['destination']}");
    print("Departure Time: ${matchedFlight['departureTime']}");
    print("Arrival Time: ${matchedFlight['arrivalTime']}");
    print("Duration: ${matchedFlight['duration']}");
    print("Aircraft: ${matchedFlight['aircraft']}");
    print("Flight Class: ${matchedFlight['flightClass']}");
    print("Rent: ${matchedFlight['rent']}");
    bookedFlights.add(matchedFlight);
  } else {
    print("\nNo matching flight found for the specified Flight Number.");
  }
}

void printBookedFlights() {
  if (bookedFlights.isNotEmpty) {
    print("");
    print("Following Flight(s) have been booked successfully");
    for (var flight in bookedFlights) {
      print("");
      print("Flight Number: ${flight['flightNumber']}");
      print("Origin: ${flight['origin']}");
      print("Destination: ${flight['destination']}");
      print("Departure Time: ${flight['departureTime']}");
      print("Arrival Time: ${flight['arrivalTime']}");
      print("Duration: ${flight['duration']}");
      print("Aircraft: ${flight['aircraft']}");
      print("Flight Class: ${flight['flightClass']}");
      print("Rent: ${flight['rent']}");
      print("");
    }
    print("=======================");
    print("");
  } else {
    print("No flights have been booked yet.");
  }
}
