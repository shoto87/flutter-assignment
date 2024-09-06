import 'dart:io';

bool isPalindrome(int number) {
  int originalNumber = number;
  int reversedNumber = 0;

  while (number > 0) {
    int lastDigit = number % 10;
    reversedNumber = reversedNumber * 10 + lastDigit;
    number = number ~/ 10;
  }

  return originalNumber == reversedNumber;
}

void main() {
  print('Enter a number: ');

  String? input = stdin.readLineSync();

  if (input != null && int.tryParse(input) != null) {
    int number = int.parse(input);
    if (isPalindrome(number)) {
      print('$number is a palindrome.');
    } else {
      print('$number is not a palindrome.');
    }
  } else {
    print('Invalid input! Please enter a valid integer.');
  }
}
