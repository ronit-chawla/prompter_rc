import 'dart:io' show Platform, stdout, stdin;

import 'option.dart';

class Terminal {
  const Terminal(); 
  
  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  String collectInput() {
    return stdin.readLineSync();
  }

  void printOptions(List<Option> options) {
    options.asMap().forEach((i, option) {
      stdout.writeln('[$i] - ${option.label}');
    });
    // stdout.writeln('Enter the Index');
    stdout.writeln('Enter a Choice\n');
    stdout.write('>');
  }

  void clearScreen() {
    if (Platform.isWindows) {
      stdout.write('\x1B[2J\x1B[0f');
    } else {
      stdout.write('\x1B[2J\x1B[3J\x1B[H');
    }
  }
}
