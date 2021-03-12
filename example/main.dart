import 'package:prompter_rc/prompter_rc.dart';

void main() {
  // Create a Prompter Instance
  final Prompter prompter = new Prompter();
  // Create a list of option
  final options = [
    new Option('red', '#f00'),
    new Option('blue', '#00f'),
  ];
  // askMultiple
  String colorCode = prompter.askMultiple('Select a color', options);

  // askBinary
  bool userChoice = prompter.askBinary('Are you a dog person?');

  print(colorCode);
  print(userChoice);
}
