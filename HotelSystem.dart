import 'dart:io';

class HotelAccount {
  String _name;
  String _email;
  String _password;

  String get name => _name;
  String get email => _email;
  String get password => _password;

  HotelAccount({
    required String name,
    required String email,
    required String password,
  }) : _name = name,
       _email = email,
       _password = password;
}

class ChooseHotel {
  void chooseHotel() {
    print("small note: please enter the number of the item you want ");
    print("Choose a country : ");
    print("1. Thailand ");
    print("2. Italy ");
    print("3. France");
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      print("Choose a Hotel in Thailand : ");
      print("1. Hotel 1");
      print("2. Hotel 2");
      print("3. Hotel 3");
      if (choice == 1) {
        print("You have chosen Hotel 1.");
      } else if (choice == 2) {
        print("You have chosen Hotel 2.");
      } else if (choice == 3) {
        print("You have chosen Hotel 3.");
      } else {
        print("Invalid choice.");
      }
    } else if (choice == 2) {
      print("Choose a Hotel in Italy: ");
      print("1. Hotel 1 ");
      print("2. Hotel 2");
      print("3. Hotel 3");
      if (choice == 1) {
        print("You have chosen Hotel 1.");
      } else if (choice == 2) {
        print("You have chosen Hotel 2.");
      } else if (choice == 3) {
        print("You have chosen Hotel 3.");
      } else {
        print("Invalid choice.");
      }
    } else if (choice == 3) {
      print("Choose a Hotel in France : ");
      print("1. Hotel 1");
      print("2. Hotel 2");
      print("3. Hotel 3");
      if (choice == 1) {
        print("You have chosen Hotel 1.");
      } else if (choice == 2) {
        print("You have chosen Hotel 2.");
      } else if (choice == 3) {
        print("You have chosen Hotel 3.");
      } else {
        print("Invalid choice.");
      }
    } else {
      print("Invalid choice.");
    }
  }
}

class Operations {
  String? _checkInTime;
  String? _checkOutTime;

  String? get checkInTime => _checkInTime;
  String? get checkOutTime => _checkOutTime;

  void hotelOperations() {
    print("Please enter what is the time you want to check in: ");
    _checkInTime = stdin.readLineSync();
    print("Please enter what is the time you want to check out: ");
    _checkOutTime = stdin.readLineSync();
    print("Please enter how many people you want to book for: ");
    String? numberOfPeople = stdin.readLineSync();
  }
}

class Support {
  Operations TimeOperations;
  HotelAccount Details;

  Support(this.TimeOperations, this.Details);

  void contactSupport() {
    print("Do you want to ask something? (Y/N)");
    String? choice = stdin.readLineSync();
    if (choice == 'Y' || choice == 'y') {
      print("Choose the service you want");
      print("1. Inquire about the appointment you have booked");
      print("2. Inquire about your account details");
      print("3. Something else");
      int serviceChoice = int.parse(stdin.readLineSync()!);
      if (serviceChoice == 1) {
        print("Your Check-in time is: ${TimeOperations.checkInTime}");
        print("Your Check-out time is: ${TimeOperations.checkOutTime}");
      } else if (serviceChoice == 2) {
        print("You have chosen to inquire about your account details.");
        print("Name: ${Details.name}");
        print("Email: ${Details.email}");
      } else if (serviceChoice == 3) {
        print(
          "You can contact us on our number 2020123456 or email us at HotelTest@gmail.com",
        );
      } else {
        print("Invalid choice.");
      }
    }
  }
}

void main() {
  print("Welcome to the Hotel Booking System!");
  print("Enter your name: ");
  String name = stdin.readLineSync() ?? "";
  print("Enter your email: ");
  String email = stdin.readLineSync() ?? "";
  print("Enter your password: ");
  String password = stdin.readLineSync() ?? "";
  print("Your account has been created successfully.");

  HotelAccount account = HotelAccount(
    name: name,
    email: email,
    password: password,
  );

  ChooseHotel hotel1 = ChooseHotel();
  Operations operation = Operations();
  operation.hotelOperations();
  Support support1 = Support(operation, account);
  support1.contactSupport();
}
