import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(211, 216, 116, 216),
      primary: const Color.fromARGB(255, 228, 124, 228),
    ),
  );

  ThemeData get theme => _theme;

  void toggleTheme() {
    final isCyan = _theme ==
        ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(210, 116, 198, 216),
            primary: Color.fromARGB(255, 124, 228, 221),
          ),
        );

    if (isCyan) {
      _theme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(211, 216, 116, 216),
          primary: const Color.fromARGB(255, 228, 124, 228),
        ),
      );
    } else {
      _theme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(210, 116, 198, 216),
          primary: Color.fromARGB(255, 124, 228, 221),
        ),
      );
    }
    notifyListeners();
  }
}
