import 'dart:io';

void main() {
  print('Simple Calculator in Dart');
  print('Enter an operation (e.g., 2+3) or type "exit" to quit:');

  while (true) {
    String? input = stdin.readLineSync();

    // Ef user skrifar 'exit' þá hættir forritið
    if (input == null || input.toLowerCase() == 'exit') {
      print('Exiting Calculator...');
      break;
    }

    // Ef input inniheldur '+' þá nota + functionality
    if (input.contains('+')) {
      var numbers = input.split('+');
      double num1 = double.parse(numbers[0]);
      double num2 = double.parse(numbers[1]);
      print('Result: ${num1 + num2}');
    }
    // Ef input inniheldur '-' þá nota - functionality
    else if (input.contains('-')) {
      var numbers = input.split('-');
      double num1 = double.parse(numbers[0]);
      double num2 = double.parse(numbers[1]);
      print('Result: ${num1 - num2}');
    }
    // // Ef input inniheldur '*' þá nota * functionality
    else if (input.contains('*')) {
      var numbers = input.split('*');
      double num1 = double.parse(numbers[0]);
      double num2 = double.parse(numbers[1]);
      print('Result: ${num1 * num2}');
    }
    else if (input.contains('/')) {
      var numbers = input.split('/');
      double num1 = double.parse(numbers[0]);
      double num2 = double.parse(numbers[1]);
      if (num2 == 0) {
        print('Error: Cannot divide by zero');
      } else {
        print('Result: ${num1 / num2}');
      }
    }
    else {
      print('Invalid input. Please enter a valid operation (e.g., 2+3).');
    }

    print('Enter another operation or type "exit" to quit:');
  }
}
