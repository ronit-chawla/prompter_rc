import 'dart:io';

import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  bool askBinary(String prompt) {
    return _ask('$prompt (y/n)', []).contains('y');
  }

  String askMultiple(String prompt, List<Option> options) {
    final input = _ask(prompt,options);

    try {
      return options[int.parse(input)].value;
    } catch (err) {
      stdout.writeln('Enter a Valid Index');
      return askMultiple(prompt, options);
    }
  }

  String _ask(String prompt, List<Option> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    return _terminal.collectInput();
  }
}
