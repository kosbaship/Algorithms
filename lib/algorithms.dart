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

void calculateStandardDeviationUsingFunctionalPrograming() {
  stdout.write("Please Enter your full array i.e 1, 2, 3: ");
  stdout.write("\n");

  final input = stdin.readLineSync();
  final allElements = input!.split(",");
  final cleanElements = allElements.map((e) => e.trim());
  final numbers = cleanElements.map((e) => int.parse(e));
  final numbersSum = numbers.reduce((value, element) => value + element);
  final average = numbersSum / numbers.length;
  final averageSubtracted = numbers.map((e) => e - average);
  final squared = averageSubtracted.map((e) => e * e);
  final squaredSum = squared.reduce((value, element) => value + element);
  final divisionResult = squaredSum / numbers.length;
  final standardDeviation = sqrt(divisionResult);

  stdout.write("\n");
  stdout.write("σ = $standardDeviation");
  stdout.write("\n");
}
