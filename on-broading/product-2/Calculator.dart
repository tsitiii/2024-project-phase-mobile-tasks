import 'dart:io';

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double division(double a, double b) {
    if (b == 0) {
      throw Exception("Division by Zero error!");
    }
    return a / b;
  }
}

void main() {
  double? a, b;
  print("Enter num1: ");
  String? readA = stdin.readLineSync();
  print('Enter num2: ');
  String? readB = stdin.readLineSync();
  if (readA != null) {
    a = double.tryParse(readA);
    if (a == null) {
      print("invalid input for a!");
    }
  }

  if (readB != null) {
    b = double.tryParse(readB);
    if (b == null) {
      print("invalid input for a!");
    }
  }

  Calculator cal = Calculator();
  String? choice;
  do {
    print("\nSelect an operation:");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print('5. Exit');

    print("Enter your choice: ");
    choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        try {
          print('Result : ${cal.add(a!, b!)}');
        } catch (e) {
          print(e);
        }
        break;

      case '2':
        try {
          print('Result : ${cal.subtract(a!, b!)}');
        } catch (e) {
          print(e);
        }
        break;

      case '3':
        try {
          print('Result : ${cal.multiply(a!, b!)}');
        } catch (e) {
          print(e);
        }
        break;

      case '4':
        try {
          print("Result: ${cal.division(a!, b!)}");
        } catch (e) {
          print(e);
        }
        break;

      case '5':
        print("Exiting..");

      default:
        print('Invalid choice!');
    }
  } while (choice != '5');
}
