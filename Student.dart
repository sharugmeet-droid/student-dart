import 'dart:io';

void main() {
  print("🎉 Welcome to Sumplier Madness! 🎉");

  while (true) {
    stdout.write("Enter a number to practice multiplication (0 to exit): ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("⚠️ Please enter a number.");
      continue;
    }

    int? number = int.tryParse(input);
    if (number == null) {
      print("⚠️ Invalid input! Enter numeric values only.");
      continue;
    }

    if (number == 0) {
      print("Thanks for playing Sumplier Madness! Goodbye!");
      break;
    }

    stdout.write("Up to which multiple? (e.g., 10): ");
    String? uptoInput = stdin.readLineSync();
    int upto = int.tryParse(uptoInput ?? '') ?? 10;

    int sum = 0;
    print("\nMultiplication Table for $number:");
    for (int i = 1; i <= upto; i++) {
      int result = number * i;
      print("$number x $i = $result");
      sum += result;
    }

    print("\n✅ Sum of $number's multiplication table up to $upto is: $sum\n");

    stdout.write("Do you want to try another number? (y/n): ");
    String? again = stdin.readLineSync();
    if (again == null || again.toLowerCase() != 'y') {
      print("Thanks for playing Sumplier Madness! Goodbye!");
      break;
    }
  }
}
