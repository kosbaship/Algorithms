import 'dart:io';
import 'dart:math';

void calculateStandardDeviation() {
  var numbers = <int>[];
  var numbersLength = 0;
  var average = 0.0;
  var sum = 0.0;
  var divisionResult = 0.0;
  var standardDeviation = 0.0;

  stdout.write("Please Enter your array number length: ");
  var input = stdin.readLineSync();
  numbersLength = int.parse(input!);

  for (var index = 0; index < numbersLength; index++) {
    stdout.write("Please Enter an array element number:");
    var input = stdin.readLineSync();
    var numberElement = int.parse(input!);
    numbers.add(numberElement);

    average += numbers[index];
  }

  average = average / numbersLength;

  for (var index = 0; index < numbersLength; index++) {
    sum += pow(numbers[index] - average, 2);
  }

  divisionResult = sum / numbersLength;
  standardDeviation = sqrt(divisionResult);

  stdout.write("\n");
  stdout.write("σ = $standardDeviation");
  stdout.write("\n");
}
